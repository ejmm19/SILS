<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Userslibertadst extends Model
{
    //
    protected $table = "userslibertad";


    protected $fillable = [
        'name', 'apellidos','email',
    ];
}
