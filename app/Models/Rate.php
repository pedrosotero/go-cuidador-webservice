<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rate extends Model
{
    public $timestamps = false;

    protected $fillable = [
        'client_id',
        'caregiver_id',
        'rate',
        'description'
    ];
}
