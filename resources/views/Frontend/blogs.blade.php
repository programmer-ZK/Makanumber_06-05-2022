@extends('layouts.master')

@section('title', 'Blog | Makanumber')

@section('content')

<section class="container" style="font-size: 13px;">
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
  <section class="row  ">
    <section class="col-sm-3 mt-5">

      <h1>Blogs</h1>

    </section>
    <section class="col-sm-9 mb-5 ">
      <div>
        <img src="/frontend-images/download4.png" class="img-fluid" alt="Responsive image">
      </div>

    </section>


  </section>
</section>

<!-- <section class="container">
  <section class="row">

    <section class="col-sm">
      <button type="submit" class="btn btn-primary blogbtn" id="blogbtn"> All</button>
    </section>

    <section class="col-sm">
      <button type="submit" class="btn btn-primary blogbtn" id="blogbtn"> Selling</button>

    </section>

    <section class="col-sm">
      <button type="submit" class="btn btn-primary blogbtn" id="blogbtn"> Buying</button>

    </section>

    <section class="col-sm">
      <button type="submit" class="btn btn-primary blogbtn" id="blogbtn"> Renting</button>


    </section>

    <section class="col-sm">
      <button type="submit" class="btn btn-primary blogbtn" id="blogbtn"> Investing</button>

    </section>

    <section class="col-sm">
      <button type="submit" class="btn btn-primary blogbtn" id="blogbtn"> Lifestyle</button>

    </section>

  </section>
</section> -->

<div class="container">

  <div class="row ">
    @foreach($blogs as $blog)
    <div class="col-sm-6  ">

      <div class="row no-gutters mt-3 ">
        <div class="col-sm-5 mb-3">
          <div class="card">


            <img src="{{asset('public/storage/'.$blog->image)}}" alt="image" class="blog-img" style="width: 100%; height: 250px; ">


          </div>
        </div>
        <div class="col-sm-7 mb-3">
          <div class="card card1" style="height:252px;">
            <div class="card-body blog-bg">
              <p class="card-title" style="font-size:16px; font-weight:bold;">
                <a href="#" style="color: white !important;">
                  {{\Illuminate\Support\Str::limit($blog->name, 30)}}
                </a>
              </p>
              <div class="row  pb-2" style="color:grey">
              </div>
              <p class="card-text" style="font-size:14px; border-top: 2px solid #00B4A2;">

                <span style="color:#B7B7B7; overflow-y: hidden !important;">{{\Illuminate\Support\Str::limit($blog->description, 100)}} </span>
              </p>
              <p class="card-text" style="font-size:12px; color: #00B4A2;">{{$blog->created_at}}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>



</div>

<section class="container">
  <section class="row">
    <section class="col-sm-12 text-center">
      <button class="buttonload load-more">
        <i class="fa fa-refresh "></i> Loading
      </button> <br><br><br>
    </section>
  </section>
</section>


<!-- blogs  end -->

@stop