<?php

use App\Models\PropertyModel;

$props = DB::table('re_properties')
  ->select('*')
  ->where('re_properties.id', $object->id)->get();
?>
{{-- <div class="row mt-4 no-gutters" style="direction:flex; justify:content:end; text-align:right; z-index:1;">
           <div class="col-sm-11">
               
           </div>
           @foreach($props as $prop)
           <div class="col-sm-1" style="margin-left:-70px;">
           <div class="row" style="background-color:white;">
               @if($prop->video)
            <div class="col-sm-1  pt-2 pb-2 itemct popup-youtube" style="width:60px; cursor:pointer;background-color:white; border-right:1px solid white;" href="{{asset('public/storage/properties/'.$prop->video)}}">
<i class="fab fa-youtube"></i>
</div>
@endif
<div class="col-sm-1 pt-2" style="background-color:white;">
  <i class="fas fa-chevron-left ar-prev"></i>
</div>
<div class="col-sm-1 pt-2" style="background-color:white;border-right:1px solid white;">
  <i class="fas fa-chevron-right ar-next"></i>
</div>

<div class="col-sm-1 pt-2" style="background-color:white;border-right:1px solid white;">
  <i class="fas fa-square "></i>
</div>
</div>
</div>
@endforeach
</div> --}}
<div class="boxsliderdetail ">
  <div class="row no-gutters">
    <!-- <div class="col-sm-5 slidetop" style="z-index:1 !important;">

      @foreach($props as $prop)

      @if ($prop->video)

      <video style="width:100%; object-fit: initial;" height="365" controls autoplay muted>
        <source src="{{asset('public/storage/properties/'.$prop->video)}}" type="video/mp4">
      </video>
      @else
      <p></p>

      @endif
      @endforeach
    </div> -->
    <div class="slidetop col-sm-12" style="z-index:-1;">
      <div class="owl-carousel" id="listcarousel">

        @foreach ($object->images as $image)
        <div class="item" style="width:700px !important;">
          {{-- json_decode($prop->images,true)[0] --}}

          <img src="{{asset('public/storage/'.$image)}}" style="width:50%;">
        </div>
        @endforeach
      </div>
    </div>
    <div class="slidebot">
      <div class="row">
        <!--<div class="col-6 col-md-7 col-sm-6">-->
        <!--    <div>-->
        <!--        <div class="owl-carousel" id="listcarouselthumb">-->
        <!--            @foreach($object->images as $image)-->
        <!--                <div class="item cthumb" rel="{{ $loop->index }}">-->
        <!--                    <img src="{{ RvMedia::getImageUrl($image, null, false, RvMedia::getDefaultImage()) }}"-->
        <!--                        class="showfullimg"-->
        <!--                        rel="{{ $loop->index }}"-->
        <!--                        alt="{{ $object->name }}"-->
        <!--                        data-mfp-src="{{ RvMedia::getImageUrl($image, null, false, RvMedia::getDefaultImage()) }}"-->
        <!--                        title="{{ $object->name }}">-->
        <!--                </div>-->
        <!--            @endforeach-->
        <!--        </div>-->
        <!--        <i class="fas fa-chevron-right ar-next"></i>-->
        <!--        <i class="fas fa-chevron-left ar-prev"></i>-->
        <!--    </div>-->
        <!--</div>-->
        <div class="col-6 col-md-5 col-sm-6" style="align-self: center">
          <div class="row control justify-content-sm-end justify-content-center">
            @foreach($props as $prop)


            <!--@if ($prop->video)-->
            <!--    <div class="col-6 col-sm-4 col-md-4 col-lg-2 itemct px-1 popup-youtube"  href="{{asset('public/storage/properties/'.$prop->video)}}">-->
            <!--        <div class="icon">-->
            <!--            <i class="fab fa-youtube"></i>-->
            <!--            <p>{{ __('Youtube') }}</p>-->
            <!--        </div>-->
            <!--    </div>-->
            <!--@endif-->
            <!--@endforeach-->
            <!--<div class="col-sm-4 col-md-4 col-lg-2 itemct d-none d-sm-block px-1 show-gallery-image">-->
            <!--    <div class="icon">-->
            <!--        <i class="fas fa-th"></i>-->
            <!--        <p>{{ __('Gallery') }}</p>-->
            <!--    </div>-->
            <!--</div>-->
            @if ($object->latitude && $object->longitude)
            <!--<div class="col-6 col-sm-4 col-md-4 col-lg-2 itemct px-1"-->
            <!--    data-magnific-popup="#trafficMap"-->
            <!--    data-map-id="trafficMap"-->
            <!--    data-popup-id="#traffic-popup-map-template"-->
            <!--    data-map-icon="{{ $object->map_icon }}"-->
            <!--    data-center="{{ json_encode([$object->latitude, $object->longitude]) }}">-->
            <!--    <div class="icon">-->
            <!--        <i class="far fa-map"></i>-->
            <!--        <p>{{ __('Map') }}</p>-->
            <!--    </div>-->
            <!--</div>-->
            @endif
          </div>
        </div>
      </div>
    </div>
  </div>
</div>