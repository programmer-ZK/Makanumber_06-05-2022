@extends('layouts.master')
<style>
  .signin {
    background-color: #00B4A2 !important;
    width: 180px !important;
    color: white !important;

  }

  @media screen and (max-width: 480px) {
    .navbar-brand {
      margin-left: 0px !important;
    }

    .display {
      display: none;
    }

    #grid {
      display: none;
    }

    #list {
      display: none;
    }

    .item {
      margin-bottom: 25px;
    }

    .foot-descip {
      padding-right: 40px !important;
    }

    .social-icons {
      text-align: center !important;
      margin-bottom: 30px !important;
    }

    .green1 {
      border: 1px solid #00B4A2;
      margin-right: 80%;
    }

    .padding {
      padding-left: 50px;
    }

    .mob-padding {
      padding-top: 30px !important;
      margin-top: 20px !important;
    }

    .input {
      width: 100% !important;
      margin-bottom: 5px;
      margin-left: 0px !important;
    }

    .input1 {
      /*margin-right:8px !important;*/
      width: 100% !important;
      margin-bottom: 5px;
    }

    .button {
      margin-top: 10px;
      width: 100% !important;
      margin-left: -25px !important;
    }

    .signin {
      width: 100% !important;
    }

  }
</style>
@section('title', 'Forgot Password | Makanumber')

@section('content')
  @if(Session::has('success'))
  <div class="alert alert-success">
    {{ Session::get('success') }}
  </div>
  @endif
  @if ($errors->any())
  <div class="alert alert-danger">
    <ul>
      @foreach ($errors->all() as $error)
      <li>{{ $error }}</li>
      @endforeach
    </ul>
  </div>
  @endif
  
  <!-- Sign In -->
  <section class="container-fluid">
    <section class="row justify-content-center mb-5" style="margin-top: 5%;">
      <section class="col-sm-4 ">
        <h2>FORGOT PASSWORD</h2>
        {!! Form::open(['route' => 'access.password.email', 'class' => 'forget-form']) !!}
        <p>Enter the email address associated with your account and we will email you a link to reset password</p>
        <br>
        <div class="form-group mb-3" id="emailGroup">
          <label>{{ trans('core/acl::auth.login.email') }}</label>
          {!! Form::text('email', old('email'), ['class' => 'form-control', 'placeholder' => trans('core/acl::auth.login.email')]) !!}
        </div>
        <button type="submit" class="btn btn-block login-button" style="float:left;">
          <span class="signin btn">Send Reset Link</span>
        </button>
        <div class="clearfix"></div>

        <br>

        {!! Form::close() !!}

        <br>
        <!--<p><a class="lost-pass-link" href="{{ route('access.password.request') }}" title="{{ trans('core/acl::auth.forgot_password.title') }}">{{ trans('core/acl::auth.lost_your_password') }}</a></p>-->

      </section>

    </section>

  </section>

  <!-- Sin in end -->
@endsection