<?php
 


$bannerImage = \App\Models\Advertisement::all();

?>
@extends('core/base::layouts.base')

@section ('page')
@include('core/base::layouts.partials.svg-icon')

<div class="page-wrapper">

  @include('core/base::layouts.partials.top-header')
  <div class="clearfix"></div>
  <div class="page-container">
    <div class="page-sidebar-wrapper">
      <div class="page-sidebar navbar-collapse collapse">
        <div class="sidebar">
          <div class="sidebar-content">
            <ul class="page-sidebar-menu page-header-fixed" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
              @include('core/base::layouts.partials.sidebar')
              @if(Auth::user()->super_user == 1)
              <li class="page-sidebar-menu page-header-fixed" style="border-bottom:1px solid gray;">

                <a class=" dropdown-header-name" style="padding-right: 10px" href="#openModal-about"><i class="fa fa-plus"></i>Add Advertisement</span> </a>


                <div id="openModal-about" class="modalDialog">
                  <div>
                    <a href="#close" title="Close" class="close btn btn-danger">X</a>
                    <div class="modal-header" style="background-color:transparent;">
                      <h5 class="modal-title" id="exampleModalLabel" style="color:black; font-weight:bold;">Add Banner Advertisement </h5>
                    </div>
                    <div class="modal-body">
                      <form method="post" action="/add-advertisement" enctype="multipart/form-data">

                        @csrf
                        <h5>Attach image here</h5>
                        <div class="row">
                          <div class="col-sm-5">

                            <label class="custom-file-upload btn btn-success" style=" 
                                        display: inline-block;
                                        cursor: pointer;
                                        background-color:#00B4A2;
                                        color:white;
                                        width:120px;">
                              <input type="file" style="display:none;" name="image" />
                              Upload
                            </label>
                            <p>size 453 by 665</p>
                          </div>
                          <div class="col-sm-6">

                            @foreach($bannerImage as $key => $img)
                            @if($img)
                            @if($bannerImage->last() === $img)
                            <img src="{{asset('public/storage/advertisement/'.$img->image)}}" alt="advertisement-img" class="advertisement-img" style="width: 100%; height: 300px; !important; border:10px solid orange;">
                            @endif
                            @else
                            <p style="font-weight: bold;">Advertisement will be here</p>
                            @endif
                            @endforeach



                          </div>



                        </div>

                        <button type="submit" class="btn btn-primary mb-5" style="background-color:#00B4A2; width:120px;">Save</button>


                      </form>
                    </div>
                    <!-- <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                        </div> -->
                  </div>
                </div>


              </li>



              @endif

            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="page-content-wrapper">
      <div class="page-content @if (Route::currentRouteName() == 'media.index') rv-media-integrate-wrapper @endif" style="min-height: 100vh">
        {!! Breadcrumbs::render('main', page_title()->getTitle(false)) !!}
        <div class="clearfix"></div>
        <div id="main">
          @yield('content')


        </div>
      </div>
    </div>
    <div class="clearfix"></div>
  </div>
  @include('core/base::layouts.partials.footer')
</div>
@stop

@section('javascript')
@include('core/media::partials.media')
@endsection

@push('footer')
@routes
@endpush


<style>
  * {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }

  .modalDialog {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.8);
    z-index: 99999;
    opacity: 0;
    -webkit-transition: opacity 100ms ease-in;
    -moz-transition: opacity 100ms ease-in;
    transition: opacity 100ms ease-in;
    pointer-events: none;
  }

  .modalDialog:target {
    opacity: 1;
    pointer-events: auto;
  }

  .modalDialog>div {
    max-width: 600px;
    width: 70%;
    position: relative;
    margin: 5% auto;
    padding: 20px;
    border-radius: 3px;
    background: #fff;
    height: 500px;
  }

  .close {
    font-family: Arial, Helvetica, sans-serif;
    background: #f26d7d;
    color: #fff;
    line-height: 25px;
    position: absolute;
    right: -12px;
    text-align: center;
    top: -10px;
    width: 34px;
    height: 34px;
    text-decoration: none;
    font-weight: bold;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    border-radius: 50%;
    -moz-box-shadow: 1px 1px 3px #000;
    -webkit-box-shadow: 1px 1px 3px #000;
    box-shadow: 1px 1px 3px #000;
    padding-top: 5px;
  }

  .close:hover {
    background: #fa3f6f;
  }
</style>