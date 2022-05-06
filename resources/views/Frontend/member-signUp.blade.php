<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Apni CSS file -->
  <link rel="stylesheet" href="index.css">

  <!-- Apni JS -->

  <script src="index.js"></script>

  <script src="jquery-3.5.1.min.js"></script>

  <!-- Bootstrap  -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

  <!-- Font Aweosme CDN -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css" />
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <title>Member Sign Up</title>
</head>

<body>
  <!-- Navbar -->
  @if(Auth::user())
  <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-top:-40px;">
    <a class="navbar-brand ml-5" href="/">
      <img src="/frontend-images/logo.png" alt="logo-img" style="width:110px; height:30px;" />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item active " style="border:none !important;">
          <a class="nav-link mr-4" href="#"><span class="nt-1">B</span>uy <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active" style="border:none !important;">
          <a class="nav-link mr-4" href="/about-us"><span class="nt-1">R</span>ent</a>
        </li>
        {{-- <div class="dropdown">
        <li class="nav-item active" data-toggle="dropdown" >
          <span class="nav-link " href="#">More <span class="navbar-toggler-icon my-toggler" style="margin-left:-2px; font-size:20px;"></span></span>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="/about-us">About Us</a>
            <a class="dropdown-item" href="/blogs">Blog</a>
            <a class="dropdown-item" href="/customer-service">Customer Service</a>
            <a class="dropdown-item" href="/privacy-policy">Privacy Policy</a>
          </div>
        </li>
      </div>  --}}

        <div class="dropdown">
          <li class="nav-item active" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <span class="nav-link " href="#">More <span class="navbar-toggler-icon my-toggler" style="margin-left:-2px; font-size:20px;"></span></span>
          </li>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="/about-us">About Us</a>
            <a class="dropdown-item" href="/blogs">Blog</a>
            <a class="dropdown-item" href="/customer-service">Customer Service</a>
            <a class="dropdown-item" href="/privacy-policy">Privacy Policy</a>
          </div>
        </div>


        <li class="nav-item mt-2 active">

        </li>

        <li class="nav-item mt-2 ml-5 active" style="border:none !important;">
          <span class="mr-5">
            <img class="flag" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/320px-Flag_of_Pakistan.svg.png" />
            <img class="flag " style="background-color: orange;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/255px-Flag_of_the_United_Arab_Emirates.svg.png" />
          </span>

        </li>

      </ul>
      <form class="form-inline my-2 my-lg-0">
        @if (Auth::user())
        <div class="dropdown">
          <li class="nav-item active" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <span class="nav-link " href="#">{{ Auth::user()->name }} <i class="fa fa-angle-down"></i></span>
          </li>
          @if((Auth::user()->super_user==1) || (Auth::user()->super_user==0))
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

            <a class="dropdown-item" href="/admin"> Dashboard</a>

            <a class="dropdown-item" href="/admin/system/users/profile/{{Auth::user()->id}}" class="btn-logout"><i class="fas fa-user"></i> My Profile </a>
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
    <a href="/admin/login" class="btn btn-outline-dark px-3 sign-in-button" type="submit">Sign In</a>

    @endif

    </form>
    </div>
  </nav>

  @else
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand ml-5" href="/">
      <img src="/frontend-images/logo.png" alt="logo-img" style="width:110px; height:30px;" />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item active " style="border:none !important;">
          <a class="nav-link mr-4" href="#"><span class="nt-1">B</span>uy <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active" style="border:none !important;">
          <a class="nav-link mr-4" href="/about-us"><span class="nt-1">R</span>ent</a>
        </li>
        {{-- <div class="dropdown">
        <li class="nav-item active" data-toggle="dropdown" >
          <span class="nav-link " href="#">More <span class="navbar-toggler-icon my-toggler" style="margin-left:-2px; font-size:20px;"></span></span>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="/about-us">About Us</a>
            <a class="dropdown-item" href="/blogs">Blog</a>
            <a class="dropdown-item" href="/customer-service">Customer Service</a>
            <a class="dropdown-item" href="/privacy-policy">Privacy Policy</a>
          </div>
        </li>
      </div>  --}}

        <div class="dropdown">
          <li class="nav-item active" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <span class="nav-link " href="#">More <span class="navbar-toggler-icon my-toggler" style="margin-left:-2px; font-size:20px;"></span></span>
          </li>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="/about-us">About Us</a>
            <a class="dropdown-item" href="/blogs">Blog</a>
            <a class="dropdown-item" href="/customer-service">Customer Service</a>
            <a class="dropdown-item" href="/privacy-policy">Privacy Policy</a>
          </div>
        </div>


        <li class="nav-item mt-2 active">

        </li>

        <li class="nav-item mt-2 ml-5 active" style="border:none !important;">
          <span class="mr-5">
            <img class="flag" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/320px-Flag_of_Pakistan.svg.png" />
            <img class="flag " style="background-color: orange;" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/255px-Flag_of_the_United_Arab_Emirates.svg.png" />
          </span>

        </li>

      </ul>
      <form class="form-inline my-2 my-lg-0">
        @if (Auth::user())
        <div class="dropdown">
          <li class="nav-item active" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border:none !important;">
            <span class="nav-link " href="#">{{ Auth::user()->name }} <i class="fa fa-angle-down"></i></span>
          </li>
          @if((Auth::user()->super_user==1) || (Auth::user()->super_user==0))
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

            <a class="dropdown-item" href="/admin"> Dashboard</a>

            <a class="dropdown-item" href="/admin/system/users/profile/{{Auth::user()->id}}" class="btn-logout"><i class="fas fa-user"></i> My Profile </a>
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
    <a href="/admin/login" class="btn btn-outline-dark px-3 sign-in-button" type="submit">Sign In</a>

    @endif

    </form>
    </div>
  </nav>
  @endif

  <!-- End Navbar -->

  <!-- Sign Up -->
  <!-- <section class="container-fluid">
    <section class="row justify-content-center mb-5" style="margin-top: 5%;">
        <section class="col-6 ">

            <H3 style="font-family: Montserrat-Bold; font-size: 24px;">CREATE AN ACCOUNT</H3>
            <form class="form-container">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="example@mail.com">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Remember me</label>
                  <span> <a href="#" style=" text-decoration: underline dashed;  float: right;">Forgot password?</a></span>
                </div>
                <button type="submit" style=" border: 1px rgb(0,180,162); border-radius: 5px; ; background: rgb(0,180,162);" class="btn btn-primary btn-block">Sign in</button><br>
                <button type="submit" style=" border: 1px solid #D3D3D3;" class="btn btn-light btn-block" >Create an account</button>

              </form>

        </section>
       
    </section>
