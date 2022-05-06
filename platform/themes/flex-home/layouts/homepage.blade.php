<?php
$properties = DB::table('re_properties')
  ->select('*')
  ->join('cities', 're_properties.city_id', '=', 'cities.id')
  ->where('re_properties.city_id', '=', 'cities.id')
  ->get();

$property = DB::table('re_properties')
  ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
  ->select('*')
  ->where('moderation_status', 'approved')
  ->get();

$cities = DB::table('cities')
  ->select('*')
  ->get();

$propertyTypes = DB::table('re_categories')
  ->select('*')
  ->get();

$palm = DB::table('states')
  ->join('cities', 'states.id', '=', 'cities.state_id')
  ->join('re_properties', 're_properties.city_id', '=', 'cities.id')
  ->select('*')
  ->get();

$state = \Botble\Location\Models\State::with(['cities.properties'])
  ->where('id', 2)
  ->get();

$dubai_city = \Botble\Location\Models\City::where('state_id', 1)->get();
$jumeriah_city = \Botble\Location\Models\City::where('state_id', 2)->get();
$abu_dhabi_city = \Botble\Location\Models\City::where('state_id', 3)->get();
$sharjah_city = \Botble\Location\Models\City::where('state_id', 4)->get();
$ajman_city = \Botble\Location\Models\City::where('state_id', 5)->get();
$al_ain_city = \Botble\Location\Models\City::where('state_id', 6)->get();
$ras_al_khaimah_city = \Botble\Location\Models\City::where('state_id', 7)->get();

$dubai_id = $dubai_city->pluck('id');
$jumeriah_id = $jumeriah_city->pluck('id');
$abu_dhabi_id = $abu_dhabi_city->pluck('id');
$sharjah_id = $sharjah_city->pluck('id');
$ajman_id = $ajman_city->pluck('id');
$al_ain_id = $al_ain_city->pluck('id');
$ras_al_khamiah_id = $ras_al_khaimah_city->pluck('id');

$dubai = \App\Models\PropertyModel::whereIn('city_id', $dubai_id)
  ->where('is_featured', 1)
  ->count();

$jumeriah = \App\Models\PropertyModel::whereIn('city_id', $jumeriah_id)
  ->where('is_featured', 1)
  ->count();

$abu_dhabi = \App\Models\PropertyModel::whereIn('city_id', $abu_dhabi_id)
  ->where('is_featured', 1)
  ->count();

$sharjah = \App\Models\PropertyModel::whereIn('city_id', $sharjah_id)
  ->where('is_featured', 1)
  ->count();

$ajman = \App\Models\PropertyModel::whereIn('city_id', $ajman_id)
  ->where('is_featured', 1)
  ->count();

$al_ain = \App\Models\PropertyModel::whereIn('city_id', $al_ain_id)
  ->where('is_featured', 1)
  ->count();

$ras_al_khaimah = \App\Models\PropertyModel::whereIn('city_id', $ras_al_khamiah_id)
  ->where('is_featured', 1)
  ->count();

$pkg = [];

?>


<style>
  nav {
    margin-top: 0px !important;
  }

  #myVideo {
    width: 100%;
    height: 100%;
    z-index: -1;
  }

  .img-section {
    opacity: 0.4;
    padding: 0px !important;
  }

  .video_opacity {
    margin-top: -950px;
    width: 100%;
    height: 950px;
    background-color: rgba(0, 0, 0, .6);
    z-index: 0;
  }

  .sign-in-button:hover {
    color: white !important;
    background-color: #00b4a2 !important;
  }

  .descrip,
  .description,
  .heading {
    font-family: 'League Spartan', sans-serif;
  }

  #slogan h1 {
    font-size: 3.5rem;
    color: white;
    font-family: 'Dancing Script', cursive !important;
  }

  .overlay {
    position: absolute;
    /* top: 0;*/
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    /*height: 500px; */
  }

  .prop_name {
    text-transform: lowercase !important;
    /* text-transform: capitalize  !important; */
  }

  #search-form12 {
    position: absolute;
    left: 25%;
    width: 100%;
  }

  @media screen and (max-width: 768px) {
    #search-form12 {
      left: 0;
      position: relative;
    }
    #slogan h1 {
      font-size: 27px;
    }

    .overlay {
      left: 47%;
      top: 70%;
    }
  }

  @media screen and (max-width: 480px) {
    #search-form12 {
      left: 0;
      position: relative;
    }

    html {
      overflow-x: hidden !important;
    }

    .overlay {
      position: static;
    }

    .footer_coloumn {
      padding: 0 !important;
      margin: 0 !important;
    }

    .footer_coloumn_1 {
      margin-right: 30px !important;
      padding: 0 !important;
    }

    .footer_coloumn_5,
    .footer_coloumn_3,
    .footer_coloumn_4 {
      margin-top: 25px !important;
      margin-left: 50px !important;
    }

    .footer_coloumn_1 p {
      padding-right: 0px !important;
    }

    .searchBtn {
      margin-left: 30px !important;
    }

    .search_form {
      transform: none !important;
      margin-bottom: 120px !important;
    }

    .search_form #slogan h1 {
      padding: 0px 20px !important;
      margin-top: 10px !important;
      text-align: center !important;
      font-family: "League Spartan" !important;
      font-size: 32px !important;
      font-weight: 700 !important;
      color: black;
    }

    .searchBtn button {
      margin-left: -15px !important;
    }

    .navbar-brand img {
      height: 35px !important;
    }

    .video_opacity {
      background-color: none !important;
    }


  }
