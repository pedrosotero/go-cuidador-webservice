<?php

namespace App\Http\Controllers\API\Auth;

use Socialite;
use Hash;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Validator;
use JWTAuth;
use JWTFactory;
use App;
use Mail;
use Illuminate\Support\Facades\URL;
use Carbon\Carbon;

class UserController extends Controller
{
    public function index()
    {
        //
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|max:255',
            'last_name' => 'required|max:255',
            'email' => 'required|unique:users|email|max:255',
            'password' => 'required|max:20|min:4'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $customClaims = ['id' => env('JWT_CUSTOM_CLAIM'), 'username' => $request->email];
        $payload = JWTFactory::make($customClaims);

        $token = JWTAuth::encode($payload);

        $userForCreation = [
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'jwt_token' => (string) $token,
            'numbers' => 2
        ];

        $db_user = User::create($userForCreation);

        $db_user->client()->create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name
        ]);

        return response()->json([
            'id' => $db_user->id
        ], 201)->header('token', $db_user->jwt_token);
    }


    public function show(Request $request, $id)
    {
        $user = $request->get('loggedUser');

        return response()->json([
            'avatar' => $user->avatar,
            'first_name' => $user->first_name,
            'last_name' => $user->last_name,
            'email' => $user->email,
            'address' => $user->address,
            'company' => $user->company,
            'office' => $user->office
        ]);
    }

    public function edit(Request $request, $id)
    {
        $user = $request->get('loggedUser');

        return response()->json([
            'avatar' => $user->avatar,
            'first_name' => $user->first_name,
            'last_name' => $user->last_name,
            'email' => $user->email,
            'cep' => $user->zipcode,
            'company' => $user->company,
            'office' => $user->office
        ]);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|max:255',
            'last_name' => 'required|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $zipCodeInfo = ['logradouro' => null, 'uf' => null, 'bairro' => null, 'cep' => null];
        try {
            if (isset($request->zipcode)) {
                if ($zipcode = zipcode($request->zipcode)) {
                    $zipCodeInfo = array_merge($zipCodeInfo, $zipcode->getArray());
                } else {
                    return response()->json(['zipcode' => [trans('validation.cep')]], 400);
                }
            }
        } catch (\Exception $e) {
            return response()->json(['zipcode' => [trans('validation.cep')]], 400);
        }

        $user = $request->get('loggedUser');

        if ($user->id == $id) {
            $array = [
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'zipcode' => $zipCodeInfo['cep'],
                'address' => $zipCodeInfo['logradouro'],
                'uf' => $zipCodeInfo['uf'],
                'neiborhood' => $zipCodeInfo['bairro'],
                'company' => $request->company,
                'office' => $request->office
            ];

            $user->update($array);
            return response()->json(['user' => $array]);
        } else {
            return response()->json(['user' => [trans('auth.wrong_user')]], 403);
        }
    }

    //custom functions
    public function avatarUpload(Request $request, $id)
    {
        $path = null;

        if ( ! is_null($request->file('avatar')) && $request->file('avatar')->isValid()) {
            $destinationPath = '/uploads/avatar/'; // upload path
            $fileName = uniqid() . '_avatar.jpg'; // renameing image
            $request->file('avatar')->move(public_path() . $destinationPath, $fileName);

            $user = User::findEncryptable($id);
            $url = URL::to("/");
            $path = $url . $destinationPath . $fileName;
            $user->avatar = $path;
            $user->save();
        }

        return response()->json(['avatar' => $path]);
    }

    public function forgotPassword(Request $request)
    {
        $db_user = User::where('email', $request->email)->first();
        if ($db_user) {
            $randomPassword = str_random(8);
            $hashedRandomPassword = Hash::make($randomPassword);

            $newPassword = [
                'password' => $hashedRandomPassword,
            ];

            Mail::send('templates.emails.email_esqueci', ['email' => $db_user->email, 'password' => $randomPassword], function ($msg) use ($db_user) {
                $msg->to($db_user->email)->subject('[Guia Design] Password');
            });

            $db_user->update($newPassword);

            return response()->json(['ok' => true], 200);
        } else {
            return response()->json(['email' => trans('auth.email_not_found')], 400);
        }
    }

    public function changePassword(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required|max:20|min:4'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $user = $request->get('loggedUser');

        $newPassword = [
            'password' => Hash::make($request->password),
        ];

        $user->update($newPassword);

        return response()->json(['ok' => true], 201);
    }

    public function deleteAccount(Request $request)
    {
        $user = $request->get('loggedUser');

        $db_user = User::find($user->id);

        if ($db_user) {
            if (Hash::check($request->password, $db_user->password)) {
                $db_user->deleted_at = Carbon::now();
                $db_user->save();

                return response()->json([
                    'user_id' => $db_user->client_id
                ])->header('token', '');
            } else {
                return response()->json(['password' => [trans('auth.invalid_password')]], 400);
            }
        }
    }
}