</section> -->
  <section class="container-fluid">
    <section class="row justify-content-center mb-5" style="margin-top: 5%;">
      <section class="col-6 ">
        <H3>CREATE AN ACCOUNT</H3>
        <form method="post" action="/sign-up">
          @csrf
          <label> Type </label><br>


          <button onclick="document.location='default.asp'" id="ag_mem" style="color: #8695A1;">Member</button>
          <button onclick="document.location='default.asp'" id="ag_mem" style="color: #8695A1;">Agency</button>
          <div class="form-group">
            <label for="exampleInputEmail1">Email</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="content">
          </div>
          <section class="row justify-content-center">
            <section class="col-6 ">
              <div class="form-group">
                <label for="phone">Phone (optional)</label>
                <input type="tel" class="form-control" id="phone" name="phone" placeholder="content">
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group">
                <label for="exampleInputEmail1">Name</label>
                <input type="text" name="name" class="form-control" placeholder="content">

              </div>
            </section>
          </section>
          <section class="row justify-content-center mb-5">
            <section class="col-6 ">
              <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control " name="password" required placeholder="content">
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group">
                <label>Confirm Password</label>
                <input type="password" class="form-control" name="confirm_password" placeholder="content">
              </div>
            </section>
          </section>

          <div class="form-group form-check">
            <input type="checkbox" class="form-check-input is-invalid" value="" id="exampleCheck1">
            <label class="form-check-label" style="color: #686868;">
              I agree to Makanumber <a href="#" style="color: #0088E2;">privacy policy</a> and <a href="#" style="color: #0088E2;">terms of use</a></label>
          </div>
          <button type="submit" style=" border: 1px rgb(0,180,162); border-radius: 5px; ; background: rgb(0,180,162);" class="btn btn-primary btn-lg">Sign up</button><br>

          <span>Alrady have an account?</span><a href="#"> Sign in</a>
          <!-- <button type="submit" style=" border: 1px solid #D3D3D3;" class="btn btn-light btn-block" >Create an account</button> -->

        </form>

      </section>


    </section>
  </section>

  <!-- Sign up end -->






  <!-- Footer -->
  <div class="conatiner ml-5 mr-5">
    <div class="row footer pt-5 pb-5">

      <div class="col-sm-3 ml-5">
        <div class="row ">
          <img src="data:image/png;base64,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" class="footer-img">
          <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab ullam nostrum cupiditate fugit at quibusdam nemo consequuntur architecto velit enim.</p>
        </div>
        <div class="row">

          <i class="fa fa-instagram social-icon ml-2"></i>
          <i class="fa fa-twitter social-icon ml-2"></i>
          <i class="fa fa-youtube social-icon ml-2"></i>
        </div>
      </div>

      <div class="col-sm-2">
        <h4>Company</h4>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            <a>About</a>
          </li>

          <li class="li pb-3">
            <a>Contact Us</a>
          </li>

          <li class="li pb-3">
            <a>Blog</a>
          </li>

          <li class="li pb-3">
            <a>Advertise with us</a>
          </li>
        </ul>
      </div>

      <div class="col-sm-2">
        <h4>Buy</h4>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            <a>Apartments</a>
          </li>

          <li class="li pb-3">
            <a>Houses</a>
          </li>

          <li class="li pb-3">
            <a>Offices</a>
          </li>

          <li class="li pb-3">
            <a>Lands</a>
          </li>
        </ul>
      </div>

      <div class="col-sm-2">
        <h4>Rent</h4>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            <a>Apartments</a>
          </li>

          <li class="li pb-3">
            <a>Houses</a>
          </li>

          <li class="li pb-3">
            <a>Offices</a>
          </li>

          <li class="li pb-3">
            <a>Lands</a>
          </li>
        </ul>
      </div>

      <div class="col-sm-2">
        <h4>Head Office</h4>
        <hr class="green1 pl-2 pr-2" />
        <ul class="ul">
          <li class="li pb-3">
            Office#321, Marina Plaza, Dubai, Duabi U.A.E
          </li>


          <li class="li pb-3">
            <a>0900-78601</a>
          </li>

          <li class="li pb-3">
            <a>info@something</a>
          </li>
        </ul>
      </div>
    </div>



    <div class="row pl-5 footer1 footer-border  ">
      <div class="col-sm-8 pt-2 pb-2" style="border-top: 1px solid gray;">
        &#169; 2022 All Rights Reserved | Designed & Developed by Octopus Digital Network.
      </div>

      <div class="col-sm-3 pt-2 pb-2 " style="border-top:1px solid black;">
        <a style="text-decoration: underline;">Terms of use. Privacy policy</a>
      </div>

    </div>


  </div>


</body>


<script>
  $(document).ready(function() {

    $('.items').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
    });
  });
</script>

</html>