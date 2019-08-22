<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class user_role extends Model
{
    protected $table="user_role";
    protected $fillable= [
        'id',
        'user_id',
        'role_id'
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime'
    ];
}
