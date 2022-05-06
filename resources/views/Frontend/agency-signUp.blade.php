  @extends('layouts.master')


  @section('title', 'Create Account | Makanumber')

  @section('content')
  <style>

  </style>
  <section class="container-fluid">
    <section class="row justify-content-center" style="margin-top: 5%;">

      <section class="col-sm-6 ">
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
        <H3 style="font-weight: 700">CREATE AN ACCOUNT</H3>

        <label> Type </label><br>

        <button id="member" class="ag_member mr-3" style="color: #8695A1;">Member</button>
        <button id="agency" class="ag_agency" style="color: #ffffff; background: rgb(0,180,162);">Agency</button>
        <form class="form-container agency-section mt-3 mb-5" method="POST" action="/agency-signUp" enctype="multipart/form-data">

          @csrf
          <input type="hidden" name="super_user" value="0" />
          <div class="form-group ">
            <label for="exampleInputEmail1" style="color: black;">Email</label>
            <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" required>
          </div>
          <section class="row justify-content-center">
            <section class="col-6 ">
              <div class="form-group">
                <label for="phone" style="color: black;">Phone (optional)</label>
                <input type="tel" class="form-control" id="phone" name="phone" placeholder="+971 55 xxxxxx">
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group">
                <label for="exampleInputEmail1" style="color: black;">User Name</label>
                <input type="text" class="form-control" name="name" placeholder="User Name" required>

              </div>
            </section>
          </section>

          <section class="row justify-content-center">
            <section class="col-6 ">
              <div class="form-group">
                <label for="phone" style="color: black;">First Name</label>
                <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" required>
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group">
                <label for="phone" style="color: black;">Last Name</label>
                <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" required>
              </div>
            </section>
          </section>
          <section class="row justify-content-center mb-3">
            <section class="col-6 ">
              <div class="form-group">
                <label style="color: black;">Password</label>
                <input type="password" class="form-control " name="password" required placeholder="Password" required>
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group">
                <label style="color: black;">Confirm Password</label>
                <input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" required>
              </div>

            </section>

          </section>

          <label style="color: black;">Select a Document</label>

          <div class="custom-file form-group mb-4">
            <input type="file" class="custom-file-input" id="customFile" name="letter" accept="application/pdf,application/vnd.ms-excel" style="opacity: 1; padding: 4px 0px 0px 3px;">
            <label class="custom-file-label" for="customFile">Choose file</label>
          </div>

          <div class="form-group form-check">
            <input type="checkbox" class="form-check-input is-invalid" value="" id="exampleCheck1" required>
            <label class="form-check-label" for="exampleCheck1" style="color: black;">I am real estate agent</label><br>


            <input type="checkbox" class="form-check-input is-invalid" value="" id="exampleCheck2" required>
            <label class="form-check-label" for="exampleCheck2" style="color: black;">
              I agree to Makanumber <a href="/customer-service" style="text-decoration: underline !important; color: #00b4a2 !important;">privacy policy</a></label>
          </div>
          <button type="submit" style="width: 20% !important; border: 1px rgb(0,180,162); border-radius: 5px; background: rgb(0,180,162);" class="btn btn-primary mb-3">Sign up</button><br>

          <span style="color: black;">Already have an account?</span><a href="/admin/login" style="text-decoration: underline !important; color: #00b4a2 !important;"> Sign in</a>

        </form>

      </section>

    </section>
  </section>

  <!-- Sign up end -->

  <section class="container-fluid">
    <section class="row justify-content-center ">

      <section class="col-sm-6 ">
        <form class="form-container member-section mt-3 mb-5" method="get" action="/member-signUp" style="display:none;">
          @csrf
          <input type="hidden" name="super_user" value="0" />
          <div class="form-group">
            <label for="exampleInputEmail1" style="color:black;">Email</label>
            <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Email" required>
          </div>
          <section class="row justify-content-center">
            <section class="col-6 ">
              <div class="form-group">
                <label for="phone" style="color:black;">Phone (optional)</label>
                <input type="tel" class="form-control" id="phone" name="phone" placeholder="Phone No">
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group" style="color:black;">
                <label for="exampleInputEmail1">User Name</label>
                <input type="text" class="form-control" placeholder="User Name" name="name" required>

              </div>
            </section>
          </section>

          <section class="row justify-content-center">
            <section class="col-6 ">
              <div class="form-group" style="color:black;">
                <label for="phone">First Name</label>
                <input type="text" class="form-control" id="fname" name="fname" placeholder="First Name" required>
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group">
                <label for="phone" style="color:black;">Last Name</label>
                <input type="text" class="form-control" id="lname" name="lname" placeholder="Last Name" required>
              </div>
            </section>
          </section>
          <section class="row justify-content-center mb-5">
            <section class="col-6 ">
              <div class="form-group">
                <label style="color:black;">Password</label>
                <input type="password" class="form-control " name="pswd1" required placeholder="Password" required>
              </div>
            </section>

            <section class="col-6 ">
              <div class="form-group">
                <label style="color:black;">Confirm Password</label>
                <input type="password" class="form-control" name="pswd2" placeholder="Confirm Password" required>
              </div>
            </section>
          </section>

          <div class="form-group form-check">
            <input type="checkbox" class="form-check-input is-invalid" value="" id="exampleCheck12" required>
            <label class="form-check-label" for="exampleCheck12" style="color: black;">
              I agree to Makanumber <a href="/customer-service" style="text-decoration: underline !important; color: #00b4a2 !important;">privacy policy</a></label>
          </div>
          <button type="submit" style=" width: 20% !important; border: 1px rgb(0,180,162); border-radius: 5px; ; background: rgb(0,180,162);" class="btn btn-primary mb-3">Sign up</button><br>

          <span style="color: black;">Already have an account?</span><a href="/admin/login" style="text-decoration: underline !important;  color: #00b4a2 !important;"> Sign in</a>
          <!-- <button type="submit" style=" border: 1px solid #D3D3D3;" class="btn btn-light btn-block" >Create an account</button> -->

        </form>

      </section>


    </section>
  </section>

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
      $('#member').click(function() {
        $('.member-section').show();
        $('.agency-section').hide();
        $('.ag_member').css('background-color', 'rgb(0,180,162)');
        $('.ag_member').css('color', '#ffffff');
        $('.ag_agency').css('background-color', 'transparent');
        $('.ag_agency').css('color', '#8695A1');


      });

      $('#agency').click(function() {
        $('.agency-section').show();
        $('.member-section').hide();
        $('.ag_agency').css('background-color', 'rgb(0,180,162)');
        $('.ag_agency').css('color', '#ffffff');
        $('.ag_member').css('background-color', 'transparent');
        $('.ag_member').css('color', '#8695A1');

      });

    });
  </script>
  @stop