</style>


{!! Theme::partial('header') !!}


<div id="app">
  <div id="ismain-homes">
    <div class="container-fluid">
      <div class="row slider" style="overflow:hidden ;">

        <div class="col-sm-12 img-section">
          <video autoplay muted loop id="myVideo">
            <source src="/videos/VID-20220315-WA0000.mp4" type="video/mp4">
          </video>
        </div>
      </div>

    </div>

    <div class="mx-auto">

      <!-- Search Engine End -->
      {{-- <div class="search_form" style="padding: 20px 0px; transform: translateY(-570px) ; "> --}}
      <div class="search_form overlay">
        <div class="text-center" id="slogan">
          <h1>Trusted Place To Find Your Dream Home</h1>
        </div>
        <div class="ml-4">
          @include('layouts.prop_srch_form_home')
        </div>
      </div>


      <div class="container-fluid text-center pl-5 pr-5" style="background-color:#2A2A2A; padding-top:40px; padding-bottom:40px;">
        <div class="row" id="myDiv">
          <div class="col-12">
            <div class="text-center mb-5 heading">
              <hr class="b-top mx-auto" style="padding-top:13px;">
              <h2 style="font-size:32px !important; color:white;">Discover our Featured Listings</h2>
            </div>

          </div>
        </div>
        <div class="row">
          <div id="recipeCarousel" class="carousel slide w-100" data-ride="carousel">
            <div class="carousel-inner marg" role="listbox" style="padding: 0px 10px;">
              @foreach ($property as $i => $prop)
              <?php
              $time = Carbon\Carbon::now();
              $new = $time->diffInHours($prop->created_at);
              ?>

              <div class="carousel-item col-12 col-sm-6 col-md-4 col-lg-4 custom-col-width {{$i == 0 ? 'active' : ''}}">
                <?php
                $users = \App\Models\UserModel::where(['id' => $prop->author_id])->get();
                foreach ($users as $user) {
                  $pkg = DB::table('subscription')
                    ->select('*')
                    ->where('subscription.user_id', $user->id)
                    ->get();
                }
                ?>

                <div class="card card-body" style="border:1px solid white !important; height:365px; padding:0px !important; background-color:#2A2A2A;">

                  @foreach ($pkg as $pk)
                  @if ($pk->price > 500)
                  <span class="premium float-right pl-4 pr-4" style="color:white;
                                                        background-color: red;
                                                        border-bottom-left-radius: 18px;
                                                        padding: 5px 15px !important;
                                                        position:absolute;
                                                        float: right;
                                                        margin-left: 73%;
                                                        z-index:1;">Premium</span>
                  @endif
                  @endforeach
                  @if ($new < 24) <span class="premium float-right pl-5 pr-4" style="color:white;
                                                        background-color: red;
                                                        border-bottom-left-radius: 18px;
                                                        padding: 5px 15px !important;
                                                        position:absolute;
                                                        float: right;
                                                        margin-left: 83.5%;
                                                        font-size:12px;
                                                        z-index:1;">New </span>
                    @endif

                    <img class="img-fluid" src="{{ asset('public/storage/' . json_decode($prop->images, true)[0]) }}" style="width:100%; height:200px !important; object-fit: cover;">
                    <?php
                    $propertyUrl = DB::table('re_properties')
                      ->select('*')
                      ->join('slugs', 're_properties.id', '=', 'slugs.reference_id')
                      ->where('slugs.reference_id', '=', $prop->property_id)
                      ->get();
                    ?>
                    <div class="row pt-2 no-gutters" style="height:70px !important;">
                      <div class="col-sm-7 justify-content-start" style="display:flex;">
                        @foreach ($propertyUrl as $k => $url)
                        @if ($loop->first)
                        <p class="prop_name">
                          <a style=" color:white !important; font-weight:bold; padding-left:25px;" href="properties/{{ $url->key }}">
                            <span>
                              {{ Str::limit($prop->name, 30) }}
                            </span>
                          </a>
                        </p>
                        @endif
                        @endforeach
                      </div>
                      <?php
                      $price = $prop->price;
                      $price = number_format($price, 0, '.', ',');
                      ?>
                      <div class="col-sm-5">
                        <p class="descrip" style="color:#0AAC7E; font-weight:bold; ">AED
                          {{ $price }}
                        </p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm">
                        <span class="address" style="float:left; padding-left:25px;">{{ Str::limit($prop->location, 20) }}
                        </span>
                      </div>
                    </div>
                    <div class="row pl-2">
                      <div class="col-sm px-4">
                        <hr class="green" style="border: 1px solid #0AAC7E !important;" />
                      </div>
                    </div>
                    <div class="row" style="color:grey">
                      <div class="col-sm-12 pl-4" style="float:left;  text-align:left !important;">
                        &nbsp;&nbsp;
                        @if ($prop->square)
                        <span class="m-1"><i class="fas fa-chart-area" aria-hidden="true" style="color:gold;"></i> {{ $prop->square }} </span>
                        @endif

                        @if ($prop->number_bedroom)
                        <span class="m-1"><i class="fas fa-bed" aria-hidden="true" style="color:#FB9F35;"></i><i class="fad fa-bed-alt"></i>
                          {{ $prop->number_bedroom }}</span>
                        @endif

                        @if ($prop->number_bathroom)
                        <span class="m-1"><i class="fa fa-bath" aria-hidden="true" style="color:#FB9F35;"></i>
                          {{ $prop->number_bathroom }}</span>
                        @endif
                        &nbsp;

                        <?php
                        $users = \App\Models\UserModel::where(['id' => $prop->author_id])->get();
                        ?>

                        @foreach ($users as $user)

                        <?php
                        $documents = \App\Models\Document::where('user_id', $user['id'])->get();
                        $doc_count = $documents->count();
                        ?>

                        @if ($user['avatar_id'])
                        <span class="pl-2 pr-2 userName">
                          {{ $user['first_name'] }}
                          {{ $user['last_name'] }}
                          @if ($doc_count >= 1)
                          <i class="fas fa-badge-check" aria-hidden="true" style="color:#00b4a2;"></i>
                          @endif
                        </span>
                        <img src="{{ asset('public/storage/users/' . $user['avatar_id']) }}" style="width:24px; height:24px; border-radius: 50%; " alt="profile-pic" class="mb-1 userName" />
                        @else
                        <span class="pl-2 pr-2 userName">{{ $user['first_name'] }}
                          {{ $user['last_name'] }}</span> <span class="userName"><span class="icon"><i class="fa fa-user" aria-hidden="true" style="height:34px; border-radius:5px !important;  "></i></span></span>
                        @endif
                        @endforeach
                      </div>
                    </div>
                </div>

              </div>
              @endforeach
            </div>
            <a class="carousel-control-prev w-auto" href="#recipeCarousel" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon bg-dark border border-dark rounded-circle" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next w-auto" href="#recipeCarousel" role="button" data-slide="next">
              <span class="carousel-control-next-icon bg-dark border border-dark rounded-circle" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      </div>
    </div>





    <div class="container-fluid text-center my-3 pl-5 pr-5" style="background-color:#ffffff; padding-top:40px; padding-bottom:40px;">
      <div class="row" id="myDiv">
        <div class="col-12">
          <div class="text-center mb-5 heading">
            <hr class="b-top mx-auto" style="padding-top:13px;">
            <h2 style="font-size:32px !important; font-weight:bolder;">Discover New Projects</h2>
          </div>

        </div>
      </div>

      <div class="row">
        <div id="recipeCarousel2" class="carousel slide w-100" data-ride="carousel">
          <div class="carousel-inner marg" role="listbox" style="padding: 0px 10px;">
            @foreach ($property as $i => $prop)
            <?php
            $time = Carbon\Carbon::now();
            $new = $time->diffInHours($prop->created_at);
            ?>

            <div class="carousel-item col-12 col-sm-6 col-md-4 col-lg-4 custom-col-width {{$i == 0 ? 'active' : ''}}">
              <?php
              $users = \App\Models\UserModel::where(['id' => $prop->author_id])->get();
              foreach ($users as $user) {
                $pkg = DB::table('subscription')
                  ->select('*')
                  ->where('subscription.user_id', $user->id)
                  ->get();
              }
              ?>

              <div class="card card-body" style="border:1px solid white !important; height:365px; padding:0px !important; background-color:#2A2A2A;">

                @foreach ($pkg as $pk)
                @if ($pk->price > 500)
                <span class="premium float-right pl-4 pr-4" style="color:white;
                                                background-color: red;
                                                border-bottom-left-radius: 18px;
                                                padding: 5px 15px !important;
                                                position:absolute;
                                                float: right;
                                                margin-left: 73%;
                                                z-index:1;">Premium</span>
                @endif
                @endforeach
                @if ($new < 24) <span class="premium float-right pl-5 pr-4" style="color:white;
                                                background-color: red;
                                                border-bottom-left-radius: 18px;
                                                padding: 5px 15px !important;
                                                position:absolute;
                                                float: right;
                                                margin-left: 83.5%;
                                                font-size:12px;
                                                z-index:1;">New </span>
                  @endif

                  <img class="img-fluid" src="{{ asset('public/storage/' . json_decode($prop->images, true)[0]) }}" style="width:100%; height:200px !important; object-fit: cover;">
                  <?php
                  $propertyUrl = DB::table('re_properties')
                    ->select('*')
                    ->join('slugs', 're_properties.id', '=', 'slugs.reference_id')
                    ->where('slugs.reference_id', '=', $prop->property_id)
                    ->get();
                  ?>
                  <div class="row pt-2 no-gutters" style="height:70px !important;">
                    <div class="col-sm-7 justify-content-start" style="display:flex;">
                      @foreach ($propertyUrl as $k => $url)
                      @if ($loop->first)
                      <p class="prop_name">
                        <a style=" color:white !important; font-weight:bold; padding-left:25px; " href="properties/{{ $url->key }}">
                          <span>
                            {{ Str::limit($prop->name, 30) }}
                          </span>
                        </a>
                      </p>

                      @endif
                      @endforeach
                    </div>
                    <?php
                    $price = $prop->price;
                    $price = number_format($price, 0, '.', ',');
                    ?>
                    <div class="col-sm-5">
                      <p class="descrip" style="color:#0AAC7E; font-weight:bold; ">AED
                        {{ $price }}
                      </p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm">
                      <span class="address" style="float:left; padding-left:25px;">{{ Str::limit($prop->location, 20) }}
                      </span>
                    </div>
                  </div>
                  <div class="row pl-2">
                    <div class="col-sm px-4">
                      <hr class="green" style="border: 1px solid #0AAC7E !important;" />
                    </div>
                  </div>
                  <div class="row" style="color:grey">
                    <div class="col-sm-12 pl-4" style="float:left;  text-align:left !important;">
                      &nbsp;&nbsp;
                      @if ($prop->square)
                      <span class="m-1"><i class="fas fa-chart-area" aria-hidden="true" style="color:gold;"></i> {{ $prop->square }} </span>
                      @endif

                      @if ($prop->number_bedroom)
                      <span class="m-1"><i class="fa fa-bed" aria-hidden="true" style="color:#FB9F35;"></i><i class="fad fa-bed-alt"></i>
                        {{ $prop->number_bedroom }}</span>
                      @endif

                      @if ($prop->number_bathroom)
                      <span class="m-1"><i class="fa fa-bath" aria-hidden="true" style="color:#FB9F35;"></i>
                        {{ $prop->number_bathroom }}</span>
                      @endif
                      &nbsp;

                      <?php
                      $users = \App\Models\UserModel::where(['id' => $prop->author_id])->get();

                      ?>
                      @foreach ($users as $user)
                      <?php

                      $documents = \App\Models\Document::where('user_id', $user['id'])->get();
                      $doc_count = $documents->count();

                      ?>
                      @if ($user['avatar_id'])
                      <span class="pl-2 pr-2 userName">{{ $user['first_name'] }}
                        {{ $user['last_name'] }}
                        @if ($doc_count >= 1)
                        <i class="fas fa-badge-check" aria-hidden="true" style="color:#00b4a2;"></i>
                        @endif</span><img src="{{ asset('public/storage/users/' . $user['avatar_id']) }}" style="width:24px; height:24px; border-radius: 50%; " alt="profile-pic" class="mb-1 userName" />

                      @else
                      <span class="pl-2 pr-2 userName">{{ $user['first_name'] }}
                        {{ $user['last_name'] }}</span> <span class="userName"><span class="icon"><i class="fa fa-user" aria-hidden="true" style="height:34px; border-radius:5px !important;  "></i></span>
                      </span>
                      @endif
                      @endforeach
                    </div>
                  </div>
              </div>

            </div>
            @endforeach
          </div>
          <a class="carousel-control-prev w-auto" href="#recipeCarousel2" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon bg-dark border border-dark rounded-circle" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next w-auto" href="#recipeCarousel2" role="button" data-slide="next">
            <span class="carousel-control-next-icon bg-dark border border-dark rounded-circle" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </div>







  {!! Theme::content() !!}

  <!-- Top content -->



