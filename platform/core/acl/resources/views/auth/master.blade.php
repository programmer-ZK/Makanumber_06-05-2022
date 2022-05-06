@extends('core/base::layouts.base')

<!--@section('body-class') login @stop-->

@section ('page')
    <div class="container-fluid">
        <div class="row">
    
            <div class="col-xs-12 col-sm-5 col-md-4 ">

               

                    @yield('content')

                    <div class="clearfix"></div>

                <!-- .login-container -->

            </div> <!-- .login-sidebar -->
        </div> <!-- .row -->
    </div>
@stop
