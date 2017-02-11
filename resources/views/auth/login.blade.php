@extends('layouts.default')
@section('title', 'Iniciar Sesión')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3" style="margin-top: 10%;">
            <div class="panel panel-default">
                <div class="panel-heading"><center><h3>Cadena Radial Translacosta</h3><h4>Sistema Contable</h4></center></div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-3 control-label">Correo</label>

                            <div class="col-md-8">
                                <div class="input-group">
                                  <span class="input-group-addon" id="basic-addon1">@</span>
                                  <input id="email" type="email" class="form-control" aria-describedby="basic-addon1" name="email" value="{{ old('email') }}" required autofocus>
                                </div>
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-3 control-label">Contraseña</label>

                            <div class="col-md-8">
                              <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1"><span class="icon-lock"></span></span>
                                <input id="password" type="password" class="form-control" aria-describedby="basic-addon1" name="password" value="{{ old('email') }}" required autofocus>
                              </div>


                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Recuerdame
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-8 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Entrar
                                </button>

                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    Olvidé mi Contraseña
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
