@extends('layouts.app')
@section('title', 'Ingresos')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>Ingresos</h3></div>

                <div class="panel-body">
                    <div class="col-md-4 col-md-offset-9">
                      <button type="button" class="btn btn-success">Buscar</button>
                      <button type="button" class="btn btn-primary"  class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</button>
                    </div>
                </div>
                <div class="col-md-12">
                  <table class="table table-striped table-hover ">
                    <thead>
                      <legend>Lista de Clientes</legend>
                      <tr>
                        <th>#</th>
                        <th>Nombre de la Empresa</th>
                        <th>Nombre Encargado</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Correo</th>
                        <th>Opciones</th>
                      </tr>
                    </thead>
                    <tbody>

                        @foreach ($lista as $key )
                          <tr><td>{{$cont++}}</td>
                          <td>{{$key['nombre_empresa']}}</td>
                          <td>{{$key['nombre_encargado']}}</td>
                          <td>{{$key['direccion']}}</td>
                          <td>{{$key['telefono']}}</td>
                          <td>{{$key['correo']}}</td>
                          <td>Opciones</td>
                          </tr>
                        @endforeach


                    </tbody>
                  </table>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
      <div class="modal-dialog" style="margin-top: 7%;">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Agregar Usuario</h4>
          </div>
          <div class="modal-body">

            <form class="form-horizontal"  role="form" method="POST" action="{{url('/newuser')}}">
              {{ csrf_field() }}
              <div class="form-group">
                <label for="nombre" class="col-lg-2 control-label">Nombre Empresa</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="inputnombre" name="nombreempresa" placeholder="Nombre de la Empresa" required="" autofocus="">
                </div>
              </div>
              <div class="form-group">
                <label for="inputapellidos" class="col-lg-2 control-label">Persona Encargada</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" name="nombreencargado" id="inputencargado" placeholder="Nombre del Encargado" required="">
                </div>
              </div>
              <div class="form-group">
                <label for="inputapellidos" class="col-lg-2 control-label">Dirección</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" name="direccion" id="inputdireccion" placeholder="Dirección de la Empresa" required="">
                </div>
              </div>
              <div class="form-group">
                <label for="inputapellidos" class="col-lg-2 control-label">Telefono</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" name="telefono" maxlength="10" id="inputtelefono" placeholder="Dirección de la Empresa" required="">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail" class="col-lg-2 control-label">Correo</label>
                <div class="col-lg-10">
                  <input type="email" class="form-control" name="correo" id="inputEmail" placeholder="Correo">
                </div>
                <br>
                <div class="col-md-2 col-md-offset-8" style="margin-top:5%;">
                  <button type="submit" class="btn btn-primary">
                      Registrar
                  </button>
                </div>
                <div class="col-md-2"  style="margin-top:5%;">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
          </div>

          </form>

        </div>

      </div>
    </div>
</div>
@endsection
