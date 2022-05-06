@extends('layouts.master')


@section('title', 'My Profile | Makanumber')

@section('content')
<?php
if (!Auth::user()) {
  // header('Location:  ' . $_SERVER['HTTP_HOST'] . '');
  echo "<script>window.location.href = '/';</script>";
}

$packages =  DB::table('re_packages')
  ->select('*')
  ->get();
?>
<style>
  .nav-link.active {
    color: #00B4A2 !important;
  }

  .nav-item {
    margin: 0px 20px;
  }
</style>

<div class="container center mt-5">
  @if(Session::has('success'))
  <div class="alert alert-success">
    {{ Session::get('success') }}
  </div>
  @endif
  @if(Session::has('danger'))
  <div class="alert alert-danger">
    {{ Session::get('danger') }}
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
  <h1 class="mt-5" style="font-family: 'Montserrat', sans-serif !important;">My Profile</h1>

  <!-- End Navbar -->

  <ul class="nav mb-3 pills-margin" id="pills-tab" role="tablist" style="font-family: 'Montserrat', sans-serif !important;">

    <li class="nav-item">
      <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Profile Details</a>
    </li>


    <li class="nav-item">
      <a class="nav-link active1" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">My Properties</a>
    </li>


    <li class="nav-item subcribe">
      <a class="nav-link active1" id="pills-subcribe-tab" data-toggle="pill" href="#pills-subscription" role="tab" aria-controls="pills-contact" aria-selected="false">Subscription</a>
    </li>


  </ul>


  <div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" style="border-bottom: none !important;">

      <div class="row mt-5 mb-5">
        <div class="col-sm-3">
          <form action="/profile-pic/{{Auth::user()->id}}" method="post" enctype="multipart/form-data">
            @csrf
            <h5 class="mb-3">Photo Profile </h5>
            @if(Auth::user()->avatar_id)
            <img src="{{asset('public/storage/users/'.Auth::user()->avatar_id)}}" style="width:212px; height:212px; border-radius: 5px;" alt="profile-pic" />
            @else
            <img src="/frontend-images/profile-pic.jpg" style="width:212px; height:212px; border-radius: 5px;" alt="profile-pic" />
            @endif
            <input class="mt-3" type="file" name="profile_pic" required />
            <button class="btn btn-primary upload-btn" type="submit">Upload New</button>
          </form>
          <form action="/delete-dp/{{Auth::user()->id}}" method="post">
            @csrf
            @method('DELETE')
            <button class="btn btn-primary delete-btn"><span style="border-bottom: 2px dashed grey !important;">Delete Photo</span></button>
          </form>
        </div>

        <div class="col-sm-5 center">
          <h5>Profile Details</h5>
          <form action="/edit-profile/{{Auth::user()->id}}" method="get">
            <div class="row" style="color:grey;">
              <div class="col-sm-10">
                <label class="form-label">Name</label><br />
                <input type="text" class="form-control" placeholder="John Smith" name="name" value="{{Auth::user()->username}}" />
              </div>

            </div>
            <div class="row mt-5" style="color:grey;">
              <div class="col-sm-10">
                <label class="form-label">Email</label><br />
                <input type="email" class="form-control" placeholder="username@gmail.com" name="email" value="{{Auth::user()->email}}" />
              </div>

            </div>

            <div class="row mt-5" style="color:grey;">
              <div class="col-sm-10">
                <label class="form-label">Phone(Optional)</label><br />
                <input type="text" class="form-control" placeholder="+97 05 08 44 77 76" name="phone" value="{{Auth::user()->phone}}" />
              </div>

            </div>

            <div class="row mt-5" style="color:grey;">

              <div class="col-sm-12">
                <input type="checkbox" name="checkbox" />
                <label class="form-label">Send properties updates for email</label><br />
              </div>

              <div class="col-sm-12 mt-2 mb-2">
                <button class="btn btn-primary green-btn" type="submit">Save Changes</button>
              </div>
          </form>

        </div>

      </div>


      <div class="col-sm-4 change-pw">
        <h5>Change Password</h5>
        <form action="/change-password/{{Auth::user()->id}} " method="get">
          @csrf
          <div class="row" style="color:grey">
            <div class="col-sm-12">
              <label class="form-label">Old Password</label><br />
              <input type="password" class="form-control" name="old_password" required />
            </div>

            <div class="col-sm-12 mt-5">
              <label class="form-label">New Password</label><br />
              <input type="password" class="form-control" name="new_password" required />
            </div>

            <div class="col-sm-12 mt-5">
              <label class="form-label">Confirm Password</label><br />
              <input type="password" class="form-control" name="confirm_password" required />
            </div>

            <div class="col-sm-12 mt-5">
              <button class="btn btn-primary green-btn" type="submit">Change Password</button>
            </div>
          </div>
        </form>
      </div>

    </div>

  </div>





  <!-- properties -->
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
    <div class="container mb-3">
    </div>


    <div class="container-fluid mb-5">

      <div class="row">
        @if($property->count() >= 1)
        <div class="col-sm-8 ">
          <div class="row no-gutters mt-3 ">

            @foreach($property as $prop)

            @php
            $users = \App\Models\UserModel::where(['id' => $prop->author_id])->get();

            @endphp
            <?php

            $propertyUrl =  DB::table('re_properties')
              ->select('*')
              ->join('slugs', 're_properties.id', '=', 'slugs.reference_id')
              ->where('slugs.reference_id', '=', $prop->property_id)
              ->get();
            ?>


            <div class="col-sm-5 mb-3">
              <div class="card card2">
                <span class="blog-img-labels">{{$prop->type}}</span>
                @php($type = gettype($prop->images))

                @php($explode_id = json_decode($prop->images, true))

                @isset($explode_id[0])
                <img src="{{asset('public/storage/'.$explode_id[0])}}" alt="image" class="blog-img" style="width: 100%; height: 250px;  ">
                @endisset


              </div>
            </div>
            <div class="col-sm-7">
              <div class="card card1" style="height:252px;">
                <div class="card-body blog-bg">
                  <?php
                  $price = $prop->price;
                  $price = number_format($price, 0, '.', ',');
                  ?>

                  @foreach ($propertyUrl as $k => $url)
                  <!-- <p class="card-title" style="font-size:16px; font-weight:bold;">
                    <a href="properties/{{ $url->key }}">
                      <span style="color:white !important;">{{\Illuminate\Support\Str::limit($prop->name, 30)}}</span>
                    </a>
                    <span style="float:right; color:#0AAC7E; font-weight:light;">AED {{$price}}</span>
                  </p> -->
                  @endforeach

                  <p class="card-title" style="font-size:16px; font-weight:bold;">
                    <a href="#">
                      <span style="color:white !important;">{{\Illuminate\Support\Str::limit($prop->name, 50)}}</span>
                    </a>
                    <span style="float:right; color:#0AAC7E; font-weight:light;">AED {{$price}}</span>
                  </p>

                  <p style="color:#B7B7B7; font-size:14px;">{{$prop->location}}</p>
                  <div class="row" style="color:grey">
                  </div>
                  <p class="card-text" style="font-size:14px; border-top: 2px solid #00B4A2;">
                  <div class="col-sm" style="margin-left:-8px !important;">
                    @if ($prop->square)
                    <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> <span style="color:grey;">{{ $prop->square_text }} sq.ft</span> </span>
                    @endif

                    @if ($prop->number_bedroom)
                    <span><i class="fa fa-bed" aria-hidden="true" style="color:#FB9F35;"></i> <span style="color:grey;">{{ $prop->number_bedroom }} bd</span></span>
                    @endif
                    @if ($prop->number_bathroom)
                    <span><i class="fa fa-bath" aria-hidden="true" style="color:#FB9F35;"></i> <span style="color:grey;">{{ $prop->number_bathroom }} bt</span></span>
                    @endif
                    <br />
                  </div>
                  <span style="color:#B7B7B7; overflow-y: hidden !important;">{{\Illuminate\Support\Str::limit($prop->description, 100)}} </span> </p>
                  <p class="card-text" style="font-size:12px; color: #00B4A2;">
                    @if(Auth::user()->avatar_id)
                    <li class="nav-item ml-2 mr-0" style="list-style:none !important;">
                      <img src="{{asset('public/storage/users/'.Auth::user()->avatar_id)}}" style="margin-left:-10px; width:35px; height:35px; border-radius:50%; border:1px solid;" /> &nbsp;&nbsp; {{Auth::user()->name}}
                    </li>
                    @else
                    <li class="nav-item ml-2" style="list-style:none !important;">
                      <img src="/frontend-images/profile-pic.jpg" style="height:30px; width:30px; border-radius:50%;" /> &nbsp; &nbsp; {{Auth::user()->name}}
                    </li>
                    @endif
                  </p>
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>


        <div class="col-sm-4 mt-3 ">

          @foreach($bannerImage as $key => $img)
          @if($img)
          @if($bannerImage->last() === $img)
          <img src="{{asset('public/storage/advertisement/'.$img->image)}}" alt="advertisement-img" class="advertisement-img" style="width: 100%; height: 600px; !important; border:10px solid orange;">
          @endif
          @else
          <h2 style="font-weight: bold;">Advertisement will be here</h2>
          @endif
          @endforeach
        </div>

        @else
        <div class="col-sm-8 mt-5 ">
          <h4>Your haven't added any property yet!</h4>
          <a href="/add-property"><button class="btn btn-default" style="border:1px solid #D3D3D3; background-color:#00B4A2; color:white;">Add Property</button></a>
        </div>



        <div class="col-sm-4 mt-3 ">
          @foreach($bannerImage as $key => $img)
          @if($img)
          @if($bannerImage->last() === $img)
          <img src="{{asset('public/storage/advertisement/'.$img->image)}}" alt="advertisement-img" class="advertisement-img" style="width: 100%; height: 600px; border:10px solid orange;">
          @endif
          @else
          <h2 style="font-weight: bold;">Advertisement will be here</h2>
          @endif
          @endforeach
        </div>
        @endif
      </div>



    </div>


  </div>




  <div class="tab-pane fade" id="pills-subscription" role="tabpanel" aria-labelledby="pills-subscribe-tab">
    <div class="container-fluid mt-5 subcribe">
      <div class="row">

        <div class="col-lg-3">
          <span class="green-span">Listing Package Name</span>
        </div>

        <div class="col-lg-2">
          <span class="green-span">Prices</span>
        </div>

        <div class="col-lg-2">
          <span class="green-span">Active Days</span>
        </div>

        <div class="col-lg-2">
          <span class="green-span">Images Per Ad</span>
        </div>
        <div class="col-lg-3">

        </div>

      </div>


    </div>


    <div class="container bg-color mt-3 p-2 mb-5" style="width:1200px;">
      @foreach($packages as $package)
      <!--$users = \App\Models\UserModel::where(['id' => $prop->author_id])->get();-->
      <form action="/package" method="post">
        @csrf
        <div class="row pl-3">
          <input type="hidden" name="pkg_name" id="pkg_name" value="{{$package->name}}" />
          <input type="hidden" name="price" id="price" value="{{$package->price}}" />
          <input type="hidden" name="days" id="days" value="{{$package->number_of_listings}}" />
          <input type="hidden" name="user_id" value="Auth::user()->id" />
          <input type="hidden" name="status" value="1" />

          <div class="col-sm-9">
            <div class="row">
              <div class="col-sm-4">
                <h6 class="pt-3" class="pkg_name" value="{{$package->name}}">{{$package->name}}</h6>
              </div>
              @if($package->price < 100) <div class="col-sm-3">
                <button class="btn btn-success pkg-button mt-1" style="cursor:context-menu">{{$package->price}}</button>
            </div>
            @elseif($package->price < 500 && $package->price > 100 )
              <div class="col-sm-3">
                <button class="btn btn-warning pkg-button mt-1" style="cursor:context-menu" style="background-color:orange;">{{$package->price}}</button>
              </div>

              @elseif($package->price > 500 )
              <div class="col-sm-3">
                <button class="btn btn-danger pkg-button mt-1" style="cursor:context-menu">{{$package->price}}</button>
              </div>

              @endif

              <div class="col-sm-3">
                <p class="pt-3">{{$package->number_of_listings}}</p>
              </div>
              <div class="col-sm-2">
                <p class="pt-3">3</p>
              </div>

          </div>
        </div>
        <div class="col-sm-1">


        </div>
        <?php
        $pkg =  DB::table('users')
          ->select('*')
          ->join('subscription', 'users.id', '=', 'subscription.user_id')
          ->where('subscription.user_id', '=', Auth::user()->id)
          ->get();

        ?>
        @if(count($pkg) >=1 )
        @foreach($pkg as $pk)

        @if($pk->pkg_name == $package->name)

        <div class="col-sm-2">
          <button class="btn subcribe-btn mt-2" type="submit">Subcribed</button>
        </div>
        @else
        <div class="col-sm-2">
          <button class="btn subcribe-btn mt-2" type="submit" style="background-color:transparent; color:orange; border:1px solid #00B4A2;">Subcribe</button>
        </div>
        @endif

        @endforeach
        @else
        <div class="col-sm-2">
          <button class="btn subcribe-btn mt-2" type="submit" style="background-color:transparent; color:orange; border:1px solid #00B4A2;">Subcribe</button>
        </div>

        @endif

    </div>
    </form>

    @endforeach



  </div>

