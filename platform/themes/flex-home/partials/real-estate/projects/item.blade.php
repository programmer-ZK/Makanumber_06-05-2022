@php 
$users = \App\Models\UserModel::where(['id' => $project->author_id])->get();
            
@endphp
<div class="container-fluid mt-5 pb-5" >
  <div class="items ">
    <div class="item" style="width:400px; border-radius:5px; height:400px !important;">
      <span class="premium1 " style="color:white;
    background-color: red;
    border-bottom-left-radius: 18px;
    padding: 5px 20px;
    position:absolute;
   float: right;
   margin-left: 82%;
   z-index:1">New</span>
      <img class="thumb" data-src="{{ RvMedia::getImageUrl($project->image, 'small', false, RvMedia::getDefaultImage()) }}" src="{{ RvMedia::getImageUrl($project->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="{{ $project->name }}" />
      <div class="descriptions" >
      <div class="row pl-3 pt-2">
      <div class="col-sm-12">
        <p>{{ $project->name }}</p>
      </div>
      <div class="col-sm-4">
             @if ($project->price_from || $project->price_to)

        <p class="descrip">{{ __('Price') }}: @if ($project->price_from) <span class="from">{{ __('From') }}</span> {{ format_price($project->price_from, $project->currency) }} @endif @if ($project->price_to) - {{ format_price($project->price_to, $project->currency) }} @endif</p>
       @endif
      </div>
    </div>

    <div class="row pl-3">
      <div class="col-sm">
      <span class="address">{{ $project->city->name }}, {{ $project->city->state->name }} </span>
      </div>
    </div>

    <div class="row pl-2">
      <div class="col-sm px-4">
        <hr class="green" style="border: 1px solid #0AAC7E;"/>
      </div>
    </div>

   
   <div class="row pl-2 pb-2 no-gutters" style="color:grey">
  <div class="col-sm">
      &nbsp;&nbsp;
    <span><i class="fa fa-area-chart" aria-hidden="true" style="color:gold;"></i> 250.sq ft </span>

    

    <span><i class="fa fa-bed" aria-hidden="true" style="color:#FB9F35;"></i> 2</span>
 
    <span><i class="fa fa-bath" aria-hidden="true" style="color:#FB9F35;"></i> 1</span>
</div>
&nbsp;
<div class="col-sm">
@foreach($users as $user)
@if($user['avatar_id'])
<span style="display:inline;" class="align:right;">
<img src="{{asset('public/storage/users/'.$user['avatar_id'])}}" aria-hidden="true" style="width:24px; height:24px; border-radius: 50%; float:left; text-align:right; margin-left:37%;"  class="mb-2"><span style="float:left; text-align:right; align-item:right;">&nbsp;  {{$user->first_name}} {{$user->last_name}}</span></span>
@else
 <span class="icon" style="margin-left:27%;"><i class="fa fa-user" aria-hidden="true" style="height:34px; border-radius:5px; !important; "></i></span> {{$user->first_name}} {{$user->last_name}}
  @endif
  @endforeach
 </div>


</div>
   
    </div>
  </div>

</div></div>





{{-- <div class="item">
    <div class="blii">
        <div class="img"><img class="thumb" data-src="{{ RvMedia::getImageUrl($project->image, 'small', false, RvMedia::getDefaultImage()) }}" src="{{ RvMedia::getImageUrl($project->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="{{ $project->name }}">
        </div>
        <a href="{{ $project->url }}" class="linkdetail"></a>
        <ul class="item-price-wrap hide-on-list"><li class="h-type"><span>{{ $project->category->name }}</span></li></ul>
    </div>

    <div class="description">
        <a href="{{ $project->url }}"><h5>{{ $project->name }}</h5>
            <p class="dia_chi"><i class="fas fa-map-marker-alt"></i> {{ $project->city->name }}, {{ $project->city->state->name }}</p>
            @if ($project->price_from || $project->price_to)
                <p class="bold500">{{ __('Price') }}: @if ($project->price_from) <span class="from">{{ __('From') }}</span> {{ format_price($project->price_from, $project->currency) }} @endif @if ($project->price_to) - {{ format_price($project->price_to, $project->currency) }} @endif</p>
            @endif
        </a>
    </div>
</div>  --}}


<style>
  .green {
    border: 1px solid #0AAC7E !important;
}
</style>
