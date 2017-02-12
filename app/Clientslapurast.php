<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clientslapurast extends Model
{
    //
    protected $table = "clients_lapurast";


    protected $fillable = [
        'nombre_empresa', 'nombre_encargado','direccion','telefono','correo',
    ];
}
