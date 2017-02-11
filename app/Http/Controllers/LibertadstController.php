<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Userslibertadst;
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
        $lista = Userslibertadst::all();
        $tipouser = Tipo::where('id', Auth::user()->id)->get();
        return view('menu.listausuarios')->with(['tipouser' => $tipouser,'lista'=>$lista,'cont'=>1]);
    }
    public function newuser(Request $request){

        $userlibertadst = new Userslibertadst();
        $userlibertadst->name=$request->nombre;
        $userlibertadst->apellidos=$request->apellidos;
        $userlibertadst->email=$request->email;

        if ($userlibertadst->save()) {
          return back()->with('success', 'Usuario Registrado');
        }else {
          return back()->with('error', 'No se Pudo registrar');
        }
    }
}
