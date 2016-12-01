<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreCaregiver extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'avatar' => 'mimes:jpeg,png',
            'first_name' => 'required',
            'last_name' => 'required',
            'cpf' => 'required|cpf',
            'email' => 'required|unique:users|email',
            'uf' => 'required|max:2',
            'city' => 'required',
            'neighborhood' => 'required',
            'address' => 'required',
            'zipcode' => 'required',
            'phone' => 'required',
            'description' => 'required|min:200',
            'types' => 'required',
            'doc' => 'required'
        ];
    }
}
