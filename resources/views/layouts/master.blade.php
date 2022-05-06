<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Apni CSS file -->
  <link rel="stylesheet" href="/css/index.css">
  <link rel="shortcut icon" href="/storage/makanumber-icon.png" type="image/x-icon">

  <!-- Apni JS -->
  <script src="index.js"></script>
  <script src="jquery-3.5.1.min.js"></script>

  <!-- Bootstrap  -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

  <!-- Font Aweosme CDN -->
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script> -->
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" /> -->

  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css" />
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <title>@yield('title')</title>

</head>

<style>
  .main-content {
    min-height: calc(100vh - 60px);
  }


  .sign-in-button {
    font-weight: 700 !important;
  }

  .sign-in-button:hover {
    color: white !important;
    background-color: #00b4a2 !important;
  }

  .green1 {
    border: 1px solid #00b4a2 !important;
  }

  @media screen and (max-width: 480px) {
    html {
      overflow-x: hidden !important;
    }


    .searchBtn {
      margin-left: 30px !important;
    }

    .search_form {
      transform: none !important;
      margin-bottom: 120px !important;
    }

    .searchBtn button {
      width: 106% !important;
      margin-left: -25px !important;
    }

    .navbar-brand img {
      height: 35px !important;
      margin-left: -45px !important;
    }

    .bredcrumb {
      margin: 0px 20px !important;
    }

    .properties h3 {
      margin: 0px 20px !important;
      /* text-align: center !important; */
    }

    .properties .item {
      margin: 0px 20px !important;
    }

    .about_logo {
      /* margin: 0px 25px !important; */
      display: block;
      margin-left: auto;
      margin-right: auto;
      width: 50%;
    }

    .center {
      display: block;
      margin-left: auto;
      margin-right: auto;
      width: 50%;
    }

    .contact-us {
      margin-left: 20px !important;
      margin-bottom: 20px !important;
    }

    .contact-us img {
      width: 100% !important;
    }

  }

  .video_opacity {
    position: absolute;
    height: 70vw;
    margin-top: 0px;
  }
</style>

