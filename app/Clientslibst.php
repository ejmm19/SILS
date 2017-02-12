<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clientslibst extends Model
{
    //
    protected $table = "clients_libertadst";


    protected $fillable = [
        'nombre_empresa', 'nombre_encargado','direccion','telefono','correo',
    ];
}
