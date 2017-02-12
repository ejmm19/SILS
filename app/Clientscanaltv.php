<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clientscanaltv extends Model
{
    //
    protected $table = "clients_canaltv";


    protected $fillable = [
        'nombre_empresa', 'nombre_encargado','direccion','telefono','correo',
    ];
}
