<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Translacosta - @yield('title')</title>

    <!-- Styles -->
    <link href="{{url('css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{url('css/style.css')}}" rel="stylesheet">
    <link href="{{url('style.css')}}" rel="stylesheet">

    <!-- Scripts -->
    <script>
        window.Laravel = {!! json_encode([
            'csrfToken' => csrf_token(),
        ]) !!};
    </script>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-fixed-top" style="z-index:10000;">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" id="titu" href="{{ url('/home') }}">
                        Sistema de Gestión Contable -
                        @foreach ($tipouser as $tipo)
                          {{$tipo['tipo']}}
                        @endforeach
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                        &nbsp;
                    </ul>
                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                      <li><a href="#"><span  class="glyphicon glyphicon-envelope icmsj" aria-hidden="true"></span>&nbsp;&nbsp;<span class="badge bdg">42</span></a></li>
                      <li><a href="#"><span  class="glyphicon glyphicon-bell icmsj" aria-hidden="true"></span>&nbsp;&nbsp;<span class="badge bdg">3</span></a></li>
                        <!-- Authentication Links -->
                        @if (Auth::guest())
                            <li><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    <li>
                                      <a href="#"><span class="icon-wrench"></span> Gestión de Cuenta</a>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            <span class="icon-exit"></span> Salir
                                        </a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>
        <aside id="menulat" class="navbar-fixed-top">
          <div class="col-md-12"><br>
            <img src="{{url('img/logoTC2.png')}}" alt="" width="100%" id="logo">
            <ul class="nav nav-pills nav-stacked" style="margin-top: 60%;">
              <li class="active"><a>Menu</a></li><br>
              <li><a href="{{url('/ingreso')}}" class="opmenu"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> - Ingresos</a></li>
              <li><a href="{{url('/gastos')}}" class="opmenu"><span class="glyphicon glyphicon-export" aria-hidden="true"></span> - Gastos</a></li>
              <li><a href="{{url('/consignaciones')}}" class="opmenu"><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> - Consignaciones</a></li>
              <li><a href="{{url('/listausuarios')}}" class="opmenu"><span class="icon-users"></span> - Usuarios</a></li>
            </ul>
          </div>
        </aside>
        <div class="col-md-12" style="margin-top:5%;">
            @yield('content')
        </div>

    </div>

    <!-- Scripts -->
    <script src="js/app.js"></script>
</body>
</html>
