<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableClientsDiariopiragua extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('clients_diariopiragua', function (Blueprint $table) {
          $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('nombre_empresa');
            $table->string('nombre_encargado');
            $table->string('direccion');
            $table->integer('telefono');
            $table->string('correo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        Schema::dropIfExists('clients_diariopiragua');
    }
}
