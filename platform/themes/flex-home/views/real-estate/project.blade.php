@php
    Theme::asset()->usePath()->add('leaflet-css', 'libraries/leaflet.css');
    Theme::asset()->container('footer')->usePath()->add('leaflet-js', 'libraries/leaflet.js');
    Theme::asset()->usePath()->add('magnific-css', 'libraries/magnific/magnific-popup.css');
    Theme::asset()->container('footer')->usePath()->add('magnific-js', 'libraries/magnific/jquery.magnific-popup.min.js');
@endphp
<?php
$bannerImage = \App\Models\Advertisement::all();
$users = \App\Models\UserModel::where(['id' => $project->author_id])->get();
?>

<style>
    #admin_bar{
        display:none !important;
    }
</style>
<form action="/search-propeties" method="get">
            @csrf
<div class="container mt-3">
   
            <div class="row mt-2">

                <div class="col-sm">
                    <div class="form-group">
                    <!-- <label for="email">Email:</label> -->
                    <input type="search" class="form-control" placeholder="Emirates,Address,Offices,Agent" name="place" >
                    </div>
                </div>

                <div class="col-sm-9">
                    <div class="row no-gutters">

                        <div class="col-sm mr-2">

                             <div class="input-group" style="width:100px;" >
                                <select class="custom-select" id="inputGroupSelect01" name="area" style="color:grey;">
                                  <option >Area(Sq.ft)</option>
                                  <option value="100">100 Sq.ft</option>
                                  <option value="200">200 Sq.ft</option>
                                  <option value="300">300 Sq.ft</option>
                                  <option value="400">400 Sq.ft</option>
                                  <option value="500">500 Sq.ft</option>
                                  <option value="600">600 Sq.ft</option>
                                  <option value="700">700 Sq.ft</option>
                                  <option value="800">800 Sq.ft</option>
                                  <option value="900">900 Sq.ft</option>
                                  <option value="1000">1000 Sq.ft</option>
                                  <option value="1100">1100 Sq.ft</option>
                                  <option value="1200">1200 Sq.ft</option>
                                  <option value="1300">1300 Sq.ft</option>
                                  <option value="1400">1400 Sq.ft</option>
                                  <option value="1500">1500 Sq.ft</option>
                                  <option value="1600">1600 Sq.ft</option>
                                  <option value="1700">1700 Sq.ft</option>
                                  <option value="1800">1800 Sq.ft</option>
                                  <option value="1900">1900 Sq.ft</option>
                                  <option value="2000">2000 Sq.ft</option>
                                </select>
                            </div>
        
                        </div>
        
                        <div class="col-sm mr-2" >
        
                            <div class="input-group" style="width:140px;" >
                                <select class="custom-select" id="inputGroupSelect01" name="projectType" style="color:grey;">
                                  <option selected>project Type</option>
                                  <option value="2">Apartment</option>
                                  <option value="1">Offices</option>
                                  <option value="4">House</option>
                                  <option value="5">Land</option>
                                </select>
                            </div>
        
                        </div>

                       
        
                        <div class="col-sm mr-2" >
        
                            <div class="input-group"  >
                                <select class="custom-select" id="inputGroupSelect01" name="beds" style="color:grey;">
                                  <option selected>Beds</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                </select>
                            </div>
        
                        </div>
        
                        <div class="col-sm mr-2">
        
                            <div class="input-group"  >
                                <select class="custom-select" id="inputGroupSelect01" name="baths" style="color:grey;">
                                  <option selected>Baths</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                </select>
                            </div>
        
                        </div>
        
        
                        <div class="col-sm mr-2">
        
                            <div class="input-group" style="width:110px;" >
                                <select class="custom-select" id="inputGroupSelect01" name="priceFrom" style="color:grey;">
                                  <option selected>Min Price</option>
                                  <option value="1000">1000</option>
                                  <option value="5000">5000</option>
                                  <option value="10000">10,000</option>
                                  <option value="20000">20,000</option>
                                  <option value="30000">30,000</option>
                                  <option value="40000">40,000</option>
                                  <option value="50000">50,000</option>
                                  
                                  
                                </select>
                            </div>
        
                        </div>
        
                        <div class="col-sm ">
        
                            <div class="input-group" style="width:110px;" >
                                <select class="custom-select" id="inputGroupSelect01" name="priceTo" style="color:grey;">
                                  <option selected>Max Price</option>
                                  <option value="50000">50,000</option>
                                  <option value="100000">100,000</option>
                                  <option value="200000">200,000</option>
                                  <option value="300000">300,000</option>
                                  <option value="400000">400,000</option>
                                  <option value="500000">500,000</option>
                                  <option value="600000">600,000</option>
                                  <option value="700000">700,000</option>
                                  <option value="800000">800,000</option>
                                  <option value="900000">900,000</option>
                                  <option value="1000000">10,000,00</option>
                                  
                                </select>
                            </div>
        
                        </div>
                        
                        <div class="col-sm ml-5">
                            <button class="btn btn-success" type="submit" style="background-color:#00B4A2; width:100px;">Search</button>
                        </div>
                        



                        
                    </div>


                </div>

            

                    
            </div>

 
    
