@extends('layouts.master')


@section('title', 'Customer Service | Makanumber')

@section('content')
<section class="container" style="font-size: 13px;">
  <section class="row justify-content-center ">
    <section class="col-sm-3 mt-5">

      <h1 style="font-family: 'Montserrat', sans-serif !important; font-weight: 700;">Customer Service</h1>

    </section>
    <section class="col-sm-9 mb-5">
      <div>
        <img src="/frontend-images/download2.png" class="img-fluid" alt="Responsive image">
      </div>

    </section>


  </section>
</section>
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
<section class="container mt-5 mb-5">
  <section class="row ">

    <section class="col-sm-4 ">
      <h2><span class="nt-1">Need H</span>elp?</h2><br>

      <span style="color:black;">Phone</span>
      <h4 style="font-weight:bold;">0800-MAKAN (0000)</h4><br>



      <span style="color:black;">Email</span>
      <h4 style="font-weight:bold;">info@makanumber.com</h4><br>

      <span style="color:black;">Adress</span>
      <h4 style="font-weight:bold;">Office no 313, Marina Plaza, Dubai Marina, Dubai, U.A.E.</h4>
    </section>


    <section class="col-sm-3 contact-us">
      <img src="/frontend-images/download3.png" class="img-fluid img" alt="Responsive image" style="height: 400px;">
    </section>

    <section class="col-sm-1">
      <div></div>

    </section>

    <section class="col-sm-4 mail-margin">
      <h2><span class="nt-1">Send</span> email</h2><br>
      <form class="form-container" method="post" action="/send-mail">
        @csrf
        <section>
          <div class="form-group">
            <label for="exampleInputEmail1" style="color: black !important; ">Email</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your email" name="email">
          </div>
        </section>

        <section>

          <div class="form-group">
            <label for="exampleInputEmail1" style="color: black !important; ">Name</label>
            <input type="text" class="form-control" placeholder="Enter your name" name="name">

          </div>
        </section>

        <section>
          <p style="color: black !important; ">Message</p>
          <textarea class="form-control" style="width: 100%;" name="content" placeholder="Type something"></textarea> <br>
          <button type="submit" style=" border: 1px rgb(0,180,162); border-radius: 5px; ; background: rgb(0,180,162); width: 60% !important;" class="btn btn-primary">Send message</button><br>
        </section>
      </form>


    </section>



  </section>
</section>



@stop