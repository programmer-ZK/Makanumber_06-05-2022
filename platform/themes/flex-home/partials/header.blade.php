<?php
if (Auth::user()) {
  $user_id =   Auth::user()->id;
  $user_role_id =  DB::table('role_users')->where('user_id', '=', $user_id)->value('role_id');
  $documents = \App\Models\Document::where('user_id', $user_id)->get();
}
?>
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1,shrink-to-fit=no" name="viewport" />
  <link rel="shortcut icon" href="/storage/makanumber-icon.png" type="image/x-icon">

  <meta name="csrf-token" content="{{ csrf_token() }}">
  <!--<link rel="icon" type="image/x-icon" href="/frontend-images/favicon.png" style="width:50px; height:20px;">-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">

  <!-- Fonts-->
  <link href="https://fonts.googleapis.com/css?family={{ urlencode(theme_option('primary_font', 'Nunito Sans')) }}:300,600,700,800" rel="stylesheet" type="text/css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
  <!-- CSS Library-->
  <link rel="stylesheet" href="/css/index.css">

  <!-- Apni JS -->
  <script src="index.js"></script>
  <script src="jquery-3.5.1.min.js"></script>

  <!-- Bootstrap  -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

  <!-- Font Aweosme CDN -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script> -->
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" /> -->
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat-Bold">

  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css" />
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <title>Makanumber.com</title>


  <style>
    .scontent {
      width: 100% !important;
      overflow: hidden !important;
    }

    .scontent img {
      /* width: 800px !important; */
      width: 100% !important;
    }

    .sign-in-button {
      font-weight: 700 !important;
    }

    :root {
      --primary-color: {
          {
          theme_option('primary_color', '#1d5f6f')
        }
      }

      ;

      --primary-color-rgb: {
          {
          hex_to_rgba(theme_option('primary_color', '#1d5f6f'), 0.8)
        }
      }

      ;

      --primary-color-hover: {
          {
          theme_option('primary_color_hover', '#063a5d')
        }
      }

      ;
      /*--primary-font: '{{ theme_option('primary_font', 'Nunito Sans') }}';*/
    }
  </style>

  <!-- {!! Theme::header() !!} -->

</head>
<!-- <div style="margin-top: 70px;"></div> -->