</div>
        </form>
<main1 class="detailproject">
    @include(Theme::getThemeNamespace() . '::views.real-estate.includes.slider', ['object' => $project])


 <section class="container">
 
    <section class="row">
 
        <section class="col-sm" >
            <button style="color: white; background-color: #00B4A2; padding: 5px; border: #00B4A2; margin-top: 20px; border-radius: 4px;">For {{$project->status}} </button>
            <h3 style="font-weight:bold;" class="mt-2">{{ $project->price_html }} </h3>
            <p style="color: #FB9F35;">Created {{ $project->created_at }}</p>
            <p><i class="fa fa-map-marker"></i> {{ $project->city_name }}</p>
            <!-- <i class="fa-solid fa-location-dot"></i> -->
            <div class="row no-gutters" style="display:flex; flex-direction:row !important;">
                <div class="col-sm-4">
        
                   <h5>{{ implode(', ', $project->categories()->pluck('name')->all()) }}</h5>
                  <p >Type</p>
                    
                </div>
                <div class="col-sm-2">
                   <h5>{{ number_format($project->number_block) }}</h5><p>Blocks</p>
                    
                </div>
                <div class="col-sm-2">
                   <h5>{{ number_format($project->number_floor) }}</h5><p>{{ __('Floors') }}</p>
                    
                </div>
                <div class="col-sm-2">
                   <h5>{{ number_format($project->number_flat) }}</h5><p>{{ __('Flats') }}</p>
                    
                </div>
            </div>
            <p>{!! clean($project->content) !!}</p>
 
        </section>
        <div class="col-md-4 p-5">
                @if ($author = $project->author)
                    <div class="boxright p-5" style="width:350px; height:200px;">
                        
                        @foreach($users as $user)
                        <div class="row rowm10 itemagent">
                            <div class="col-lg-4 colm10">
                                
                                @if ($author->username)
                                    <a href="{{ route('public.agent', $author->username) }}">
                                        @if ($user->avatar_id)
                                            <img src="{{asset('public/storage/users/'.$user['avatar_id'])}}" alt="{{ $author->name }}" class="img-thumbnail" style="border-radius:50%; height:70px; width:80px;">
                                        @else
                                            <span><i class="fa fa-user" aria-hidden="true" style="font-size:48px; padding:10px; color:rgb(0, 180, 162); border-radius:50%; border:1px solid green !important;"></i></span>
                                        @endif
                                    </a>
                                @else
                                    @if ($author->avatar->url)
                                        <span class="icon"><i class="fa fa-user" aria-hidden="true" style="height:70px; border-radius:5px; !important;"></i></span>
                                    @else
                                        <span class="icon"><i class="fa fa-user" aria-hidden="true" style="height:70px; border-radius:5px; !important;"></i></span>
                                    @endif
                                @endif
                            </div>
                            <div class="col-lg-8 colm10">
                                <div class="info mt-2">
                                    <p>
                                        <strong >
                                            @if ($author->username)
                                                <span class="mt-5" href="{{ route('public.agent', $author->username) }}">{{ $project->author_name }}</span>
                                            @else
                                               <span style="margin-top:4px;"> {{ $author->name }}</span>
                                            @endif
                                        </strong>
                                    </p>
                                   
                                    <!--<p class="mobile">{{ $author->phone }}</p>-->
                                    <p>{{ $user->email }}</p>
                                    @if ($author->username)
                                        <!--<p><span class="fas fa-arrow-circle-right"></span> <a href="{{ route('public.agent', $author->username) }}">{{ __('More properties by this agent') }}</a></p>-->
                                    @endif
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                @endif
         
            </div>
    </section>
    
