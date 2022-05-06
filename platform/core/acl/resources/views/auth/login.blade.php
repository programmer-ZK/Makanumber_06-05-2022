
@extends('layouts.master')

<style>
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




@section('title', 'Login | Makanumber')

@section('content')



<!-- Sign In -->
<section class="container-fluid">
 
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
  <section class="row justify-content-center mb-5" style="margin-top: 5%;">
    <section class="col-sm-4 ">
      <H3 style=" font-size: 24px; text-align:center;">Log in</H3>
      <form class="form-container" action="{{route('access.login')}}" method="post">
        @csrf
        <div class="form-group">
          <label for="exampleInputEmail1"style="color: black;">{{ trans('core/acl::auth.login.username') }}</label>
          {!! Form::text('username', request()->input('email', old('username', app()->environment('demo') ? config('core.base.general.demo.account.username', 'botble') : null)), ['class' => 'form-control', 'placeholder' => trans('core/acl::auth.login.username')]) !!}
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1"style="color: black;">{{ trans('core/acl::auth.login.password') }}</label>
          {!! Form::input('password', 'password', request()->input('email') ? null : (app()->environment('demo') ? config('core.base.general.demo.account.password', '159357') : null), ['class' => 'form-control', 'placeholder' => trans('core/acl::auth.login.password')]) !!}
        </div>
        <div class="form-group form-check">
          <label class="form-check-label" for="exampleCheck1" style="color: black;">{!! Form::checkbox('remember', '1', true) !!} {{ trans('core/acl::auth.login.remember') }}</label>
          <span> <a href="{{ route('access.password.request') }}" style=" text-decoration: underline dashed;  float: right;">Forgot password?</a></span>
        </div>
        <button type="submit" style=" border: 1px rgb(0,180,162); border-radius: 5px; ; background: rgb(0,180,162);" class="btn btn-primary btn-block">
          <span class="signin">{{ trans('core/acl::auth.login.login') }}</span>
        </button><br>


      </form>

      <br>
      <!--<p><a class="lost-pass-link" href="{{ route('access.password.request') }}" title="{{ trans('core/acl::auth.forgot_password.title') }}">{{ trans('core/acl::auth.lost_your_password') }}</a></p>-->
      <br>
      <p><a href="/create-account" style=" border: 1px solid #D3D3D3;" class="btn btn-light btn-block">Create an account</a></p>
      {!! apply_filters(BASE_FILTER_AFTER_LOGIN_OR_REGISTER_FORM, null, \Botble\ACL\Models\User::class) !!}

    </section>

  </section>

</section>
<br><br><br>
<!-- Sin in end -->



@endsection
