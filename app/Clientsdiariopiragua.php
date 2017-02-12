<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clientsdiariopiragua extends Model
{
    //
    protected $table = "clients_diariopiragua";


    protected $fillable = [
        'nombre_empresa', 'nombre_encargado','direccion','telefono','correo',
    ];
}