<body style="overflow-x: hidden;">

  <!-- Navbar -->

  <div style="margin-top: 40px;"></div>
  <div class="main-content">
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="font-weight:bold ; margin-top:-40px;font-family: 'Montserrat', sans-serif !important;">
      <a class="navbar-brand ml-5" href="/">
        <img src="/frontend-images/logo.png" alt="logo-img" style="height:45px" />
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
        <ul class="navbar-nav ml-auto mt-2 mt-lg-0 ">
          <li class="nav-item active mt-1" style="border:none !important;">
            <a class="nav-link mr-4 hoverEffect" href="/"><span class="nt-1" style="padding-top:4px;">H</span>ome</a>
          </li>
          <div class="dropdown">
            <li class="nav-item active mt-1  " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important; ">
              <a class="nav-link mr-4 hoverEffect" href="#"><span class="nt-1" style="padding-top:4px;">B</span>uy <span class="sr-only">(current)</span></a>
            </li>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

              <h5 class="mx-2">Residential</h5>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=1">Apartment</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=2">Villa</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=6">Townhouse</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=3">Residential
                Plot</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=7">Residential
                Building</a>

              <hr>

              <h5 class="mx-2">Commercial</h5>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=8">Office</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=9">Warehouse</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=10">Shop</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=4">Industrial
                Land</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=11">Showroom</a>
              <a class="dropdown-item" href="/search-propeties?purpose=selling&propertyType=5">Commercial
                Plot </a>

            </div>
          </div>

          <div class="dropdown">
            <li class="nav-item active mt-1  " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
              <a class="nav-link mr-4 hoverEffect" href="#"><span class="nt-1" style="padding-top:4px;">R</span>ent</a>
            </li>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <h5 class="mx-2">Residential</h5>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=1">Apartment</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=2">Villa</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=6">Townhouse</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=3">Residential
                Plot</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=7">Residential
                Building</a>

              <hr>

              <h5 class="mx-2">Commercial</h5>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=8">Office</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=9">Warehouse</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=10">Shop</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=4">Industrial
                Land</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=11">Showroom</a>
              <a class="dropdown-item" href="/search-propeties?purpose=renting&propertyType=5">Commercial
                Plot </a>
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
        </div> --}}

          <div class="dropdown">
            <li class="nav-item active hoverEffect" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
              <span class="nav-link" style="padding-top:12px;" href="#"><span class="pr-1">More</span><span class="fa fa-bars  " style="margin-bottom:-10px !important; font-size:18px; "></span></span>
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
          <li class="nav-item mt-1 ">
            <a href="/add-property"><button class="btn btn-default" style="border:1px solid #D3D3D3;">Add
                Property</button></a>
          </li>
          @endif

        </ul>
        <form class="form-inline my-2 my-lg-0  mr-5">
          @if (Auth::user())
          @if (Auth::user()->avatar_id)
          <li class="nav-item ml-2 mr-0" style="list-style:none !important;">
            <img src="{{ asset('public/storage/users/' . Auth::user()->avatar_id) }}" style="width:30px; height:30px; border-radius:50%; border:1px solid;" />
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
            @if (Auth::user()->super_user == 1 || Auth::user()->super_user == 0)
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

              <?php
              $user_id = Auth::user()->id;
              $user_role_id = DB::table('role_users')
                ->where('user_id', '=', $user_id)
                ->value('role_id');
              ?>


              @if ($user_role_id != 3)
              <a class="dropdown-item" href="/admin"> Dashboard</a>
              @endif

              @if ($user_role_id == 3)
              <a class="dropdown-item" href="/my-profile" class="btn-logout"><i class="fas fa-user"></i> My Profile </a>
              @else
              <a class="dropdown-item" href="/admin/system/users/profile/{{ Auth::user()->id }}" class="btn-logout"><i class="fas fa-user"></i> My Profile </a>
              @endif

              <a class="dropdown-item" href="{{ route('access.logout') }}" class="btn-logout"><i class="fas fa-sign-out-alt"></i> Logout</a>

            </div>
          </div>
          @else
          <div class="dropdown-menu  mr-5" aria-labelledby="dropdownMenuButton">


            <a class="dropdown-item" href="/my-profile" class="btn-logout"><i class="fas fa-user"></i> My Profile</a>
            <a class="dropdown-item" href="{{ route('access.logout') }}" class="btn-logout"><i class="fas fa-sign-out-alt"></i> Logout</a>

          </div>
      </div>
      @endif
      @else
      <a href="/admin/login" class="btn btn-outline-dark px-3 sign-in-button mr-1 " type="submit">Sign In</a>
      <a href="/create-account" class="btn btn-outline-dark px-3 sign-in-button ml-1  mr-3" type="submit">Register</a>

      @endif

      </form>
  </div>
  </nav>


  <!-- End Navbar -->

  @yield('content')
  </div>
  <!--FOOTER-->

  <div class="container-fluid" style="background-color:#F6F6F6;">
    <div class="row  pt-5 pb-5">

      <div class="footer_coloumn footer_coloumn_1 col-sm-3 ml-5 text-justify  ">
        <a href="/">
          <img src="/frontend-images/logo.png" alt="footer-img" style="width:290px; height:50px;" class="footer-img">
        </a>
        <p style="font-size:13px;" class="mt-3 foot-descip">Buying, Selling, Renting a property is an uphill battle but do not stress it, we have got your back. Whether you are planning to buy, sell or rent, we can help you move forward, to experience the most unprecedented services along with enormous numbers of options according to your choice and preference because home is not just a place. IT’S A FEELING!</p>
        <div class="row social-icons">
          <div class="social-icon  ml-2 text-center"> <i class="fab fa-facebook-f p-1"></i></div>
          <div class="social-icon  ml-2 text-center"> <i class="fab fa-twitter p-1"></i></div>
          <div class="social-icon  ml-2 text-center"> <i class="fab fa-youtube p-1"></i></div>
        </div>
      </div>

      <div class="footer_coloumn footer_coloumn_2   col-sm-2 padding ml-5">
        <h5 style="font-weight:bolder; ">Company</h5>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            <a href="/about-us" style=" color:black !important;">About</a>
          </li>

          <li class="li pb-3">
            <a href="/customer-service" style=" color:black !important;">Contact Us</a>
          </li>

          <li class="li pb-3">
            <a href="/news" style=" color:black !important;">Blog</a>
          </li>

          <li class="li pb-3">
            <a href="/customer-service" style=" color:black !important;">Advertise with us</a>
          </li>
        </ul>
      </div>

      <div class="footer_coloumn footer_coloumn_3   col-sm-2  padding ">
        <h5 style="font-weight:bolder; ">Buy</h5>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            <a href="/search-propeties?purpose=selling&propertyType=1" style=" color:black !important;">Apartments</a>
          </li>

          <li class="li pb-3">
            <a href="/search-propeties?purpose=selling&propertyType=2" style=" color:black !important;">Villas</a>
          </li>

          <li class="li pb-3">
            <a href="/search-propeties?purpose=selling&propertyType=8">Offices</a>
          </li>

          <li class="li pb-3">
            <a href="/search-propeties?purpose=selling&propertyType=4" style=" color:black !important;">Lands</a>
          </li>
        </ul>
      </div>

      <div class="footer_coloumn footer_coloumn_4  col-sm-2  padding   ">
        <h5 style="font-weight:bolder; ">Rent</h5>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            <a href="/search-propeties?purpose=renting&propertyType=1" style=" color:black !important;">Apartments</a>
          </li>

          <li class="li pb-3">
            <a href="/search-propeties?purpose=renting&propertyType=2" style=" color:black !important;">Villas</a>
          </li>

          <li class="li pb-3">
            <a href="/search-propeties?purpose=renting&propertyType=8">Offices</a>
          </li>

          <li class="li pb-3">
            <a href="/search-propeties?purpose=renting&propertyType=4" style=" color:black !important;">Lands</a>
          </li>
        </ul>
      </div>

      <div class="footer_coloumn footer_coloumn_5 col-sm-2  padding  ">
        <h5 style="font-weight:bolder; ">Head Office</h5>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            Office#313, Marina Plaza,Dubai Marina, Dubai, U.A.E
          </li>

          <li class="li pb-3">
            <a>0800-MAKAN(0000)</a>
          </li>

          <li class="li pb-3">
            <a href="mailto:info@makanumber.com">info@makanumber.com</a>
          </li>
        </ul>
      </div>
    </div>

    <div class="row pl-5 pr-5 " style="background-color:#f9f9f9;">
      <div class="col-sm-8 pt-2 pb-2" style="border-top: 1px solid gray;">
        &#169; 2022 All Rights Reserved | Designed & Developed by
        <a href="https://octopusdigitalnetwork.com/" style="color: #00B4A2 !important; text-decoration: underline;">
          Octopus Digital Network.
        </a>
      </div>

      <div class="col-sm-4 pt-2 pb-2 display" style="border-top:1px solid black; text-align:right !important; float:right;">
        <a style="text-decoration: underline; color:black;" href="/privacy-policy">Terms of use.</a>
        <a style="text-decoration: underline; color:black;" href="/privacy-policy"> Privacy policy</a>
      </div>
    </div>
  </div>


</body>


<script>
  $(document).ready(function() {
    $("#grid").click(function() {
      $('.list').show();
      $('.grid').hide();
      $('#grid').css({
        'color': 'white',
        'border-radius': '5px',
        'background-color': '#00B4A2'
      });
      $('#list').css({
        'color': 'black',
        'border-radius': '5px',
        'background-color': '#ffffff'
      });
    });

    $("#list").click(function() {
      $('.list').hide();
      $('.grid').show();
      $('#grid').css({
        'color': 'black',
        'border-radius': '5px',
        'background-color': '#ffffff'
      });
      $('#list').css({
        'color': 'white',
        'border-radius': '5px',
        'background-color': '#00B4A2'
      });
    });

    $('.items').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
    });
  });
</script>

</html>