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


{{-- <footer>
    <br>
    <div class="container-fluid w90">
        <div class="row">
            <div class="col-sm-3">
                @if (theme_option('logo'))
                <p>
                    <a href="{{ route('public.single') }}">
<img src="{{ RvMedia::getImageUrl(theme_option('logo'))  }}" style="max-height: 38px" alt="{{ theme_option('site_name') }}">
</a>
</p>
@endif
@if (theme_option('address'))
<p><i class="fas fa-map-marker-alt"></i> &nbsp;{{ theme_option('address') }}</p>
@endif
@if (theme_option('hotline'))
<p><i class="fas fa-phone-square"></i> {{ __('Hotline') }}: &nbsp;<a href="tel:{{ theme_option('hotline') }}">{{ theme_option('hotline') }}</a></p>
@endif
@if (theme_option('email'))
<p><i class="fas fa-envelope"></i> {{ __('Email') }}: &nbsp;<a href="mailto:{{ theme_option('email') }}">{{ theme_option('email') }}</a></p>
@endif
</div>
<div class="col-sm-9 padtop10">
  <div class="row">
    {!! dynamic_sidebar('footer_sidebar') !!}
  </div>
</div>
</div>
<div class="row">
  <div class="col-12">
    {!! Theme::partial('language-switcher') !!}
  </div>
</div>
<div class="copyright">
  <div class="col-sm-12">
    <p class="text-center">
      {!! clean(theme_option('copyright')) !!}
    </p>
  </div>
</div>
</div>
</footer> --}}
<!--FOOTER-->

<style>
  .green1 {
    border: 1px solid #00B4A2;
    margin-right: 65%;
  }

  li {
    color: #2A2A2A !important;
  }

  @media screen and (max-width: 480px) {
    .foot-descip {
      padding-right: 40px !important;
    }

    .social-icons {
      text-align: center !important;
      margin-bottom: 30px !important;
    }

    .green1 {
      border: 1px solid #00B4A2;
      margin-right: 80%;
    }

    .padding {
      padding-left: 50px;
    }

    .mob-padding {
      padding-top: 30px !important;
      margin-top: 20px !important;
    }

    .mob-float {
      float: left !important;
      text-align: center !important;
      margin-left: 0px !important;
    }

    .display {
      display: none;
    }
  }
</style>

<script>
  window.trans = {
    "Price": "{{ __('Price') }}",
    "Number of rooms": "{{ __('Number of rooms') }}",
    "Number of rest rooms": "{{ __('Number of rest rooms') }}",
    "Square": "{{ __('Square') }}",
    "No property found": "{{ __('No property found') }}",
    "million": "{{ __('million') }}",
    "billion": "{{ __('billion') }}",
    "in": "{{ __('in') }}",
    "Added to wishlist successfully!": "{{ __('Added to wishlist successfully!') }}",
    "Removed from wishlist successfully!": "{{ __('Removed from wishlist successfully!') }}",
    "I care about this property!!!": "{{ __('I care about this property!!!') }}",
  }
  window.themeUrl = '{{ Theme::asset()->url('
  ') }}';
  window.siteUrl = '{{ url('
  ') }}';
  window.currentLanguage = '{{ App::getLocale() }}';
</script>

<!--END FOOTER-->

{{--<div class="action_footer">
    <a href="#" class="cd-top"><i class="fas fa-arrow-up"></i></a>
    @if (theme_option('hotline'))
        <a href="tel:{{ theme_option('hotline') }}" style="color: white;font-size: 17px;"><i class="fas fa-phone"></i> <span> &nbsp;{{ theme_option('hotline') }}</span></a>
@endif
</div> --}}

{!! Theme::footer() !!}
</body>


</html>