@extends('layouts.master')


@section('title', 'Sign In | Makanumber')

@section('content')
<!-- Sign In -->
<section class="container-fluid">
  <section class="row justify-content-center mb-5" style="margin-top: 5%;">
    <section class="col-3 ">
      <H3 style="font-family: Montserrat-Bold; font-size: 24px;">SIGN IN</H3>
      <form class="form-container">
        <div class="form-group">
          <label for="exampleInputEmail1">Email</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="example@mail.com" required>
          <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
        </div>
        <div class="form-group form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Remember me</label>
          <span> <a href="#" style=" text-decoration: underline dashed;  float: right;">Forgot password?</a></span>
        </div>
        <button type="submit" style=" border: 1px rgb(0,180,162); border-radius: 5px; ; background: rgb(0,180,162);" class="btn btn-primary btn-block">Sign in</button><br>


      </form>
      <a href="/create-account" style=" border: 1px solid #D3D3D3;" class="btn btn-light btn-block">Create an account</a>

    </section>

  </section>

</section>

<!-- Sign In end -->

<style>
  a {
    color: black !important;
  }
</style>
<script>
  $(document).ready(function() {

    $('.items').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
    });
  });
</script>

@stop