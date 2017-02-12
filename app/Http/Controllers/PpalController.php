<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Clientslibst;
use App\Clientsdiariopiragua;
use App\Clientslapurast;
use App\Clientscanaltv;
use App\Clientspiraguast;
use App\Tipo;
use Auth;
class PpalController extends Controller
{
    //
    public function ingresos(){

      $tipouser = Tipo::where('id', Auth::user()->id)->get();
      switch (Auth::user()->tipo) {
        case 1:
            $lista = Clientsdiariopiragua::all();
            return view('menu.ingresos')->with(['tipouser' => $tipouser,'lista'=>$lista,'cont'=>1]);
          break;
        case 2:
            $lista = Clientslibst::all();
            return view('menu.ingresos')->with(['tipouser' => $tipouser,'lista'=>$lista,'cont'=>1]);
          break;
        case 3:
            $lista = Clientslapurast::all();
            return view('menu.ingresos')->with(['tipouser' => $tipouser,'lista'=>$lista,'cont'=>1]);
          break;
        case 4:
            $lista = Clientspiraguast::all();
            return view('menu.ingresos')->with(['tipouser' => $tipouser,'lista'=>$lista,'cont'=>1]);
          break;
        case 5:
            $lista = Clientscanaltv::all();
            return view('menu.ingresos')->with(['tipouser' => $tipouser,'lista'=>$lista,'cont'=>1]);
          break;
        default:
          # code...
          break;
      }

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

    }
    public function newuser(Request $request){
        if (Auth::user()->tipo==1) {
          $client = new Clientsdiariopiragua();
        }elseif (Auth::user()->tipo==2) {
          $client = new Clientslibst();
        }elseif (Auth::user()->tipo==3) {
          $client = new Clientslapurast();
        }elseif (Auth::user()->tipo==4) {
          $client = new Clientspiraguast();
        }elseif (Auth::user()->tipo==5) {
          $client = new Clientscanaltv();
        }
        
        $client->nombre_empresa=$request->nombreempresa;
        $client->nombre_encargado=$request->nombreencargado;
        $client->direccion=$request->direccion;
        $client->telefono=$request->telefono;
        $client->correo=$request->correo;

        if ($client->save()) {
          return back()->with(['success'=>'Usuario Registrado']);
        }else {
          return back()->with(['error'=>'No se Pudo registrar']);
        }
    }
}
