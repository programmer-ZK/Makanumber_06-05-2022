<div class=" mb-3 pb-2  w-100">
  <span style="font-size:32px; font-weight:bold;" class="ml-3">{{ $title }}</span>

  <ul class="mb-5 ml-3" style="margin-left:-25px; font-family:sans-serif !important;">
    <li style="float:left !important; font-family:sans-serif !important;">
      <a href="https://twitter.com/intent/tweet?url={{ urlencode(url()->current()) }}&text={{ $description }}" target="_blank" title="{{ __('Share on Twitter') }}"><i class="fa fa-twitter btn btn-primary p-2" style="padding:5px; width:121px; background-color:#55ACEE; "> <span style="font-family:sans-serif !important;"> twitter</span></i></a>
    </li>
    <li class="ml-2" style="float:left !important;">
      <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}&title={{ $description }}" target="_blank" title="{{ __('Share on Facebook') }}" style="font-family:sans-serif !important;"><i class="fab fa-facebook-f btn btn-success p-2" style="padding:5px;  width:121px; background-color:#3B5998;"> <span style="font-family:sans-serif !important;"> Facebook</span></i></a>
    </li>

    <li class="ml-2" style="float:left !important;">
      <a href="https://www.facebook.com/sharer/sharer.php?u={{ urlencode(url()->current()) }}&title={{ $description }}" target="_blank" title="{{ __('Send Email') }}"><i class="fa fa-envelope btn btn-success p-2" style="padding:5px; width:141px; background-color:#00B4A2;"><span style="font-family:sans-serif !important; font-weight:normal !important; "> Send Email</span></i></a>
    </li>
 
  </ul>
</div>

<style>
  .socials ul li a {
    display: block !important;
    color: #fff !important;
    line-height: 35px;
    text-align: center;
    font-size: 15px !important;
  }

  .fab {
    font-family: sans-serif !important;
  }
</style>