</section>


    <div class="container-fluid w90 padtop30 single-post">
        <section class="general">
            <div class="row">
                <div class="col-md-8">
                    <div class="head">{{ __('Overview') }}</div>
                    <span class="line_title"></span>
                    <div class="row">
                        <div class="col-sm-6 lineheight220">
                            <div><span>{{ __('Status') }}:</span> <b>{{ $project->status->label() }}</b></div>
                            @if ($project->categories()->count()) <div><span>{{ __('Category') }}:</span> <strong>{{ implode(', ', $project->categories()->pluck('name')->all()) }}</strong></div> @endif
                            @if ($project->investor->name) <div><span>{{ __('Investor') }}:</span> <b>{{ $project->investor->name }}</b></div> @endif
                            @if ($project->price_from || $project->price_to)
                            <div>
                                <span>{{ __('Price') }}:</span>
                                <b>@if ($project->price_from)
                                    <span class="from">{{ __('From') }}</span>
                                    {{ format_price($project->price_from, $project->currency)  }} @endif
                                    @if ($project->price_to) - {{ format_price($project->price_to, $project->currency) }} @endif
                                </b>
                            </div>
                            @endif
                        </div>
                        <div class="col-sm-6 lineheight220">
                            @if ($project->number_block) <div><span>{{ __('Number of blocks') }}:</span> <b>{{ number_format($project->number_block) }}</b></div> @endif
                            @if ($project->number_floor) <div><span>{{ __('Number of floors') }}:</span> <b>{{ number_format($project->number_floor) }}</b></div>@endif
                            @if ($project->number_flat) <div><span>{{ __('Number of flats') }}:</span> <b>{{ number_format($project->number_flat) }}</b></div>@endif
                        </div>
                    </div>

                   
                    @if ($project->content)
                        {!! clean($project->content) !!}
                    @endif
                    @if ($project->features->count())
                        <div class="head">{{ __('Features') }}</div>
                        <div class="row">
                            @foreach($project->features as $feature)
                                <div class="col-sm-4">
                                    <p><i class="fas fa-check text-orange text0i"></i>  {{ $feature->name }}</p>
                                </div>
                            @endforeach
                        </div>
                    @endif
                    <br>
                    @if ($project->facilities->count())
                        <div class="row">
                            <div class="col-sm-12">
                                <h5 class="headifhouse">{{ __('Distance key between facilities') }}</h5>
                                <div class="row">
                                    @foreach($project->facilities as $facility)
                                        <div class="col-sm-4">
                                            <p><i class="@if ($facility->icon) {{ $facility->icon }} @else fas fa-check @endif text-orange text0i"></i>  {{ $facility->name }} - {{ $facility->pivot->distance }} {{ __('km') }}</p>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    @endif
                    <br>
                    @if ($project->latitude && $project->longitude)
                        {!! Theme::partial('real-estate.elements.traffic-map-modal', ['location' => $project->location . ', ' . $project->city_name]) !!}
                    @else
                        {!! Theme::partial('real-estate.elements.gmap-canvas', ['location' => $project->location]) !!}
                    @endif
                    @if ($project->video_url)
                        {!! Theme::partial('real-estate.elements.video', ['object' => $project, 'title' => __('Project video')]) !!}
                    @endif
                    <br>
                    {!! Theme::partial('share', ['title' => __('Share this project'), 'description' => $project->description]) !!}
                    <div class="clearfix"></div>
                    <br>
                </div>
                <div class="col-md-4 padtop10">
                    <div class="boxright p-3">
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
                </div>
            </div>

            <h5  class="headifhouse">{{ __('Properties For Sale') }}</h5>
            <div class="projecthome mb-2">
                <project-component type="project-properties-for-sell" :project_id="{{ $project->id }}" url="{{ route('public.ajax.properties') }}" :show_empty_string="true"></project-component>
            </div>

            <h5  class="headifhouse">{{ __('Properties For Rent') }}</h5>
            <div class="projecthome mb-4">
                <project-component type="project-properties-for-rent" :project_id="{{ $project->id }}" url="{{ route('public.ajax.properties') }}" :show_empty_string="true"></project-component>
            </div>
        </section>

    </div>
</main1>

<script id="traffic-popup-map-template" type="text/x-custom-template">
    {!! Theme::partial('real-estate.projects.map', ['project' => $project]) !!}
</script>
