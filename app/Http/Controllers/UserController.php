<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use App\Models\Document;
use Hash;
use Auth;
use Session;
use Mail;
use DB;
use Carbon\Carbon;
use RvMedia;

class UserController extends Controller
{
  public function agencySignUp(Request $request)
  {

    $this->validate($request, [
      'password'     => 'min:6',
      'confirm_password' => 'same:password',
    ]);

    $roles = DB::table('roles')->where("id", 2)->first();


    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < 61; $i++) {
      $randomString .= $characters[rand(0, $charactersLength - 1)];
    }

    $user = new UserModel();
    $user->username = $request->name;
    $user->first_name = $request->fname;
    $user->last_name = $request->lname;
    $user->phone = $request->phone;
    $user->password = Hash::make($request->password);
    $user->email = $request->email;
    $user->documents = $request->document;
    $user->super_user = $request->super_user;
    $user->remember_token = $randomString;
    $user->permissions = $roles->permissions;


    $ifEmailExists = DB::table('users')->where('email', $request->email)->value('email');
    if ($ifEmailExists == $request->email) {
      echo "<script>alert('$ifEmailExists already exists!')</script>";
      return redirect()->back()->with('danger', 'User Email Already Exist! You cannot register');
    } else {
      if ($user->save()) {

        $pkg = DB::table('subscription')->insert(
          array(
            'pkg_name'   =>  'Free First Post',
            'price' => 0,
            'days' => 1,
            'images' => NULL,
            'status' => 1,
            'user_id' => $user->id,

          )
        );

        $role = DB::table('role_users')->insert(
          array(
            'user_id' => $user->id,
            'role_id' => 2,
            'created_at' => Carbon::now()->toDateTimeString(),
            'updated_at' => Carbon::now()->toDateTimeString(),
          )
        );


        $to_name = $request->name;
        $to_email = $request->email;
        $body = $_SERVER['SERVER_NAME'] . "/activation/$randomString";
        $data = array("name" => $to_name, "body" => $body);
        Mail::send("activation", $data, function ($message) use ($to_name, $to_email) {
          $message->to($to_email, $to_name)
            ->subject("Activation Email");
          $message->from("noreply@makanumber.com", "Makanumber");
        });

        if ($request->hasFile('letter')) {
          $documents = new Document;
          $image = $request->file('letter');

          $name = time() . '.' . $image->getClientOriginalExtension();
          $destinationPath = public_path('/storage/documents');
          $image->move($destinationPath, $name);
          // dd($request);
          $documents->user_id = $user->id;
          $documents->letter = $name;
          $documents->save();

          $user->documents = $documents->id;
          $user->save();
        }
        return redirect()->back()->with('success', 'Agency Created Successfully! An activation email has sent to your email, check to login, it maybe in your spams folder');
      } else {
        return redirect()->back()->with('danger', 'User denied!');
      }
    }
  }

  public function memberSignUp(Request $request)
  {
    $this->validate($request, [
      'pswd1'     => 'required|min:6',
      'pswd2' => 'same:pswd1',
    ]);

    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < 61; $i++) {
      $randomString .= $characters[rand(0, $charactersLength - 1)];
    }

    $user = new UserModel();
    $user->username = $request->name;
    $user->first_name = $request->fname;
    $user->last_name = $request->lname;
    $user->phone = $request->phone;
    $user->password = Hash::make($request->pswd1);
    $user->email = $request->email;
    $user->super_user = $request->super_user;
    $user->remember_token = $randomString;


    $ifEmailExists = DB::table('users')->where('email', $request->email)->value('email');
    if ($ifEmailExists == $request->email) {
      echo "<script>alert('$ifEmailExists already exists!')</script>";
      return redirect()->back()->with('danger', 'User Email Already Exist! You cannot register');
    } else {
      if ($user->save()) {

        $pkg = DB::table('subscription')->insert(
          array(
            'pkg_name'   =>  'Free First Post',
            'price' => 0,
            'days' => 1,
            'images' => NULL,
            'status' => 1,
            'user_id' => $user->id,
          )
        );

        $role = DB::table('role_users')->insert(
          array(
            'user_id' => $user->id,
            'role_id' => 3,
            'created_at' => Carbon::now()->toDateTimeString(),
            'updated_at' => Carbon::now()->toDateTimeString(),
          )
        );



        $to_name = $request->name;
        $to_email = $request->email;
        $body = $_SERVER['SERVER_NAME'] . "/activation/$randomString";
        $data = array("name" => $to_name, "body" => $body);
        Mail::send("activation", $data, function ($message) use ($to_name, $to_email) {
          $message->to($to_email, $to_name)
            ->subject("Activation Email");
          $message->from("noreply@makanumber.com", "Makanumber");
        });

        return redirect()->back()->with('success', 'User Created Successfully! An activation email has sent to your email, check to login, it maybe in your spams folder');
      } else {
        return redirect()->back()->with('danger', 'User Denied!');
      }
    }
  }

  public function activation(Request $request, $token)
  {

    $id = DB::table('users')->where('remember_token', '=', $token)->value('id');
    $name = DB::table('users')->where('remember_token', '=', $token)->value('first_name');
    $activations_id = DB::table('activations')->where('user_id', '=', $id)->value('completed');

    if ($activations_id > 0) {
      return view('Frontend.activate');
    } else {
      DB::table('activations')->insert([
        'user_id' => $id,
        'completed' => 1
      ]);

      $user = UserModel::find($id);
      $user->email_verified_at =  Carbon::now()->toDateTimeString();
      $user->update();

      return view('Frontend.activate', ['name' => $name]);
    }
  }

  public function editProfile(Request $request, $id)
  {
    $user = UserModel::find($id);
    $user->username = $request->name;
    $user->email = $request->email;
    $user->phone = $request->phone;
    $user->update();


    return redirect()->back()->with('success', 'Profile Updated Successfully!');
  }

  public function changePassword(Request $request, $id)
  {
    $this->validate($request, [
      'old_password'     => 'required',
      'new_password'     => 'required|min:6',
      'confirm_password' => 'required|same:new_password',
    ]);

    $data = $request->all();

    if (!Hash::check($request->old_password, auth()->user()->password)) {
      return redirect()->back()->with('danger', 'Old Password is Incorrect');
    } else {
      $user = UserModel::find($id);
      $user->password = Hash::make($request->new_password);
      $user->update();
      return redirect()->back()->with('success', 'Password Updated Successfully');
    }
  }


  public function profilePic(Request $request, $id)
  {
    $user = UserModel::find($id);
    $image = $request->file('profile_pic');
    $name = time() . '.' . $image->getClientOriginalExtension();
    $destinationPath = public_path('/storage/users');
    $image->move($destinationPath, $name);

    $user->avatar_id = $name;
    $user->update();


    return back()->with('success', 'Profile Picture Updated Successfully!');
  }

  public function deleteDp(Request $request, $id)
  {
    $user = UserModel::find($id);
    $user->avatar_id = NULL;
    $user->update();

    return back()->with('success', 'Profile Picture Deleted Successfully!');
  }

  public function uploadDoc(Request $request)
  {

    if ($request->hasFile('letter')) {
      $documents = new Document;
      $documents->user_id = Auth::user()->id;

      $doc = Document::where('user_id', Auth::user()->id)->first();


      $image = $request->file('letter');

      $name = time() . '.' . $image->getClientOriginalExtension();
      $destinationPath = public_path('/storage/documents');
      $image->move($destinationPath, $name);
      // dd($request);
      $doc = Document::where('user_id', Auth::user()->id)->update(['letter' => $name]);
      $documents->letter = $name;
      if ($doc) {
        $documents->update();
      } else {
        $documents->save();
      }

      $get_document = Document::where('user_id', Auth::user()->id)->first();
      $user = UserModel::where('id', Auth::user()->id)->first();
      $user->documents = $get_document->id;
      $user->save();

      return back()->with('success', 'Documents Uploaded Successfully!');
    } else {
      return back()->with('error', 'Something went wrong');
    }
  }



  public function uploadFunds(Request $request)
  {


    $documents = new Document;
    $documents->user_id = Auth::user()->id;

    $doc = Document::where('user_id', Auth::user()->id)->first();


    $image = $request->file('funds');

    $name = time() . '.' . $image->getClientOriginalExtension();
    $destinationPath = public_path('/storage/documents');
    $image->move($destinationPath, $name);
    // dd($request);
    $doc = Document::where('user_id', Auth::user()->id)->update(['funds' => $name]);
    $documents->funds = $name;
    if ($doc) {
      $documents->update();
    } else {
      $documents->save();
    }

    return back()->with('success', 'Documents Uploaded Successfully!');
  }



  public function homeSale(Request $request)
  {


    $documents = new Document;
    $documents->user_id = Auth::user()->id;

    $doc = Document::where('user_id', Auth::user()->id)->first();


    $image = $request->file('home_sale');

    $name = time() . '.' . $image->getClientOriginalExtension();
    $destinationPath = public_path('/storage/documents');
    $image->move($destinationPath, $name);
    // dd($request);
    $doc = Document::where('user_id', Auth::user()->id)->update(['home_sale' => $name]);
    $documents->home_sale = $name;
    if ($doc) {
      $documents->update();
    } else {
      $documents->save();
    }

    return back()->with('success', 'Documents Uploaded Successfully!');
  }

  public function downloadDoc()
  {
    $user = Auth::user()->documents;
    $document = Document::where("id", $user)->first();
    $file = public_path() . '/storage/documents/' . $document->letter;
    return response()->make(file_get_contents($file), 200, [
      'Content-Disposition' => 'attachment; filename="' . $document->letter . '"',
    ]);
  }
}
