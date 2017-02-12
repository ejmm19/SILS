<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clientspiraguast extends Model
{
    //
    protected $table = "clients_piraguast";


    protected $fillable = [
        'nombre_empresa', 'nombre_encargado','direccion','telefono','correo',
    ];
}
