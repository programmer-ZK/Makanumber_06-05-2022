<?php

$cities = DB::table('cities')
  ->select('*')->get();

$propertyTypes = DB::table('re_categories')
  ->select('*')->get();

$emirates = DB::table('states')
  ->select('*')
  ->get();
?>

@extends('layouts.master')


@section('title', 'Add Property | Makanumber')

@section('content')

<div class="overflow-hidden">
  <style>
    input[type=number]::-webkit-inner-spin-button,
    input[type=number]::-webkit-outer-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }
  </style>

  <!-- Slider Image Section -->
  <div class="conatiner " style="border-top:2px solid grey; ">
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
    <div class="row slider ml-2" style=" background-color:#ffffff;color:black;">
      <div class="col-sm-4 text-section mt-5">
        <h6 class="ml-5">Makanumber</h6>
        <h1 class="ml-5" style="font-weight:bold;">Add a</h1>
        <h1 class="ml-5">Property</h1>
        <br>

      </div>
      <div class="col-sm-8 img-section ">
        <img class="img-fluid" src="https://images.unsplash.com/photo-1599809275671-b5942cabc7a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVhbCUyMGVzdGF0ZXxlbnwwfHwwfHw%3D&w=1000&q=80" />
      </div>
    </div>

  </div>

  <div class="container-fluid" style="background-color: #00B4A2 ; height: 48px;">
    <p class="green-line">PROPERTY TYPE AND LOCATION</p>
  </div>

  <div>
    <form action="/property" method="post" enctype="multipart/form-data">
      @csrf
      <!-- Next Container -->
      <div class="container mt-5">
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Purpose:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <label for="property1"> &nbsp;For Sale </label> &nbsp;
              <input type="radio" value="sale" class="radio-btn mt-1" id="property1" name="property" checked />&nbsp; &nbsp;
              <label for="property2">For Rent </label> &nbsp;
              <input type="radio" value="rent" class="radio-btn mt-1" id="property2" name="property" />
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label">Property Type:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <select style="padding:5px 10px " class="ml-1 select-color" name="propertyType" required>
                <option value="" disabled selected>Select Property Type</option>
                @foreach($propertyTypes as $propertyType)
                <option value="{{$propertyType->id}}">{{$propertyType->name}}</option>
                @endforeach
              </select>


            </div>
          </div>
        </div>

        <div class="row mt-2">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Location:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <select class="select-color" id="emirates" name="emirates">
                <option value="" selected disabled>Select Emirates</option>
                @foreach($emirates as $emirate)
                <option value="{{$emirate->id}}">{{$emirate->name}}</option>
                @endforeach
              </select>

              <select style="padding:5px 10px " class="ml-1 select-color" id="location" name="city_id" required>

                <option value="" disabled selected>Select Area</option>
                @foreach($cities as $city)
                <option value="{{$city->id}}" data-emirate-id="{{$city->state_id}}">{{$city->name}}</option>
                @endforeach
              </select>
            </div>
          </div>
        </div>

        <!--Container Div-->
      </div>




      <div class="container-fluid mt-4" style="background-color: #00B4A2 ; height: 48px;">
        <p class="green-line">PROPERTY DETAILS</p>
      </div>

      <div class="container mt-3 mb-3">
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Property Name:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <input type="text" placeholder="Property Name" class="select-color p-1" name="prop_name" required />
            </div>
          </div>
        </div>
        <br>
        <div class="row mt-2">
          <div class="col-sm-3">
            <div class="row float">
              <span class="form-label ">Description:</span>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <textarea class="select-color width" name="description" style=" height:100px;" required></textarea>
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Price (AED):</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <input type="number" placeholder="Price" class="select-color p-1" name="price" required />
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Land Area:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <input type="number" class="select-color p-1" style="margin-left:2px;" name="square" required />
              <select style="padding:6px 10px; " class="ml-1 select-color" name="area">
                <option value="square">Square Feet</option>
                <option value="Meter">Meter</option>

              </select>
              <label class="form-label ml-2">Year Built:</label>
              <input type="number" name="year" class="select-color p-1 ml-2" required />
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label  ">Bedrooms:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <input type="number" class="select-color p-1 ml-1" style="width:80px;" name="bedroom" required />
              <label class="form-label ml-2 ">Bathrooms:</label>
              <input type="number" class="select-color p-1 ml-1" style="width: 80px;" name="bathroom" required />
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Maid Room:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <label for="maidRoom1" class="ml-1">Yes</label>&nbsp;
              <input type="radio" value="1" class="mt-1" id="maidRoom1" name="maidRoom" />
              <label for="maidRoom2" class="ml-2">No</label>&nbsp;
              <input type="radio" value="0" class="mt-1" id="maidRoom2" name="maidRoom" checked />
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Parking Spaces:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <input type="number" class="select-color p-1 ml-2" style="width:80px;" name="parking" required />
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Covered Parking:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <label for="c_parking1" class="ml-1">Yes</label>&nbsp;
              <input type="radio" class="mt-1" value="1" id="c_parking1" name="c_parking" />
              <label for="c_parking2" class="ml-2">No</label>&nbsp;
              <input type="radio" class="mt-1" value="0" id="c_parking2" name="c_parking" checked />
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Furnished:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <label for="furnish1" class="ml-1">Yes</label>&nbsp;
              <input type="radio" class="mt-1" value="1" id="furnish1" name="furnish" />
              <label for="furnish2" class="ml-2">No</label>&nbsp;
              <input type="radio" class="mt-1" value="0" id="furnish2" name="furnish" checked />
            </div>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-sm-3">
            <div class="row float">
              <label class="form-label ">Developer:</label>
            </div>
            <br>
          </div>

          <div class="col-sm-9">
            <div class="row ml-1">
              <input type="text" placeholder="Developer Name" class="select-color p-1" name="developer" required />
            </div>
          </div>
        </div>
        <!--Container Div-->
      </div>

      <div class="container-fluid mb-5" style="background-color: #00B4A2; height: 48px;">
        <p class="green-line">ADD IMAGES AND VIDEOS</p>
      </div>
      <div class="container-fluid mb-5">
        <div class="container">

          <div class="row">
            <div class="col-sm-2">

            </div>
            <div class="col-sm-5">
              <div class="row">
                <label style="color:grey;" class="mt-3">Upload Images</label>
              </div>
              <div class="row image-border no-guuters" style="border-color:#E5E5E5;">

                <div class="upload">
                  <input type="file" name="prop_images[]" multiple id="gallery-photo-add" accept="image/x-png,image/gif,image/jpeg">
                  <input type="button" class="uploadButton" name="prop_images[]" value="+ Add Images" />
                  <div class="col-md-12">
                    <div class="gallery"></div>
                  </div>
                  {{-- <input type="file" name="prop_images[]" id="fileUpload" style="cursor:pointer;" onClick="listFiles()" multiple required />
                  <span class="fileName"></span> --}}

                </div>

              </div>

            </div>

          </div>
          <br>
          <div class="row">
            <div class="col-sm-2">

            </div>
            <div class="col-sm-5">
              <div class="row">
                <label style="color:grey;" class="mt-3">Upload Video Tour</label>
              </div>
              <div class="row image-border no-gutters" style="border-color:#E5E5E5;">
                <div class="upload">

                  <input type="file" name="prop_video" id="fileUpload1" style="cursor:pointer;" />
                  <span class="fileName"></span>
                  <input type="button" class="uploadButton" name="prop_video" value="+ Add Video" />
                </div>
              </div>

            </div>

          </div>
          <br>
          <div class="row">
            <div class="col-sm-2">

            </div>
            <div class="col-sm-3">
              <div class="row">
                <button class="btn property-btn mt-5" type="submit">Submit Property</button>
              </div>


            </div>

          </div>



        </div>

      </div>
    </form>
  </div>
