<?php
$bannerImage = \App\Models\Advertisement::all();
$users = \App\Models\UserModel::where(['id' => $property->author_id])->get();

use Carbon\Carbon;


$state = \Botble\Location\Models\State::with(['cities.properties'])
  ->where('id', 2)
  ->get();

?>

<style>
  nav {
    margin-top: 0px !important;
  }
</style>

{!! Theme::header() !!}
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


<div class="">
  @include('layouts.property_search_form')
</div>


<?php
if ($property->type == 'sale') {
  $props = "Buy";
} else {
  $props = "Rent";
}
?>

<section class="border mt-2 mb-4 pt-2 pb-2" style="border-radius:3px;font-family: 'Montserrat', sans-serif !important; margin: 0px 20px;
    padding: 18px;">
  <section class="row pl-2">
    <span>
      <a href="/" style="color:black;">Home</a>
      <i class="fa fa-angle-right"></i>
      <span href="" style="color:black;">{{$props}} </span>
      <i class="fa fa-angle-right"></i>
      <span href="" style="color:black;">{{ $property->city_name }} </span>
      <i class="fa fa-angle-right"></i>
      <a href="#"> <span style="color:#00B4A2;">{{$property->name}}</span></a>

    </span>

  </section>

</section>


<!--<main class="detailproject bg-white">-->
<div data-property-id="{{ $property->id }}"></div>
@include(Theme::getThemeNamespace() . '::views.real-estate.includes.slider', ['object' => $property])


<div class="container-fluid pl-5" style="width:100% !important; background-color:#0000000B;">

  <div class="row">
    <?php
    $price = $property->price;

    $price = number_format($price, 0, '.', ',');


    $property->created_att = $property->created_at->diffForHumans();

    ?>



    <div class="col-md-8" style="text-align:left !important;font-family: 'Montserrat', sans-serif !important;">
      <button style="color: white; background-color: #00B4A2; padding: 5px; border: #00B4A2; margin-top: 20px; border-radius: 4px;"><i class="fa fa-tag"></i> For {{$property->type}} </button>
      <h3 style="font-weight:bold; font-size:24px;" class="mt-4">AED {{ $price }} </h3>
      <p style="color: #FB9F35;">Added {{ $property->created_att }}</p>
      <p><i class="fa fa-map-marker"></i> {{ $property->city_name }}</p>
      <!-- <i class="fa-solid fa-location-dot"></i> -->
      <div class="row no-gutters" style="font-family: 'Montserrat', sans-serif !important;">

        <div class="col-sm-1 py-1">
          <i class="fa fa-home" style="font-size:40px; color:grey;"></i>
        </div>
        <div class="col-sm-2">

          <h5>{{ implode(', ', $property->categories()->pluck('name')->all()) }}</h5>
          <p>Type</p>

        </div>

        <div class="col-sm-1 ml-3 icon1  py-1">
          <i class="fa fa-chart-area " style="font-size:40px; color:grey;"></i>
        </div>
        <div class="col-sm-1">
          <h5>{{$property->square }}</h5>
          <p>Sq. ft</p>

        </div>

        <div class="col-sm-1 ml-3 icon1  py-1">
          <i class="fa fa-bed" style="font-size:40px; color:grey;"></i>
        </div>
        <div class="col-sm-1 ml-1">
          <h5>{{ number_format($property->number_bedroom) }}</h5>
          <p>{{ __('Bedrooms') }}</p>

        </div>
        <div class="col-sm-1 ml-4 icon1  py-1">
          <i class="fa fa-bath" style="font-size:40px; color:grey;"></i>
        </div>
        <div class="col-sm-2">
          <h5>{{ number_format($property->number_bathroom) }}</h5>
          <p>{{ __('Bathrooms') }}</p>

        </div>
      </div>
      <p>{!! clean($property->content) !!}</p>

    </div>
    <div class="col-md-4 p-5 column " style="font-family: 'Montserrat', sans-serif !important; ">

      <div class="boxright p-3">

        @foreach($users as $user)
        @if($user)
        <div class="row rowm10 itemagent">
          <div class="col-lg-8 colm10">
            <div class="info mt-2">
              <p style="font-size:18px; font-weight:bold; padding-left: 10px;">
                {{$user->first_name}} {{$user->last_name}}
                <br>
                <span style="font-size: 14px; color: grey;">
                  {{$user->username}}
                </span>
              </p>
            </div>
          </div>
        </div>

        @else

        <span><i class="fa fa-user" aria-hidden="true" style="font-size:48px; padding:10px; color:rgb(0, 180, 162); border-radius:50%;object-fit: cover; border:1px solid green !important;"></i></span>

        @endif
        <hr>

        <a href="tel:{{$user->phone}}" target="_blank" style="color:white;"><button class="btn btn-dark mr-3" style="width:130px;"><i class="fa fa-phone" aria-hidden="true"></i> Call Now </button> </a>

        <a href="https://api.whatsapp.com/send?phone={{$user->phone}}" target="_blank" style="color:white;"> <button class="btn btn-success mr-2" style="width:130px; float: left;"> <i class="fab fa-whatsapp" aria-hidden="true"></i> Whatsapp</button></a>


        @endforeach
      </div>


    </div>
  </div>

