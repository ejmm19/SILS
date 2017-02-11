<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tipo;
use Auth;
class LibertadstController extends Controller
{
    //
    public function ingresos(){

      $tipouser = Tipo::where('id', Auth::user()->id)->get();
        return view('menu.ingresos')->with('tipouser', $tipouser);
    }
    public function gastos(){

      $tipouser = Tipo::where('id', Auth::user()->id)->get();
        return view('menu.gastos')->with('tipouser', $tipouser);
    }
    public function consignaciones(){

      $tipouser = Tipo::where('id', Auth::user()->id)->get();
        return view('menu.consignaciones')->with('tipouser', $tipouser);
    }
    public function listausuarios(){

      $tipouser = Tipo::where('id', Auth::user()->id)->get();
        return view('menu.listausuarios')->with('tipouser', $tipouser);
    }
}