</div>

<div class="tab-pane fade" id="pills-blog" role="tabpanel" aria-labelledby="pills-blog-tab" style="border:none !important;">
  <div class="container-fluid mt-5 mb-5">
    <div class="row">
      <button class="btn btn-success button1" style="background-color:#00B4A2; width:100px;" data-toggle="modal" data-target="#exampleModalCenter">Add Blog</button>
      <section class="container">

        <!-- Button trigger modal --
  
          <!-- Modal -->






        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Add Blog</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="/create-blog" method="post" enctype="multipart/form-data">
                  @csrf
                  <div class="row">
                    <div class="col-sm-2">
                      <div class="form-group">
                        <span><label for="exampleInputEmail1">Title</label></span>
                      </div>


                    </div>

                    <div class="col-sm-10">
                      <div class="form-group">
                        <input type="test" class="form-control" name="name">
                      </div>

                    </div>


                  </div>

                  <div class="row">
                    <div class="col-sm-2">
                      <div class="form-group">
                        <span><label>Description</label></span>

                      </div>
                    </div>

                    <div class="col-sm-10">
                      <div class="form-group">

                        <textarea class="form-control" rows="8" name="description"></textarea>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-sm-8">
                      <div class="form-group">
                        <span>Category: </span>
                        <select class="custom-select" name="category" style="width:200px !important;">
                          <option>Select Category</option>
                          <option value="news">News</option>
                          <option value="news">Something</option>
                        </select>
                      </div>


                    </div>
                    <div class="col-sm-4">
                      <span><label>Image</label></span>
                      <!--<button type="submit" class="btn btn-primary">Upload</button>-->
                      <div class="custom-file form-group">

                        <input type="file" name="blog_pic" />

                      </div>
                      <!-- <p>size 900 by 600</p> -->
                    </div>


                  </div>
                  <button type="submit" class="btn btn-primary" style="width:100px; background-color:#00B4A2;">Create</button>
                </form>

                <!-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> -->
              </div>
            </div>
          </div>

      </section>
      </section>
    </div>
  </div>


</div>


</div>



</div>
</div>

</div>


<script>
  $(document).ready(function() {
    var test = $('.pkg_name').val();
    //   alert($test);
    var test1 = $('.pkg_name').val();
    alert($test1);
    //   $('#pkg_name').val(CalculatedWPM);

    $('.items').slick({
      infinite: true,
      slidesToShow: 3,
      slidesToScroll: 3,
    });
  });
</script>

@stop