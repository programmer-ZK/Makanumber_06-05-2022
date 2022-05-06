@php
$users = \App\Models\UserModel::where(['id' => $property->author_id])->get();

@endphp
{{-- <div class="items" style="width:350px !important;"    >
  
    <div class="item" style="background-color:#333333; height:385px;" id="notes" >
    <!--  <span class="premium float-right pl-4 pr-4" style="color:white;-->
    <!-- background-color: red;-->
    <!-- border-bottom-left-radius: 18px;-->
    <!-- padding: 5px 15px !important;-->
    <!-- position:absolute;-->
    <!--float: right;-->
    <!--margin-left: 79%;-->
    <!--z-index:1;">{!! $property->status !!}</span>-->
     <img class="thumb"
                data-src="{{ RvMedia::getImageUrl($property->image, 'small', false, RvMedia::getDefaultImage()) }}"
src="{{ RvMedia::getImageUrl($property->image, 'small', false, RvMedia::getDefaultImage()) }}"
alt="{{ $property->name }}">
<div class="row pl-3 pt-2 no-gutters" style="height:60px !important;">
  <div class="col-sm-7">
    <p><a style="color:white !important;" href="{{ $property->url }}">{{Str::limit($property->name, 24)}} </a></p>

  </div>
  <div class="col-sm-5">
    <p class="descrip" style="color:#0AAC7E;">AED {{$property->price}}</p>
  </div>
</div>

<div class="row pl-3">
  <div class="col-sm">
    <span class="address">{{ $property->city->name }} </span>
  </div>
</div>

<div class="row pl-2">
  <div class="col-sm px-4">
    <hr class="green" />
  </div>
</div>

<div class="row pl-2 pb-2" style="color:grey">
  <div class="col-sm">
    &nbsp;&nbsp;
    @if ($property->square)
    <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> {{ $property->square_text }} </span>
    @endif

    @if ($property->number_bedroom)
    <span><i class="fa fa-bed" aria-hidden="true" style="color:#FB9F35;"></i> {{ $property->number_bedroom }}</span>
    @endif
    @if ($property->number_bathroom)
    <span><i class="fa fa-bath" aria-hidden="true" style="color:#FB9F35;"></i> {{ $property->number_bathroom }}</span>
    @endif
    &nbsp;
    @foreach($users as $user)
    @if($user['avatar_id'])
    <img src="{{asset('public/storage/users/'.$user['avatar_id'])}}" style="width:24px; height:24px; border-radius: 50%; margin-left:25%;" alt="profile-pic" class="mb-1" /> {{$property->author_name}}
    @else
    <span class="icon" style="margin-left:25%;"><i class="fa fa-user" aria-hidden="true" style="height:34px; border-radius:5px; !important; "></i></span> {{$property->author_name}}
    @endif
    @endforeach
  </div>

</div>

</div>


</div> --}}

<!--Carousal-->






<!--{{-- <div class="item" data-lat="{{ $property->latitude }}" data-long="{{ $property->longitude }}">-->
<!--    <div class="blii">-->
<!--        <div class="img">-->
<!--            <img class="thumb"-->
<!--                data-src="{{ RvMedia::getImageUrl($property->image, 'small', false, RvMedia::getDefaultImage()) }}"-->
<!--                src="{{ RvMedia::getImageUrl($property->image, 'small', false, RvMedia::getDefaultImage()) }}"-->
<!--                alt="{{ $property->name }}">-->
<!--        </div>-->
<!--        <a href="{{ $property->url }}" class="linkdetail"></a>-->
<!--        <div class="media-count-wrapper">-->
<!--            <div class="media-count">-->
<!--                <img src="{{ Theme::asset()->url('images/media-count.svg') }}" alt="media">-->
<!--                <span>{{ count($property->images) }}</span>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="status">{!! $property->status->toHtml() !!}</div>-->
<!--        <ul class="item-price-wrap hide-on-list">-->
<!--            <li class="h-type"><span>{{ $property->category->name }}</span></li>-->
<!--            <li class="item-price">{{ format_price($property->price, $property->currency) }}</li>-->
<!--        </ul>-->
<!--    </div>-->

<!--    <div class="description">-->
<!--        <a href="#" class="text-orange heart add-to-wishlist" data-id="{{ $property->id }}"-->
<!--            title="{{ __('I care about this property!!!') }}"><i class="far fa-heart"></i></a>-->
<!--        <a href="{{ $property->url }}">-->
<!--            <h5>{{ $property->name }}</h5>-->
<!--            <p class="dia_chi"><i class="fas fa-map-marker-alt"></i> {{ $property->city->name }},-->
<!--                {{ $property->city->state->name }}</p>-->
<!--        </a>-->
<!--        <p class="threemt bold500">-->
<!--            @if ($property->number_bedroom)-->
<!--            <span data-toggle="tooltip" data-placement="top" data-original-title="{{ __('Number of rooms') }}">-->
<!--                <i><img src="{{ Theme::asset()->url('images/bed.svg') }}" alt="icon"></i> <i-->
<!--                    class="vti">{{ $property->number_bedroom }}</i> </span>-->
<!--            @endif-->
<!--            @if ($property->number_bathroom)-->
<!--            <span data-toggle="tooltip" data-placement="top"-->
<!--                data-original-title="{{ __('Number of rest rooms') }}"> <i><img-->
<!--                        src="{{ Theme::asset()->url('images/bath.svg') }}" alt="icon"></i> <i-->
<!--                    class="vti">{{ $property->number_bathroom }}</i></span>-->
<!--            @endif-->
<!--            @if ($property->square)-->
<!--            <span data-toggle="tooltip" data-placement="top" data-original-title="{{ __('Square') }}"> <i><img-->
<!--                        src="{{ Theme::asset()->url('images/area.svg') }}" alt="icon"></i> <i-->
<!--                    class="vti">{{ $property->square_text }}</i> </span>-->
<!--            @endif-->
<!--        </p>-->
<!--    </div>-->
<!--</div>   --}}-->