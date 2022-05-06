@extends('layouts.master')

@section('title', 'Activate Account | Makanumber')

@section('content')

<section style="padding-top: 5em">
    <div class="container">
        <div class="text-center">
            @if(isset($name))
            <h3 style="font-weight: 700">Dear {{$name}}, Your account is successfully activated, Please Log in to continue</h3>
            @else
            <h3 style="font-weight: 700">Your account has already been activated, Please Log in to continue</h3>
            @endif
            <a href='/admin/login' type="button" class="btn text-white" style="background-color: #00b4a2">Login</a>
        </div>
    </div>
</section>


@endsection