</div>



<style>
  body {
    font-family: 'Montserrat', sans-serif !important;
    margin-right: 0px !important;
  }

  @media screen and (max-width: 480px) {


    .search-engine {
      width: 103.7% !important;
      background-color: orange;
      padding-left: 40px;
      margin-top: 2px !important;
      padding-right: 40px !important;
      border-top-right-radius: 0px !important;

    }

    .bg-color {
      width: 103.7% !important;
    }

    .search-input {
      width: 100% !important;
      height: 40px;
      padding-bottom: 10px !important;
      border: 1px transparent;
      padding-left: 50px;
      padding-top: 5px;
      border-radius: 3px;
      margin-left: -10px;
    }

    .has-search .form-control-feedback {
      position: absolute;
      z-index: 2;
      display: block;
      width: 2.375rem;
      height: 2.375rem;
      line-height: 2.375rem;
      text-align: center;
      pointer-events: none;
      color: #aaa;
    }

    .input {
      height: 40px;
      width: 96.5% !important;
      border: 1px solid white;
      padding: 5px;
      margin-left: 10px;
      background-color: transparent;
      color: white;
      border-radius: 3px;
      margin-top: 20px !important;
    }

    .search-btn {

      margin-left: 44%;
      width: 100%;
      margin-bottom: 10px;
      margin-top: 10px;
      padding-bottom: 10px !important;
    }


    .items {
      width: 90%;
      display: block;
    }


    .item {
      border: 1px solid grey;
      border-radius: 5px;
    }

    .slick-slide {
      margin: 10px;
    }

    .mob {
      margin-left: 30px;
    }

    .b-top {
      border-top: none;
    }

    .neighborhood-img {
      margin-bottom: 10px;
      margin-left: 10px !important;
      margin-right: -25px !important;
    }

    .neighborhood-img>img {
      width: 450px !important;
      height: 240px;
      margin-left: 10px !important;
      margin-right: 0px !important;
    }

    .margin {
      margin-left: 0px !important;
      margin-right: 0px !important;
    }

    .description {
      background-color: white;
      border-top-right-radius: 0px;
      padding: 10px;
      width: 90.7%;
      margin-top: -82px;
      position: absolute;
      font-weight: bold;
      text-align: center;
      border: 1px solid lightslategray;
      /*margin-bottom:120px;*/
      margin-left: 10px;
    }

    .description1 {
      background-color: white;
      border-top-right-radius: 0px;
      padding: 10px;
      width: 90.8%;
      margin-top: -82px;
      position: absolute;
      font-weight: bold;
      text-align: center;
      border: 1px solid lightslategray;
      margin-left: 10px;
    }

    .marg {
      margin-left: 10px !important;
    }

    .card {
      width: 100% !important;
    }

    .descrip {
      margin-top: 8px;
      text-align: left;
      object-fit: cover;
      margin-left: 25px;
    }

    .userName {
      margin-top: 3px;
      text-align: center !important;
      float: center !important;
      margin-left: 5px;
    }


    .input1 {
      height: 40px;
      width: 96.5% !important;
      border: 1px solid white;
      padding: 5px;
      margin-left: 10px;
      background-color: transparent;
      color: white;
      border-radius: 3px;
      margin-top: 20px !important;

    }

    .area-input {
      background-color: red !important;
    }


  }
</style>


{!! Theme::partial('footer') !!}

</div>
</div>