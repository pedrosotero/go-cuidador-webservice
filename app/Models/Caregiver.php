<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Caregiver extends Model
{
    use SoftDeletes;

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'user_id',
        'first_name',
        'last_name',
        'cpf',
        'uf',
        'city',
        'neiborhood',
        'address',
        'paid',
        'phone',
        'avatar',
        'description',
        'doc'
    ];

    public function user()
    {
        return $this->hasOne('App\Models\User');
    }
}
