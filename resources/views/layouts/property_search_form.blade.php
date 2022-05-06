<?php

$cities = DB::table('cities')
  ->select('*')->get();

$emirates = DB::table('states')
  ->select('*')
  ->get();
?>

<div class="" style="width: 95% !important; margin-left: 2%;">

  <form action="/search-propeties" method="get">
    @csrf

    <div class="mt-3 ml-4 mr-4">

      <div class="row mt-2">
        <div class="col-lg-1" style="padding-left:0px !important">

          <div class="input-group input border-0">
            <select class="custom-select" id="purpose" name="purpose" style="color:grey;" required>
              <option value="" selected disabled>Purpose</option>
              <option value="renting" <?= (isset($_GET['purpose']) && $_GET['purpose'] == 'renting') ? "selected" : "" ?>>Rent</option>
              <option value="selling" <?= (isset($_GET['purpose']) && $_GET['purpose'] == 'selling') ? "selected" : "" ?>>Buy</option>
            </select>
          </div>

        </div>

        <div class="col-lg-1" style="padding-left:0px !important">

          <div class="input-group input border-0">
            <select class="custom-select " id="emirates" name="emirates" style="color:grey;">
              <option value="" selected disabled>Emirates</option>
              @foreach($emirates as $emirate)
              @if(isset($_GET['emirates']) && $_GET['emirates'] == $emirate->id)
              <option value="{{$emirate->id}}" selected>{{$emirate->name}}</option>
              @else
              <option value="{{$emirate->id}}">{{$emirate->name}}</option>
              @endif
              @endforeach

            </select>
          </div>

        </div>

        <div class="col-lg-1" style="padding-left:0px !important">

          <div class="input-group input border-0">
            <select class="custom-select " id="location" name="location" style="color:grey;">
              <option value="" selected disabled>Location</option>
              @foreach($cities as $city)
              @if(isset($_GET['location']) && $_GET['location'] == $city->id)
              <option value="{{$city->id}}" data-emirate-id="{{$city->state_id}}" selected>{{$city->name}}</option>
              @else
              <option value="{{$city->id}}" data-emirate-id="{{$city->state_id}}">{{$city->name}}</option>
              @endif
              @endforeach

            </select>
          </div>

        </div>

        <div class="col-lg-2" style="padding-left:0px !important">

          <div class=" input-group input border-0">

            <select class="custom-select" id="propertyType" name="propertyType" style="color:grey; ">
              <option value="" selected disabled>Property Type</option>
              <optgroup label="Residential" data-max-options="2">
                <option value="1" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 1) ? "selected" : "" ?>>Apartment</option>
                <option value="2" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 2) ? "selected" : "" ?>>Villa</option>
                <option value="6" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 6) ? "selected" : "" ?>>Townhouse</option>
                <option value="3" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 3) ? "selected" : "" ?>>Residential Plot</option>
                <option value="7" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 7) ? "selected" : "" ?>>Residential Building</option>

              </optgroup>
              <optgroup label="Commercial" data-max-options="2">
                <option value="8" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 8) ? "selected" : "" ?>>Office</option>
                <option value="9" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 9) ? "selected" : "" ?>>Warehouse</option>
                <option value="10" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 10) ? "selected" : "" ?>>Shop</option>
                <option value="4" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 4) ? "selected" : "" ?>>Industrial Land</option>
                <option value="11" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 11) ? "selected" : "" ?>>Showroom</option>
                <option value="5" <?= (isset($_GET['propertyType']) && $_GET['propertyType'] == 5) ? "selected" : "" ?>>Commercial Plot </option>
              </optgroup>
            </select>

          </div>

        </div>

        <div class="col-lg-1" style="padding-left:0px !important">

          <div class=" input-group input border-0">

            <select class="custom-select " id="beds" name="beds" style="color:grey;">
              <option value="" selected disabled>Bed </option>
              <option value="0" <?= (isset($_GET['beds']) && $_GET['beds'] == 0) ? "selected" : "" ?>>Studio</option>
              <option value="1" <?= (isset($_GET['beds']) && $_GET['beds'] == 1) ? "selected" : "" ?>>1</option>
              <option value="2" <?= (isset($_GET['beds']) && $_GET['beds'] == 2) ? "selected" : "" ?>>2</option>
              <option value="3" <?= (isset($_GET['beds']) && $_GET['beds'] == 3) ? "selected" : "" ?>>3</option>
              <option value="4" <?= (isset($_GET['beds']) && $_GET['beds'] == 4) ? "selected" : "" ?>>4</option>
              <option value="5" <?= (isset($_GET['beds']) && $_GET['beds'] == 5) ? "selected" : "" ?>>5</option>
              <option value="6" <?= (isset($_GET['beds']) && $_GET['beds'] == 6) ? "selected" : "" ?>>6</option>
              <option value="7" <?= (isset($_GET['beds']) && $_GET['beds'] == 7) ? "selected" : "" ?>>7</option>
              <option value="8" <?= (isset($_GET['beds']) && $_GET['beds'] == 8) ? "selected" : "" ?>>8</option>

            </select>
          </div>

        </div>

        <div class="col-lg-2" style="padding-left:0px !important">

          <div class="input-group input border-0">
            <select class="custom-select " id="areaFrom" name="areaFrom" style="color:grey; width:60px !important; ">
              <option value="" selected disabled>Min</option>
              <option value="100" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 100) ? "selected" : "" ?>>100 Sq.ft</option>
              <option value="200" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 200) ? "selected" : "" ?>>200 Sq.ft</option>
              <option value="300" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 300) ? "selected" : "" ?>>300 Sq.ft</option>
              <option value="400" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 400) ? "selected" : "" ?>>400 Sq.ft</option>
              <option value="500" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 500) ? "selected" : "" ?>>500 Sq.ft</option>
              <option value="600" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 600) ? "selected" : "" ?>>600 Sq.ft</option>
              <option value="700" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 700) ? "selected" : "" ?>>700 Sq.ft</option>
              <option value="800" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 800) ? "selected" : "" ?>>800 Sq.ft</option>
              <option value="900" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 900) ? "selected" : "" ?>>900 Sq.ft</option>
              <option value="1000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 1000) ? "selected" : "" ?>>1,000 Sq.ft</option>
              <option value="2000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 2000) ? "selected" : "" ?>>2,000 Sq.ft</option>
              <option value="3000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 3000) ? "selected" : "" ?>>3,000 Sq.ft</option>
              <option value="4000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 4000) ? "selected" : "" ?>>4,000 Sq.ft</option>
              <option value="5000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 5000) ? "selected" : "" ?>>5,000 Sq.ft</option>
              <option value="6000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 6000) ? "selected" : "" ?>>6,000 Sq.ft</option>
              <option value="7000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 7000) ? "selected" : "" ?>>7,000 Sq.ft</option>
              <option value="8000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 8000) ? "selected" : "" ?>>8,000 Sq.ft</option>
              <option value="9000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 9000) ? "selected" : "" ?>>9,000 Sq.ft</option>
              <option value="10000" <?= (isset($_GET['areaFrom']) && $_GET['areaFrom'] == 10000) ? "selected" : "" ?>>10,000 Sq.ft</option>
            </select>
            <span style="padding: 7px; color: grey; background: #FFFFFF;">Area</span>
            <select class="custom-select " id="areaTo" name="areaTo" style="color:grey; width:60px !important; ">
              <option value="" selected disabled>Max</option>
              <option value="100" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 100) ? "selected" : "" ?>>100 Sq.ft</option>
              <option value="200" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 200) ? "selected" : "" ?>>200 Sq.ft</option>
              <option value="300" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 300) ? "selected" : "" ?>>300 Sq.ft</option>
              <option value="400" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 400) ? "selected" : "" ?>>400 Sq.ft</option>
              <option value="500" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 500) ? "selected" : "" ?>>500 Sq.ft</option>
              <option value="600" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 600) ? "selected" : "" ?>>600 Sq.ft</option>
              <option value="700" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 700) ? "selected" : "" ?>>700 Sq.ft</option>
              <option value="800" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 800) ? "selected" : "" ?>>800 Sq.ft</option>
              <option value="900" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 900) ? "selected" : "" ?>>900 Sq.ft</option>
              <option value="1000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 1000) ? "selected" : "" ?>>1,000 Sq.ft</option>
              <option value="2000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 2000) ? "selected" : "" ?>>2,000 Sq.ft</option>
              <option value="3000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 3000) ? "selected" : "" ?>>3,000 Sq.ft</option>
              <option value="4000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 4000) ? "selected" : "" ?>>4,000 Sq.ft</option>
              <option value="5000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 5000) ? "selected" : "" ?>>5,000 Sq.ft</option>
              <option value="6000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 6000) ? "selected" : "" ?>>6,000 Sq.ft</option>
              <option value="7000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 7000) ? "selected" : "" ?>>7,000 Sq.ft</option>
              <option value="8000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 8000) ? "selected" : "" ?>>8,000 Sq.ft</option>
              <option value="9000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 9000) ? "selected" : "" ?>>9,000 Sq.ft</option>
              <option value="10000" <?= (isset($_GET['areaTo']) && $_GET['areaTo'] == 10000) ? "selected" : "" ?>>10,000 Sq.ft</option>
            </select>
          </div>

        </div>

        <div class="col-lg-2 fromPrice" style="padding-left:0px !important">
          <div class=" input-group input border-0">
            <select class="custom-select" id="priceFrom" name="priceFrom" style="color:grey; width:60px !important;">
              <option value="" selected disabled>Min</option>
              <option value="500" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 500) ? "selected" : "" ?>>500</option>
              <option value="1000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 1000) ? "selected" : "" ?>>1,000</option>
              <option value="2000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 2000) ? "selected" : "" ?>>2,000</option>
              <option value="3000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 3000) ? "selected" : "" ?>>3,000</option>
              <option value="4000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 4000) ? "selected" : "" ?>>4,000</option>
              <option value="5000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 5000) ? "selected" : "" ?>>5,000</option>
              <option value="6000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 6000) ? "selected" : "" ?>>6,000</option>
              <option value="7000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 7000) ? "selected" : "" ?>>7,000</option>
              <option value="8000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 8000) ? "selected" : "" ?>>8,000</option>
              <option value="9000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 9000) ? "selected" : "" ?>>9,000</option>
              <option value="10000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 10000) ? "selected" : "" ?>>10,000</option>
              <option value="20000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 20000) ? "selected" : "" ?>>20,000</option>
              <option value="30000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 30000) ? "selected" : "" ?>>30,000</option>
              <option value="40000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 40000) ? "selected" : "" ?>>40,000</option>
              <option value="50000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 50000) ? "selected" : "" ?>>50,000</option>
              <option value="60000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 60000) ? "selected" : "" ?>>60,000</option>
              <option value="70000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 70000) ? "selected" : "" ?>>70,000</option>
              <option value="80000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 80000) ? "selected" : "" ?>>80,000</option>
              <option value="90000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 90000) ? "selected" : "" ?>>90,000</option>
              <option value="100000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 100000) ? "selected" : "" ?>>100,000</option>
              <option value="200000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 200000) ? "selected" : "" ?>>200,000</option>
              <option value="300000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 300000) ? "selected" : "" ?>>300,000</option>
              <option value="400000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 400000) ? "selected" : "" ?>>400,000</option>
              <option value="500000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 500000) ? "selected" : "" ?>>500,000</option>
              <option value="600000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 600000) ? "selected" : "" ?>>600,000</option>
              <option value="700000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 700000) ? "selected" : "" ?>>700,000</option>
              <option value="800000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 800000) ? "selected" : "" ?>>800,000</option>
              <option value="900000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 900000) ? "selected" : "" ?>>900,000</option>
              <option value="1000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 1000000) ? "selected" : "" ?>>1,000,000</option>
              <option value="2000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 2000000) ? "selected" : "" ?>>2,000,000</option>
              <option value="3000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 3000000) ? "selected" : "" ?>>3,000,000</option>
              <option value="4000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 4000000) ? "selected" : "" ?>>4,000,000</option>
              <option value="5000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 5000000) ? "selected" : "" ?>>5,000,000</option>
              <option value="6000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 6000000) ? "selected" : "" ?>>6,000,000</option>
              <option value="7000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 7000000) ? "selected" : "" ?>>7,000,000</option>
              <option value="8000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 8000000) ? "selected" : "" ?>>8,000,000</option>
              <option value="9000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 9000000) ? "selected" : "" ?>>9,000,000</option>
              <option value="10000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 10000000) ? "selected" : "" ?>>10,000,000</option>
              <option value="20000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 20000000) ? "selected" : "" ?>>20,000,000</option>
              <option value="30000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 30000000) ? "selected" : "" ?>>30,000,000</option>
              <option value="40000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 40000000) ? "selected" : "" ?>>40,000,000</option>
              <option value="50000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 50000000) ? "selected" : "" ?>>50,000,000</option>
              <option value="60000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 60000000) ? "selected" : "" ?>>60,000,000</option>
              <option value="70000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 70000000) ? "selected" : "" ?>>70,000,000</option>
              <option value="80000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 80000000) ? "selected" : "" ?>>80,000,000</option>
              <option value="90000000" <?= (isset($_GET['priceFrom']) && $_GET['priceFrom'] == 90000000) ? "selected" : "" ?>>90,000,000</option>
            </select>
            <span style="padding: 7px; color: grey; background: #FFFFFF;">Price</span>
            <select class="custom-select" id="priceTo" name="priceTo" style="color:grey; width:60px !important;">
              <option value="" selected disabled>Max</option>
              <option value="500" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 500) ? "selected" : "" ?>>500</option>
              <option value="1000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 1000) ? "selected" : "" ?>>1,000</option>
              <option value="2000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 2000) ? "selected" : "" ?>>2,000</option>
              <option value="3000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 3000) ? "selected" : "" ?>>3,000</option>
              <option value="4000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 4000) ? "selected" : "" ?>>4,000</option>
              <option value="5000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 5000) ? "selected" : "" ?>>5,000</option>
              <option value="6000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 6000) ? "selected" : "" ?>>6,000</option>
              <option value="7000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 7000) ? "selected" : "" ?>>7,000</option>
              <option value="8000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 8000) ? "selected" : "" ?>>8,000</option>
              <option value="9000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 9000) ? "selected" : "" ?>>9,000</option>
              <option value="10000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 10000) ? "selected" : "" ?>>10,000</option>
              <option value="20000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 20000) ? "selected" : "" ?>>20,000</option>
              <option value="30000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 30000) ? "selected" : "" ?>>30,000</option>
              <option value="40000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 40000) ? "selected" : "" ?>>40,000</option>
              <option value="50000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 50000) ? "selected" : "" ?>>50,000</option>
              <option value="60000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 60000) ? "selected" : "" ?>>60,000</option>
              <option value="70000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 70000) ? "selected" : "" ?>>70,000</option>
              <option value="80000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 80000) ? "selected" : "" ?>>80,000</option>
              <option value="90000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 90000) ? "selected" : "" ?>>90,000</option>
              <option value="100000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 100000) ? "selected" : "" ?>>100,000</option>
              <option value="200000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 200000) ? "selected" : "" ?>>200,000</option>
              <option value="300000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 300000) ? "selected" : "" ?>>300,000</option>
              <option value="400000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 400000) ? "selected" : "" ?>>400,000</option>
              <option value="500000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 500000) ? "selected" : "" ?>>500,000</option>
              <option value="600000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 600000) ? "selected" : "" ?>>600,000</option>
              <option value="700000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 700000) ? "selected" : "" ?>>700,000</option>
              <option value="800000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 800000) ? "selected" : "" ?>>800,000</option>
              <option value="900000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 900000) ? "selected" : "" ?>>900,000</option>
              <option value="1000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 1000000) ? "selected" : "" ?>>1,000,000</option>
              <option value="2000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 2000000) ? "selected" : "" ?>>2,000,000</option>
              <option value="3000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 3000000) ? "selected" : "" ?>>3,000,000</option>
              <option value="4000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 4000000) ? "selected" : "" ?>>4,000,000</option>
              <option value="5000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 5000000) ? "selected" : "" ?>>5,000,000</option>
              <option value="6000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 6000000) ? "selected" : "" ?>>6,000,000</option>
              <option value="7000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 7000000) ? "selected" : "" ?>>7,000,000</option>
              <option value="8000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 8000000) ? "selected" : "" ?>>8,000,000</option>
              <option value="9000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 9000000) ? "selected" : "" ?>>9,000,000</option>
              <option value="10000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 10000000) ? "selected" : "" ?>>10,000,000</option>
              <option value="20000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 20000000) ? "selected" : "" ?>>20,000,000</option>
              <option value="30000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 30000000) ? "selected" : "" ?>>30,000,000</option>
              <option value="40000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 40000000) ? "selected" : "" ?>>40,000,000</option>
              <option value="50000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 50000000) ? "selected" : "" ?>>50,000,000</option>
              <option value="60000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 60000000) ? "selected" : "" ?>>60,000,000</option>
              <option value="70000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 70000000) ? "selected" : "" ?>>70,000,000</option>
              <option value="80000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 80000000) ? "selected" : "" ?>>80,000,000</option>
              <option value="90000000" <?= (isset($_GET['priceTo']) && $_GET['priceTo'] == 90000000) ? "selected" : "" ?>>90,000,000</option>
            </select>
          </div>

        </div>

        <div class="col-lg-1 ml-3 mt-1 searchBtn" style="padding-left:0px !important; ">
          <button class="btn btn-success button" type="submit" style="background-color:#00B4A2; width:200px;">Search</button>
        </div>
      </div>
    </div>
  </form>

  <script>
    $(document).ready(function() {
      $('#emirates').on('change', function() {
        state_id = $("#emirates option:selected").val();
        if (state_id != null) {
          $("#location > option").css("display", "none");
          $("#location > option[data-emirate-id=" + state_id + "]").css("display", "inline-block");
          $("#location").attr("required", "required")
        }
      });
    });
  </script>
</div>