<?php

namespace App\Http\Controllers\API\Auth;

use Hash;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Validator;
use JWTAuth;
use JWTFactory;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $db_user = User::select('users.*', 'clients.id as client_id')->where('email', $request->email)->join('clients', 'clients.user_id', '=', 'users.id')->where('users.deleted_at', null)->first();

        if ($db_user) {
            if (Hash::check($request->password, $db_user->password)) {
                $customClaims = ['id' => env('JWT_CUSTOM_CLAIM'), 'username' => $request->email];
                $payload = JWTFactory::make($customClaims);
                $token = JWTAuth::encode($payload);
                $token = (string) $token;
                $db_user->token = $token;
                $db_user->save();

                return response()->json([
                    'user_id' => $db_user->client_id
                ])->header('token', $db_user->token);
            } else {
                return response()->json(['password' => [trans('auth.invalid_password')]], 400);
            }
        } else {
            return response()->json(['email' => [trans('auth.login_failed')]], 400);
        }
    }

    public function facebook_login(Request $request)
    {
        $email = $request->email;
        $db_user = User::where('email', $email)->first();
        $customClaims = ['id' => env('JWT_CUSTOM_CLAIM'), 'username' => $email];
        $payload = JWTFactory::make($customClaims);
        $token = JWTAuth::encode($payload);
        $token = (string) $token;

        if ( ! $db_user) {

            $userForCreation = array(
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'email' => $email,
                'password' => Hash::make($email),
                'facebook_id' => $request->facebook_id,
                'token' => $token
            );

            $db_user = User::create($userForCreation);

            return response()->json([
                'user_id' => $db_user->id
            ])->header(
                'token', $db_user->token
            );

        } else {
            $db_user->token = $token;
            $db_user->facebook_id = $request->facebook_id;
            $db_user->save();

            return response()->json([
                'user_id' => $db_user->id,
                'avatar' => $db_user->avatar
            ])->header(
                'token', $db_user->token
            );
        }
    }
}
