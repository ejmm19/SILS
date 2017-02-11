<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Userslibertadst extends Model
{
    //
    protected $table = "tipouser";


    protected $fillable = [
        'name', 'apellidos','email',
    ];
}