</div>


<script type="text/javascript">
  var Tawk_API = Tawk_API || {},
    Tawk_LoadStart = new Date();
  (function() {
    var s1 = document.createElement("script"),
      s0 = document.getElementsByTagName("script")[0];
    s1.async = true;
    s1.src = 'https://embed.tawk.to/6215c953a34c24564127b3b2/1fsihksbu';
    s1.charset = 'UTF-8';
    s1.setAttribute('crossorigin', '*');
    s0.parentNode.insertBefore(s1, s0);
  })();
</script>


<script>
  $(document).ready(function() {
    $(function() {
      var imagesPreview = function(input, placeToInsertImagePreview) {
        if (input.files) {
          var filesAmount = input.files.length;
          for (i = 0; i < filesAmount; i++) {
            var reader = new FileReader();
            reader.onload = function(event) {
              var randomId = Math.random().toString(36).slice(2, 7);
              $($.parseHTML('<img id="' + randomId + '" width=200px height=200px>')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
              $($.parseHTML('<a id="aa' + randomId + '" width=200px height=200pxclass="remove" onclick="removeImage(\'' + randomId + '\')">Remove image</a>')).appendTo(placeToInsertImagePreview);

            }
            reader.readAsDataURL(input.files[i]);
          }
        }
      };

      $('#gallery-photo-add').on('change', function() {
        imagesPreview(this, 'div.gallery');
      });
    });
  });

  function removeImage(arr) {
    $('#' + arr).remove();
    $('#aa' + arr).remove();
  }
</script>

<script>
  $(document).ready(function() {
    $('#emirates').on('change', function() {
      state_id = $("#emirates option:selected").val();
      if (state_id != null) {
        $("#location > option").css("display", "none");
        $("#location > option[data-emirate-id=" + state_id + "]").css("display", "inline-block");
      }
    });
  });
</script>

@stop