<body @if (BaseHelper::siteLanguageDirection()=='rtl' ) dir="rtl" @endif style="overflow-x: hidden;">

  <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top: 0px !important; font-weight:bold; font-family: 'Montserrat', sans-serif !important;  ">
    <a class="navbar-brand ml-5" href="/">
      <img src="/frontend-images/logo.png" alt="logo-img" style="height:45px" />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item active mt-1" style="border:none !important;">
          <a class="nav-link mr-4 hoverEffect" href="/"><span class="nt-1" style="padding-top:4px;">H</span>ome</a>
        </li>
        <div class="dropdown">
          <li class="nav-item active mt-1" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <a class="nav-link mr-4 hoverEffect" href="#" style="padding-left: 5px;padding-right: 5px;"><span class="nt-1" style="padding-top:4px;">B</span>uy <span class="sr-only">(current)</span></a>
          </li>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <h5 class="mx-2">Residential</h5>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=1">Apartment</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=2">Villa</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=6">Townhouse</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=3">Residential Plot</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=7">Residential Building</a>

            <hr>

            <h5 class="mx-2">Commercial</h5>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=8">Office</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=9">Warehouse</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=10">Shop</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=4">Industrial Land</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=11">Showroom</a>
            <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=5">Commercial Plot </a>
          </div>
        </div>

        <div class="dropdown">
          <li class="nav-item active mt-1" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <a class="nav-link mr-4 hoverEffect" href="#" style="padding-left: 5px;padding-right: 5px;"><span class="nt-1" style="padding-top:4px;">R</span>ent</a>
          </li>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <h5 class="mx-2">Residential</h5>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=1">Apartment</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=2">Villa</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=6">Townhouse</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=3">Residential Plot</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=7">Residential Building</a>

            <hr>

            <h5 class="mx-2">Commercial</h5>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=8">Office</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=9">Warehouse</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=10">Shop</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=4">Industrial Land</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=11">Showroom</a>
            <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=5">Commercial Plot </a>
          </div>
        </div>
        {{-- <div class="dropdown">
        <li class="nav-item active" data-toggle="dropdown" >
          <span class="nav-link " href="#">More <span class="navbar-toggler-icon my-toggler" style="margin-left:-2px; font-size:20px;"></span></span>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="/about-us">About Us</a>
            <a class="dropdown-item" href="/news">Blog</a>
            <a class="dropdown-item" href="/customer-service">Contact us</a>
            <a class="dropdown-item" href="/privacy-policy">Privacy Policy</a>
          </div>
        </li>
      </div>  --}}

        <div class="dropdown">
          <li class="nav-item active" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <span class="nav-link hoverEffect" style="padding-top:12px;" href="#"><span class="pr-1">More</span><span class="fa fa-bars" style="margin-bottom:-10px !important; font-size:18px; "></span></span>
          </li>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="/about-us">About Us</a>
            <a class="dropdown-item" href="/news">Blog</a>
            <a class="dropdown-item" href="/customer-service">Contact us</a>
            <a class="dropdown-item" href="/privacy-policy">Privacy Policy</a>
          </div>
        </div>


        <li class="nav-item mt-2 ml-3 active" style="border:none !important;">
          <span class="mr-5">
            <img class="flag mr-1" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/320px-Flag_of_Pakistan.svg.png" />
            <img class="flag1" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/255px-Flag_of_the_United_Arab_Emirates.svg.png" />
          </span>

        </li>
        @if (Auth::user())
        @if($user_role_id != 3)
        <li class="nav-item mt-1 ">
          <a href="/add-property">
            <button class="btn btn-outline-dark px-3 sign-in-button">Create a Listing</button>
          </a>
        </li>
        @else
        <li class="nav-item mt-1 ">
          <a href="/add-property">
            <button class="btn btn-outline-dark px-3 sign-in-button">Add Property</button>
          </a>
        </li>
        @endif
        @endif

      </ul>
      <form class="form-inline my-2 my-lg-0">
        @if (Auth::user())
        @if(Auth::user()->avatar_id)
        <li class="nav-item ml-2 mr-0" style="list-style:none !important;">
          <img src="{{asset('public/storage/users/'.Auth::user()->avatar_id)}}" style="width:30px; height:30px; border-radius:50%; border:1px solid;" />
        </li>
        @else
        <li class="nav-item ml-2" style="list-style:none !important;">
          <img src="/frontend-images/profile-pic.jpg" style="height:30px; width:30px; border-radius:50%;" />
        </li>
        @endif
        <div class="dropdown mr-5">
          <li class="nav-item active" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <span class="nav-link " href="#">{{ Auth::user()->username }} <i class="fa fa-angle-down"></i></span>
          </li>
          @if((Auth::user()->super_user==1) || (Auth::user()->super_user==0))
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">


            @if (Auth::user())
            @if($user_role_id != 3)
            <a class="dropdown-item" href="/admin"> Dashboard</a>
            @endif

            @if($user_role_id == 3)
            <a class="dropdown-item" href="/my-profile" class="btn-logout"><i class="fas fa-user"></i> My Profile </a>
            @else
            <a class="dropdown-item" href="/admin/system/users/profile/{{Auth::user()->id}}" class="btn-logout"><i class="fas fa-user"></i> My Profile </a>
            @endif
            @endif

            <a class="dropdown-item" href="{{ route('access.logout') }}" class="btn-logout"><i class="fas fa-sign-out-alt"></i> Logout</a>

          </div>
        </div>

        @else

        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">


          <a class="dropdown-item" href="/my-profile" class="btn-logout"><i class="fas fa-user"></i> My Profile</a>
          <a class="dropdown-item" href="{{ route('access.logout') }}" class="btn-logout"><i class="fas fa-sign-out-alt"></i> Logout</a>

        </div>
    </div>
    @endif
    @else

    <a href="/admin/login" class="btn btn-outline-dark px-3 sign-in-button mr-1" type="submit">Sign In</a>
    <a href="/create-account" class="btn btn-outline-dark px-3 sign-in-button ml-1" type="submit">Register</a>

    @endif

    </form>
    </div>
  </nav>


  {!! apply_filters(THEME_FRONT_BODY, null) !!}
  <div id="alert-container"></div>
  {{-- <div class="bravo_topbar d-none d-sm-block">
    <div class="container-fluid w90">
        <div class="row">
            <div class="col-12">
                <div class="content">
                    <div class="topbar-left">
                        @if (theme_option('social_links'))
                            <div class="top-socials">
                                @foreach(json_decode(theme_option('social_links'), true) as $socialLink)
                                    @if (count($socialLink) == 3)
                                        <a href="{{ $socialLink[2]['value'] }}"
  title="{{ $socialLink[0]['value'] }}">
  <i class="{{ $socialLink[1]['value'] }}"></i>
  </a>
  @endif
  @endforeach
  </div>
  <span class="line"></span>
  @endif
  <a href="mailto:{{ theme_option('email') }}">{{ theme_option('email') }}</a>
  </div>
  <div class="topbar-right">
    @if (is_plugin_active('real-estate'))
    <ul class="topbar-items">
      <li><a href="{{ route('public.wishlist') }}"><i class="fas fa-heart"></i> {{ __('Wishlist') }}(<span class="wishlist-count">0</span>)</a></li>
    </ul>
    @php $currencies = get_all_currencies(); @endphp
    @if (count($currencies) > 1)
    <div class="choose-currency">
      <span>{{ __('Currency') }}: </span>
      @foreach ($currencies as $currency)
      <a href="{{ route('public.change-currency', $currency->title) }}" @if (get_application_currency_id()==$currency->id) class="active" @endif><span>{{ $currency->title }}</span></a>&nbsp;
      @endforeach
    </div>
    <div class="header-deliver">/</div>
    @endif
    @endif
    {!! Theme::partial('language-switcher') !!}
    @if (is_plugin_active('real-estate') && RealEstateHelper::isRegisterEnabled())
    <ul class="topbar-items">
      @if (auth('account')->check())
      <li class="login-item"><a href="{{ route('public.account.dashboard') }}" rel="nofollow"><i class="fas fa-user"></i> <span>{{ auth('account')->user()->name }}</span></a></li>
      <li class="login-item"><a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" rel="nofollow"><i class="fas fa-sign-out-alt"></i> {{ __('Logout') }}</a></li>
      @else
      <li class="login-item">
        <a href="{{ route('public.account.login') }}"><i class="fas fa-sign-in-alt"></i> {{ __('Login') }}</a>
      </li>
      @endif
    </ul>
    @if (auth('account')->check())
    <form id="logout-form" action="{{ route('public.account.logout') }}" method="POST" style="display: none;">
      @csrf
    </form>
    @endif
    @endif
  </div>
  </div>
  </div>
  </div>
  </div>
  </div> --}}
  {{-- <header class="topmenu bg-light">

    @php
        $page = Theme::get('page');
    @endphp
    @if (is_plugin_active('real-estate') && url()->current() == route('public.single') || ($page && $page->template === 'homepage'))
        @php
            $categories = get_property_categories(['indent' => '↳', 'conditions' => ['status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED]]);
        @endphp

    @endif
</header>  --}}




  {{--
  <div @if (theme_option('enable_sticky_header', 'yes') == 'yes') id="header-waypoint" @endif class="main-header">
        <div class="container-fluid w90">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        @if (theme_option('logo'))
                            <a class="navbar-brand" href="{{ route('public.single') }}">
  <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" class="logo" height="40" alt="{{ theme_option('site_name') }}">
  </a>
  @endif
  <button class="navbar-toggler" type="button" data-toggle="collapse" id="header-waypoint" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="fas fa-bars"></span>
  </button>

  <div class="collapse navbar-collapse justify-content-end animation" id="navbarSupportedContent">
    <div class="main-menu-darken"></div>
    <div class="main-menu-content">
      <div class="d-lg-none bg-primary p-2">
        <span class="text-white">{{ __('Menu') }}</span>
        <span class="float-right toggle-main-menu-offcanvas text-white">
          <i class="far fa-times-circle"></i>
        </span>
      </div>
      <div class="main-menu-nav d-lg-flex">
        {!!
        Menu::renderMenuLocation('main-menu', [
        'options' => ['class' => 'navbar-nav justify-content-end menu menu--mobile'],
        'view' => 'main-menu',
        ])
        !!}
        @if (is_plugin_active('real-estate') && RealEstateHelper::isRegisterEnabled())
        <a class="btn btn-primary add-property" href="{{ route('public.account.properties.index') }}">
          <i class="fas fa-plus-circle"></i> {{ __('Add Property') }}
        </a>
        @endif

        <div class="d-sm-none">
          <div>
            @if (is_plugin_active('real-estate'))
            @php $currencies = get_all_currencies(); @endphp
            @if (count($currencies) > 1)
            <div class="choose-currency">
              <span>{{ __('Currency') }}: </span>
              @foreach ($currencies as $currency)
              <a href="{{ route('public.change-currency', $currency->title) }}" @if (get_application_currency_id()==$currency->id) class="active" @endif><span>{{ $currency->title }}</span></a>&nbsp;
              @endforeach
            </div>
            @endif
            @endif
            {!! Theme::partial('language-switcher') !!}
            @if (is_plugin_active('real-estate'))
            <ul class="topbar-items">
              @if (auth('account')->check())
              <li class="login-item"><a href="{{ route('public.account.dashboard') }}" rel="nofollow"><i class="fas fa-user"></i> <span>{{ auth('account')->user()->name }}</span></a></li>
              <li class="login-item"><a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" rel="nofollow"><i class="fas fa-sign-out-alt"></i> {{ __('Logout') }}</a></li>
              @else
              <li class="login-item">
                <a href="{{ route('public.account.login') }}"><i class="fas fa-sign-in-alt"></i> {{ __('Login') }}</a>
              </li>
              @endif
            </ul>
            @if (is_plugin_active('real-estate') && auth('account')->check())
            <form id="logout-form" action="{{ route('public.account.logout') }}" method="POST" style="display: none;">
              @csrf
            </form>
            @endif
            @endif
          </div>
        </div>
      </div>
    </div>

  </div>

  </nav>
  </div>
  </div>
  </div>
  </div>



  <!--2nd-->
  <div class="home_banner" style="background-image: url({{ theme_option('home_banner') ? RvMedia::getImageUrl(theme_option('home_banner')) : Theme::asset()->url('images/banner.jpg') }})">
    <div class="topsearch">
      @if (theme_option('home_banner_description'))<h1 class="text-center text-white mb-4 banner-text-description">{{ theme_option('home_banner_description') }}</h1>@endif
      <form @if (theme_option('enable_search_projects_on_homepage_search', 'yes' )=='yes' ) action="{{ route('public.projects') }}" @else action="{{ route('public.properties') }}" @endif method="GET" id="frmhomesearch">
        <div class="typesearch" id="hometypesearch">
          @if (theme_option('enable_search_projects_on_homepage_search', 'yes') == 'yes')
          <a href="javascript:void(0)" class="active" rel="project" data-url="{{ route('public.projects') }}">{{ __('Projects') }}</a>
          @endif
          <a href="javascript:void(0)" rel="sale" @if (theme_option('enable_search_projects_on_homepage_search', 'yes' ) !='yes' ) class="active" @endif data-url="{{ route('public.properties') }}">{{ __('Sale') }}</a>
          <a href="javascript:void(0)" rel="rent" data-url="{{ route('public.properties') }}">{{ __('Rent') }}</a>
        </div>
        <div class="input-group input-group-lg">

          <input type="hidden" name="type" @if (theme_option('enable_search_projects_on_homepage_search', 'yes' )=='yes' ) value="project" @else value="sale" @endif id="txttypesearch">

          <div class="input-group-prepend">
            <span class="input-group-text"><i class="far fa-search"></i></span>
          </div>
          <div class="keyword-input">
            <input type="text" class="form-control" name="k" placeholder="{{ __('Enter keyword...') }}" id="txtkey" autocomplete="off">
            <div class="spinner-icon">
              <i class="fas fa-spin fa-spinner"></i>
            </div>
          </div>
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="far fa-location"></i></span>
          </div>
          <div class="location-input" data-url="{{ route('public.ajax.cities') }}">
            <input type="hidden" name="city_id">
            <input class="select-city-state form-control" name="location" value="{{ request()->input('location') }}" placeholder="{{ __('City, State') }}" autocomplete="off">
            <div class="spinner-icon">
              <i class="fas fa-spin fa-spinner"></i>
            </div>
            <div class="suggestion">

            </div>
          </div>
          <div class="input-group-append search-button-wrapper">
            <button class="btn btn-orange" type="submit">{{ __('Search') }}</button>
          </div>

          <div class="advanced-search d-none d-sm-block">
            <a href="#" class="advanced-search-toggler">{{ __('Advanced') }} <i class="fas fa-caret-down"></i></a>
            <div class="advanced-search-content property-advanced-search">
              <div class="form-group">
                <div class="row">
                  <div class="col-md-3 col-sm-6 pr-md-1">
                    {!! Theme::partial('real-estate.filters.categories', compact('categories')) !!}
                  </div>
                  <div class="col-md-3 col-sm-6 px-md-1">
                    {!! Theme::partial('real-estate.filters.bedroom') !!}
                  </div>
                  <div class="col-md-3 col-sm-6 px-md-1">
                    {!! Theme::partial('real-estate.filters.bathroom') !!}
                  </div>
                  <div class="col-md-3 col-sm-6 pl-md-1">
                    {!! Theme::partial('real-estate.filters.floor') !!}
                  </div>
                </div>
              </div>
            </div>

            <div class="advanced-search-content project-advanced-search">
              <div class="form-group">
                <div class="row">
                  <div class="col-md-4">
                    {!! Theme::partial('real-estate.filters.categories', compact('categories')) !!}
                  </div>
                  <div class="col-md-8">
                    {!! Theme::partial('real-estate.filters.price') !!}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="listsuggest">

        </div>
      </form>
    </div>
  </div>
  </div>

  --}}

  <style>
    .owl-item .active {
      width: 400px !important;
    }

    .owl-item {
      width: 400px !important;
    }

    body {
      /*font-family: 'monteserrat', sans-serif !important;*/
      font-family: 'Montserrat', sans-serif;
    }


    #admin_bar {
      background-color: red !important;
    }

    /* @media (max-width: 768px) {
       .carousel-inner .carousel-item>div {
         display: none;
       }

       .carousel-inner .carousel-item>div:first-child {
         display: block;
       }
     }

     .carousel-inner .carousel-item.active,
     .carousel-inner .carousel-item-next,
     .carousel-inner .carousel-item-prev {
       display: flex;
     } */

    /* display 3 */
    /* @media (min-width: 768px) {

       .carousel-inner .carousel-item-right.active,
       .carousel-inner .carousel-item-next {
         transform: translateX(33.333%);
       }

       .carousel-inner .carousel-item-left.active,
       .carousel-inner .carousel-item-prev {
         transform: translateX(-33.333%);
       }
     }

     .carousel-inner .carousel-item-right,
     .carousel-inner .carousel-item-left {
       transform: translateX(0);
     } */


    @media (min-width: 768px) and (max-width: 991px) {

      /* Show 4th slide on md if col-md-4*/
      .carousel-inner .active.col-md-4.carousel-item+.carousel-item+.carousel-item+.carousel-item {
        position: absolute;
        top: 0;
        right: -33.3333%;
        /*change this with javascript in the future*/
        z-index: -1;
        display: block;
        visibility: visible;
      }
    }

    @media (min-width: 576px) and (max-width: 768px) {

      /* Show 3rd slide on sm if col-sm-6*/
      .carousel-inner .active.col-sm-6.carousel-item+.carousel-item+.carousel-item {
        position: absolute;
        top: 0;
        right: -50%;
        /*change this with javascript in the future*/
        z-index: -1;
        display: block;
        visibility: visible;
      }
    }

    @media (min-width: 576px) {
      .carousel-item {
        margin-right: 0;
      }

      /* show 2 items */
      .carousel-inner .active+.carousel-item {
        display: block;
      }

      .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left),
      .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left)+.carousel-item {
        transition: none;
      }

      .carousel-inner .carousel-item-next {
        position: relative;
        transform: translate3d(0, 0, 0);
      }

      /* left or forward direction */
      .active.carousel-item-left+.carousel-item-next.carousel-item-left,
      .carousel-item-next.carousel-item-left+.carousel-item,
      .carousel-item-next.carousel-item-left+.carousel-item+.carousel-item {
        position: relative;
        transform: translate3d(-100%, 0, 0);
        visibility: visible;
      }

      /* farthest right hidden item must be also positioned for animations */
      .carousel-inner .carousel-item-prev.carousel-item-right {
        position: absolute;
        top: 0;
        left: 0;
        z-index: -1;
        display: block;
        visibility: visible;
      }

      /* right or prev direction */
      .active.carousel-item-right+.carousel-item-prev.carousel-item-right,
      .carousel-item-prev.carousel-item-right+.carousel-item,
      .carousel-item-prev.carousel-item-right+.carousel-item+.carousel-item {
        position: relative;
        transform: translate3d(100%, 0, 0);
        visibility: visible;
        display: block;
        visibility: visible;
      }
    }

    /* MD */
    @media (min-width: 768px) {
      .custom-col-width {
        width: 33% !important;
      }

      /* show 3rd of 3 item slide */
      .carousel-inner .active+.carousel-item+.carousel-item {
        display: block;
      }

      .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left)+.carousel-item+.carousel-item {
        transition: none;
      }

      .carousel-inner .carousel-item-next {
        position: relative;
        transform: translate3d(0, 0, 0);
      }

      /* left or forward direction */
      .carousel-item-next.carousel-item-left+.carousel-item+.carousel-item+.carousel-item {
        position: relative;
        transform: translate3d(-100%, 0, 0);
        visibility: visible;
      }

      /* right or prev direction */
      .carousel-item-prev.carousel-item-right+.carousel-item+.carousel-item+.carousel-item {
        position: relative;
        transform: translate3d(100%, 0, 0);
        visibility: visible;
        display: block;
        visibility: visible;
      }
    }


    .area-input {
      width: 90%;
      margin-top: 2px;
    }

    .boxright {
      width: 320px;
      height: 200px;
      z-index: 1;
      background-color: white !important;
      margin-left: -70px !important;
    }

    .column {
      margin-top: -100px !important;
      z-index: 1;
      margin-left: -40px !important;
    }

    .features {
      border: 1px solid lightgrey;
      font-size: 24px;
      font-weight: bold;
      padding: 10px;
      margin-bottom: -8px;
      font-family: 'Montserrat', sans-serif !important;
      background-color: transparent;
      color: black;
    }

    .banner-margin {
      margin-left: 30px;
    }

    @media screen and (max-width: 480px) {

      .navbar-brand {
        margin-left: 0px !important;
      }


      .area-input {
        width: 98%;
        margin-left: 3px !important;
        margin-right: 18px !important;
      }

      .input {
        width: 100% !important;
        margin-bottom: 5px;
        margin-left: 0px !important;
      }

      .input1 {
        margin-right: 8px !important;
        width: 100% !important;
        margin-bottom: 5px;
      }

      .button {
        margin-top: 10px;
        width: 100% !important;
        margin-left: -25px !important;
      }

      .icon1 {
        margin-left: 0px !important;
      }

      .boxright {
        width: 320px;
        height: 250px;
        z-index: 1;
        background-color: white !important;
        padding-bottom: 40px !important;
      }

      .column {
        margin-top: 0px !important;
        z-index: 1;
        margin-left: 30px !important;

      }

      .features {
        margin-left: -5px;
        width: 100%;
      }

      .table {
        width: 100%;
        margin-left: -5px !important;
      }

      .banner-margin {
        margin-left: 0px;
      }

    }
  </style>


  <script>
    $(document).ready(function() {

      //       jQuery("#myInput").on("keyup", function() {
      //     var value = $(this).val().toLowerCase();
      //     jQuery("#myDiv *").filter(function() {
      //       $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
      //     });
      //   });


      $(".cards .card").filter(function(i, el) {
        const $card = $(el);
        $card.toggle($card.text().toLowerCase().indexOf(value) > -1)
      });
    });

    //  $('#recipeCarousel').carousel({
    //    interval: 8000
    //  });


    $('#carousel-example').on('slide.bs.carousel', function(e) {
      /*
          CC 2.0 License Iatek LLC 2018 - Attribution required
      */
      var $e = $(e.relatedTarget);
      var idx = $e.index();
      var itemsPerSlide = 2;
      var totalItems = $('.carousel-item').length;

      if (idx >= totalItems - (itemsPerSlide - 1)) {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i = 0; i < it; i++) {
          // append slides to end
          if (e.direction == "left") {
            $('.carousel-item').eq(i).appendTo('.carousel-inner');
          } else {
            $('.carousel-item').eq(0).appendTo('.carousel-inner');
          }
        }
      }
    });

    //  $('#recipeCarousel1').carousel({
    //    interval: 8000
    //  });

    //  $('.carousel .carousel-item').each(function() {

    //    var minPerSlide = 3;
    //    var next = $(this).next();
    //    if (!next.length) {
    //      next = $(this).siblings(':first');
    //    }
    //    next.children(':first-child').clone().appendTo($(this));

    //    for (var i = 0; i < minPerSlide; i++) {
    //      next = next.next();
    //      if (!next.length) {
    //        next = $(this).siblings(':first');
    //      }

    //      next.children(':first-child').clone().appendTo($(this));
    //    }
    //  });
  </script>