@extends('layouts.app')
@section('title', 'Ingresos')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"><h3>Lista de Usuarios</h3></div>

                <div class="panel-body">
                    You are logged in!
                    <div class="col-md-4 col-md-offset-9">
                      <button type="button" class="btn btn-success">Buscar</button>
                      <button type="button" class="btn btn-primary"  class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</button>
                    </div>
                </div>
                <div class="col-md-12">
                  <table class="table table-striped table-hover ">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Correo</th>
                        <th>Opciones</th>
                      </tr>
                    </thead>
                    <tbody>

                        @foreach ($lista as $key )
                          <tr><td>{{$cont++}}</td>
                          <td>{{$key['name']}}</td>
                          <td>{{$key['apellidos']}}</td>
                          <td>{{$key['email']}}</td>
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
                <label for="nombre" class="col-lg-2 control-label">Nombre</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" id="inputnombre" name="nombre" placeholder="Nombre" required="" autofocus="">
                </div>
              </div>
              <div class="form-group">
                <label for="inputapellidos" class="col-lg-2 control-label">Apellidos</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" name="apellidos" id="inputapellidos" placeholder="Apellidos" required="">
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail" class="col-lg-2 control-label">Correo</label>
                <div class="col-lg-10">
                  <input type="text" class="form-control" name="email" id="inputEmail" placeholder="Email" required="">
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
