@extends('layouts.master')


@section('title', 'Home | Makanumber')

@section('content')

<!-- Slider Image Section -->
<div class="container-fluid" style="padding:0px !important; width:100%;">
  <div class="row slider">
    <div class="col-sm-4 text-section mt-2">
      <h6 class="ml-5">Makanumber</h6>
      <h1 class="ml-5">WE FIND YOU</h1>
      <h1 style="color:orange;" class="ml-5">MAKAN</h1>
      <br>
      <p class="ml-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusantium, recusandae!</p>
    </div>
    <div class="col-sm-8 img-section" style="height: 70vw;">
      <img src="https://images.unsplash.com/photo-1599809275671-b5942cabc7a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVhbCUyMGVzdGF0ZXxlbnwwfHwwfHw%3D&w=1000&q=80" />
    </div>
  </div>

</div>
<!-- End Slider Image Section -->

<div class="container-fluid" style="padding-left:0px !important;">

  <div class="row ">
    <div class="col-sm-10 ">

      <div class="row search-engine no-gutters">

        <div class="col-sm-4 ml-5">
          <div class="form-group has-search">
            <span class="fa fa-search form-control-feedback"></span>
            <input type="search" name="search" placeholder="Looking for Property?" class="search-input" />
          </div>
        </div>

        <div class="col-sm-2">
          <select class="input">
            <option>House</option>
            <option>Shop</option>
          </select>
        </div>

        <div class="col-sm-2">
          <select class="input">
            <option>Rent</option>
            <option>Sale</option>
          </select>
        </div>

        <div class="col-sm-3">
          <button class="btn btn-success search-btn">Start search</button>
        </div>
      </div>



      <div class="col-sm-2">

      </div>

    </div>

  </div>
  <!-- Search Engine End -->

  <!-- Our Neighboorhoods Section -->
  <div class="container-fluid mt-5 text-center">
    <h2>Explore o<span class="b-top">ur neigh</span>borhoods</h2>
  </div>

  <div class="container-fluid mt-5 ">
    <div class="row mx-5">

      <div class="col-sm-4">
        <div>
          <img src="https://arcdn.bayut.com/area-guides/wp-content/uploads/2018/10/Palm-Jumeirah-cover-20200409.jpg" class="neighborhood-img" />

          <p class="description">Palm Jumeriah
            <br />
            <span class="descrip">243 properties</span>
          </p>

        </div>
      </div>

      <div class="col-sm-4">
        <div>
          <img src="https://www.planetware.com/wpimages/2020/11/united-arab-emirates-abu-dhabi-to-dubai-best-ways-to-get-there-by-car.jpg" class="neighborhood-img" />
          <p class="description">Abu Dhabi
            <br>
            <span class="descrip">90 Properties</span>
          </p>
        </div>
      </div>

      <div class="col-sm-4">
        <div>
          <img src="https://www.suchtv.pk/media/k2/items/cache/312ec15d90b2fb3de2953f184211529c_XL.jpg" class="neighborhood-img" />
          <p class="description">
            Sharjah
            <br />
            <span class="descrip">100 Properties</span>
            <br />
          </p>
        </div>
      </div>

    </div>
  </div>


  <div class="container-fluid mt-4">
    <div class="row mx-5">
      <div class="col-sm-4">
        <div>
          <img src="https://www.propertyfinder.ae/blog/wp-content/uploads/2019/11/Ajman.png" class="neighborhood-img" />
          <p class="description">
            Ajman
            <br />
            <span class="descrip">100 Properties</span>
            <br />
          </p>
        </div>
      </div>

      <div class="col-sm-8">
        <div>
          <img src="https://cdn.pmnewsnigeria.com/2019/04/united_arab_emirates.jpg" class="neighborhood-img" />
          <p class="description1">
            Dubai
            <br />
            <span class="descrip">130 Properties</span>
            <br />
          </p>

        </div>
      </div>
    </div>

  </div>

  <div class="container-fluid mt-4">
    <div class="row mx-5">
      <div class="col-sm-8">
        <div>
          <img src="https://www.planetware.com/wpimages/2020/11/united-arab-emirates-abu-dhabi-to-dubai-best-ways-to-get-there-by-car.jpg" class="neighborhood-img" />
          <p class="description1">
            Abu Dhabi
            <br />
            <span class="descrip">160 Properties</span>
            <br />
          </p>
        </div>
      </div>

      <div class="col-sm-4">
        <div>
          <img src="https://cdn.pmnewsnigeria.com/2019/04/united_arab_emirates.jpg" class="neighborhood-img" />
          <p class="description">
            Ras Al-khaimah
            <br />
            <span class="descrip">80 Properties</span>
            <br />
          </p>

        </div>
      </div>
    </div>

  </div>
  <!-- End Our Neighboorhood Section -->


  <!-- Featured Listings -->
  <div class="conatiner features mt-5 pb-5">
    <div class="text-center mb-5 ">
      <h2>Discover o<span class="b-top">ur Featu</span>red Listenings</h2>
    </div>

    <div class="items">
      <div class="item">
        <span class="premium float-right pl-4">Premium</span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Channel_1_Israel_DSC0021.jpg/1200px-Channel_1_Israel_DSC0021.jpg">
        <div class="row pl-3 pt-2">
          <div class="col-sm-7">
            <p>2545 Meldow eye</p>
          </div>
          <div class="col-sm-4">
            <p class="descrip">AED 300,000</p>
          </div>
        </div>

        <div class="row pl-3">
          <div class="col-sm">
            <span class="address">477, Abu Dhabi </span>
          </div>
        </div>

        <div class="row pl-2">
          <div class="col-sm px-4">
            <hr class="green" />
          </div>
        </div>

        <div class="row pl-2 pb-2" style="color:grey">
          <div class="col-sm">
            <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
            &nbsp;
            <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
          </div>
        </div>

      </div>


      <div class="item">
        <span class="premium float-right pl-4">Premium</span>
        <img src="https://cdn.shopify.com/s/files/1/2717/4124/products/LittleBigRooms_press_pp026-027_2000x.jpg?v=1528910740">
        <div class="row pl-3 pt-2">
          <div class="col-sm-7">
            <p>2545 Meldow eye</p>
          </div>
          <div class="col-sm-4">
            <p class="descrip">AED 300,000</p>
          </div>
        </div>

        <div class="row pl-3">
          <div class="col-sm">
            <span class="address">477, sheikh zahid road U.A.E </span>
          </div>
        </div>

        <div class="row pl-2">
          <div class="col-sm px-4">
            <hr class="green" />
          </div>
        </div>

        <div class="row pl-2 pb-2" style="color:grey">
          <div class="col-sm">
            <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
            &nbsp;
            <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
          </div>
        </div>

      </div>


      <div class="item">
        <span class="premium float-right pl-4">Premium</span>
        <img src="https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG91c2V8ZW58MHx8MHx8&w=1000&q=80">
        <div class="row pl-3 pt-2">
          <div class="col-sm-7">
            <p>2545 Meldow eye</p>
          </div>
          <div class="col-sm-4">
            <p class="descrip">AED 300,000</p>
          </div>
        </div>

        <div class="row pl-3">
          <div class="col-sm">
            <span class="address">477, street and road UAE </span>
          </div>
        </div>

        <div class="row pl-2">
          <div class="col-sm px-4">
            <hr class="green" />
          </div>
        </div>

        <div class="row pl-2 pb-2" style="color:grey">
          <div class="col-sm">
            <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
            &nbsp;
            <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
          </div>
        </div>

      </div>


      <div class="item">
        <span class="premium float-right pl-4">Premium</span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Channel_1_Israel_DSC0021.jpg/1200px-Channel_1_Israel_DSC0021.jpg">
        <div class="row pl-3 pt-2">
          <div class="col-sm">
            <p>2545 Meldow eye</p>
          </div>
          <div class="col-sm">
            <p class="descrip">AED 300,000</p>
          </div>
        </div>

        <div class="row pl-3">
          <div class="col-sm">
            <span class="address">477, Sharjah </span>
          </div>
        </div>

        <div class="row pl-2">
          <div class="col-sm px-4">
            <hr class="green" />
          </div>
        </div>

        <div class="row pl-2 pb-2" style="color:grey">
          <div class="col-sm">
            <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
            &nbsp;
            <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
          </div>
        </div>

      </div>


      <div class="item">
        <span class="premium float-right pl-4">Premium</span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Channel_1_Israel_DSC0021.jpg/1200px-Channel_1_Israel_DSC0021.jpg">
        <div class="row pl-3 pt-2">
          <div class="col-sm">
            <p>2545 Meldow eye</p>
          </div>
          <div class="col-sm">
            <p class="descrip">AED 300,000</p>
          </div>
        </div>

        <div class="row pl-3">
          <div class="col-sm">
            <span class="address">477, Stadium Road U.A.E</span>
          </div>
        </div>

        <div class="row pl-2">
          <div class="col-sm px-4">
            <hr class="green" />
          </div>
        </div>

        <div class="row pl-2 pb-2" style="color:grey">
          <div class="col-sm">
            <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
            &nbsp;
            <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
          </div>
        </div>

      </div>
    </div>

  </div>



  <!--  -->
  <!-- End Featured Listings -->

  <!-- 2nd Features -->
  <div class="conatiner mt-5 pb-5">
    <div class="text-center mb-5 ">
      <h2>Discov<span class="b-top">er New P</span>rojects</h2>
    </div>

    <div class="items">

      <div class="item">
        <span class="premium1 float-right pl-4">New</span>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Channel_1_Israel_DSC0021.jpg/1200px-Channel_1_Israel_DSC0021.jpg">
        <div class="descriptions">
          <div class="row pl-3 pt-2">
            <div class="col-sm-7">
              <p>2545 Meldow eye</p>
            </div>
            <div class="col-sm-4">
              <p class="descrip">AED 300,000</p>
            </div>
          </div>

          <div class="row pl-3">
            <div class="col-sm">
              <span class="address">477, stadium Road UAE </span>
            </div>
          </div>

          <div class="row pl-2">
            <div class="col-sm px-4">
              <hr class="green" />
            </div>
          </div>

          <div class="row pl-2 pb-2" style="color:grey">
            <div class="col-sm">
              <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
              &nbsp;
              <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
            </div>
          </div>
        </div>
      </div>


      <div class="item">
        <span class="premium1 float-right pl-4">New</span>
        <img src="https://cdn.shopify.com/s/files/1/2717/4124/products/LittleBigRooms_press_pp026-027_2000x.jpg?v=1528910740">
        <div class="descriptions">
          <div class="row pl-3 pt-2">
            <div class="col-sm-7">
              <p>2545 Meldow eye</p>
            </div>
            <div class="col-sm-4">
              <p class="descrip">AED 300,000</p>
            </div>
          </div>

          <div class="row pl-3">
            <div class="col-sm">
              <span class="address">477, Sharjah </span>
            </div>
          </div>

          <div class="row pl-2">
            <div class="col-sm px-4">
              <hr class="green" />
            </div>
          </div>

          <div class="row pl-2 pb-2" style="color:grey">
            <div class="col-sm">
              <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
              &nbsp;
              <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
            </div>
          </div>
        </div>

      </div>


      <div class="item">
        <span class="premium1 float-right pl-4">New</span>
        <img src="https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG91c2V8ZW58MHx8MHx8&w=1000&q=80">
        <div class="descriptions">
          <div class="row pl-3 pt-2">
            <div class="col-sm-7">
              <p>2545 Meldow eye</p>
            </div>
            <div class="col-sm-4">
              <p class="descrip">AED 300,000</p>
            </div>
          </div>

          <div class="row pl-3">
            <div class="col-sm">
              <span class="address">477, UAE </span>
            </div>
          </div>

          <div class="row pl-2">
            <div class="col-sm px-4">
              <hr class="green" />
            </div>
          </div>

          <div class="row pl-2 pb-2" style="color:grey">
            <div class="col-sm">
              <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 300. sq ft</span>
              &nbsp;
              <span><i class="fa fa-bed" aria-hidden="true" style="color:orange;"></i> 3 bed</span>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
            </div>
          </div>
        </div>
      </div>


      <div class="item"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Channel_1_Israel_DSC0021.jpg/1200px-Channel_1_Israel_DSC0021.jpg">
        <div class="descriptions">
          <div class="row pl-3 pt-2">
            <div class="col-sm">
              <p>2545 Meldow eye</p>
            </div>
            <div class="col-sm">
              <p class="descrip">AED 300,000</p>
            </div>
          </div>

          <div class="row pl-3">
            <div class="col-sm">
              <span class="address">477, dzbckjznck, islamabad Pakistan :p </span>
            </div>
          </div>

          <div class="row pl-2">
            <div class="col-sm px-4">
              <hr class="green" />
            </div>
          </div>

          <div class="row pl-2" style="color:grey">
            <div class="col-sm">
              <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
            </div>
          </div>
        </div>
      </div>


      <div class="item"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Channel_1_Israel_DSC0021.jpg/1200px-Channel_1_Israel_DSC0021.jpg">
        <div class="descriptions">
          <div class="row pl-3 pt-2">
            <div class="col-sm">
              2545 Meldow eye
            </div>
            <div class="col-sm">
              <p class="descrip">AED 300,000</p>
            </div>
          </div>

          <div class="row pl-3">
            <div class="col-sm">
              <span class="address">477, dzbckjznck, islamabad Pakistan :p </span>
            </div>
          </div>

          <div class="row pl-2">
            <div class="col-sm px-4">
              <hr class="green" />
            </div>
          </div>

          <div class="row pl-2">
            <div class="col-sm">
              <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span> Company name
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  <!-- End 2nd Features -->

  <!-- Featured Brands -->

  <div class="conatiner mt-5 pb-5 brand-section pt-5">
    <div class="text-center mb-5 ">
      <h2>Feat<span class="b-top">ured Bra</span>nds</h2>
    </div>

    <div class="row ml-5 mr-5">
      <div class="col-sm">
        <img src="/frontend-images/spotify.png" class="logo-img" />
      </div>

      <div class="col-sm">
        <img src="/frontend-images/google.png" class="logo-img" />
      </div>

      <div class="col-sm">
        <img src="/frontend-images/vimeo.png" class="logo-img" />
      </div>



      <div class="col-sm">
        <img src="/frontend-images/google.png" class="logo-img" />
      </div>



    </div>
  </div>
  <!-- End Featured Brands -->


</div>

@stop