</div>


<div class="row w90 pl-5" style="font-family: 'Montserrat', sans-serif !important;">
  <div class="col-md-8">
    <div class="row pt-3">
      <div class="col-sm-12">
        <h2 class="features">{{ __('Features') }}</h2>
        <div class="row py-2">
          <div class="col-sm-12">
            <table class="table" style="border:1px solid lightgrey;">
              @if ($property->categories()->count())
              <tr style="border-bottom:none !important; border-bottom-style: hidden;">
                <td style="border:none !important; border-bottom-style: hidden;"><span style="font-size:13px; font-weight:bolder;">{{ __('Property Type:') }}</span></td>
                <td style="border:none;">
                  {{ implode(', ', $property->categories()->pluck('name')->all()) }}
                </td>
                <td style="border:none;"><span style="font-size:13px; font-weight:bolder;">{{ __('Maid Room:') }}</span></td>
                <td style="border:none;">
                  {{$property->maidroom ? 'Yes' : 'No'}}
                </td>
              </tr>
              @endif

              <tr style="border-bottom-style: hidden;">
                <td><span style="font-size:13px; font-weight:bolder;">Furnished:</span></td>
                <td>{{($property->furnished) ? 'Yes' : 'No'}}</td>
              </tr>


              <tr style="border-bottom-style: hidden;">
                <td><span style="font-size:13px; font-weight:bolder;">Year Built:</span></td>
                <td>{{$property->year_built}}</td>
                <td><span style="font-size:13px; font-weight:bolder;">Developer:</span></td>
                <td>{{$property->developer}}</td>
              </tr>


              <tr>
                <td><span style="font-size:13px; font-weight:bolder;">Covered Parkig:</span></td>
                <td>{{$property->covered_parking}}</td>
                <td><span style="font-size:13px; font-weight:bolder;">Parking Spaces:</td>
                <td>{{$property->parking_space}}</td>
              </tr>


            </table>
          </div>
        </div>
      </div>
    </div>


    <br>




    <div class=" ">
      <h5 class="headifhouse">Property Video</h5>

      <?php

      use App\Models\PropertyModel;

      $props = DB::table('re_properties')
        ->select('*')
        ->where('re_properties.id', $property->id)->get();
      ?>
      @foreach($props as $prop)
      @if ($prop->video)
      <video style="width:100%; object-fit: initial;" height="365" controls autoplay muted>
        <source src="{{asset('public/storage/properties/'.$prop->video)}}" type="video/mp4">
      </video>
      @else
      <p></p>
      @endif
      @endforeach

    </div>
    <br>

    @if ($property->video_url)
    {!! Theme::partial('real-estate.elements.video', ['object' => $property, 'title' => __('Property video')]) !!}
    @endif

    <span style="font-family: 'Montserrat', sans-serif !important;">
      {!! Theme::partial('share', ['title' => __('Share'), 'description' => $property->description]) !!}
    </span>

    <div class="clearfix"></div>
  </div>
  <div class="col-md-4">

    <div class="p-3 banner-margin">
      <!--{!! Theme::partial('consult-form', ['type' => 'property', 'data' => $property]) !!}-->
      @foreach($bannerImage as $key => $img)
      @if($img)
      @if($bannerImage->last() === $img)
      <img src="{{asset('public/storage/advertisement/'.$img->image)}}" alt="advertisement-img" class="advertisement-img" style="width: 100%; height: 600px;  border:10px solid orange;">
      @endif
      @else
      <h2 style="font-weight: bold; font-family: 'Montserrat', sans-serif !important;">Advertisement will be here</h2>
      @endif
      @endforeach
    </div>
  </div>
</div>


<br>
<h2 class="headifhouse ml-5" style="font-weight:bold;font-family: 'Montserrat', sans-serif !important;">{{ __('Nearby Similar Properties') }}</h2>
<div class="projecthome mb-3">
  @if($property->type == 'sale')
  <property-component type="sale" url="{{ route('public.ajax.properties') }}" :property_id="{{ $property->id }}"></property-component>
  @else
  <property-component type="rent" url="{{ route('public.ajax.properties') }}" :property_id="{{ $property->id }}"></property-component>
  @endif
</div>
</div>
<!--</main>-->

<script id="traffic-popup-map-template" type="text/x-custom-template">
  {!! Theme::partial('real-estate.properties.map', ['property' => $property]) !!}
</script>

<style>
  body {
    font-family: 'Montserrat', sans-serif !important;
  }

  @media screen and (max-width: 480px) {

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

    /*.input{*/
    /*    width:100% !important;*/
    /*    margin-bottom:5px;*/
    /*    margin-left:0px !important;*/
    /*}*/
    /*.input1{*/
    /*    margin-right:8px !important;*/
    /*    width:100% !important;*/
    /*    margin-bottom:5px;*/
    /*}*/

    /*.button{*/
    /*    margin-top:10px;*/
    /*    width:100% !important;*/
    /*    margin-left:-25px !important;*/
    /*}*/



  }
</style>