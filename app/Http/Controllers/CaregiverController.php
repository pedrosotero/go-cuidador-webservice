<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCaregiver;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class CaregiverController extends Controller
{
    public function store(StoreCaregiver $request)
    {
        $file_name = strtolower(str_replace(' ', '_', $request->first_name . ' ' . $request->last_name));

        $array = $request->all();

        $mediaUpload = '/media_upload/';
        $url = URL::to("/");

        $newUser = [
            'email' => $request->email,
            'numbers' => 1,
            'password' => Hash::make($request->password)
        ];

        $db_user = User::create($newUser);

        if ( ! is_null($request->file('doc'))) {
            $filePDF = $file_name . '_' . uniqid() . '.' . $request->file('doc')->getClientOriginalExtension();
            $request->file('doc')->move(public_path() . $mediaUpload, $filePDF);
            $array['doc'] = $url . $mediaUpload . $filePDF;
        }

        if ( ! is_null($request->file('avatar'))) {
            $fileName = $file_name . '_' . uniqid() . '.' . $request->file('avatar')->getClientOriginalExtension();
            $request->file('avatar')->move(public_path() . $mediaUpload, $fileName);
            $request->avatar = $fileName;
            $array['avatar'] = $url . $mediaUpload . $fileName;
        }

        $array['cpf'] = str_replace('.', '', $array['cpf']);
        $array['cpf'] = str_replace('-', '', $array['cpf']);


        $newCaregiver = [
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'cpf' => $array['cpf'],
            'uf' => $request->uf,
            'city' => $request->city,
            'neighborhood' => $request->neighborhood,
            'address' => $request->address,
            'zipcode' => $request->zipcode,
            'paid' => 1,
            'phone' => trim($request->phone),
            'avatar' => $array['avatar'],
            'description' => $request->description,
            'doc' => $array['doc']
        ];

        $db_caregiver = $db_user->caregiver()->create($newCaregiver);

        $caregiverId = $db_caregiver->id;

        for ($i = 0; $i < count($array['types']); $i++) {
            DB::insert('insert into caregiver_types (caregiver_id, type_id) values (?, ?)', [$caregiverId, $array['types'][$i]]);
        }

        return redirect()->route('caregiver.success');
    }
}
