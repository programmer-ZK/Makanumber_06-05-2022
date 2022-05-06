<?php

namespace App\Http\Controllers;

use App\Models\Subscription;
use Auth;

use Illuminate\Http\Request;

class SubscriptionController extends Controller
{

    public function package(Request $request)
    {
        $pkg = new Subscription();
        $pkg->pkg_name = $request->pkg_name;
        $pkg->price = $request->price;
        $pkg->days = $request->days;
        $pkg->user_id = Auth::user()->id;
        $pkg->status = $request->status;

        $pkgs = Subscription::where('user_id', Auth::user()->id)->update([
            'pkg_name' => $request->pkg_name,
            'price' => $request->price,
            'days' => $request->days,
            'status' => 1,
        ]);

        if ($pkgs) {
            $pkg->update();
            return redirect()->back()->with('success', "Package Updated Successfully");
        } else {
            $pkg->save();
            return redirect()->back()->with('success', "Package Added Successfully");
        }


        //   if($pkgs){
        //      $pkg->update()->with('success','Package Updated Successfully!');
        //          }
        //   else{
        //       $pkg->save()->with('success','Package Saved Successfully!');

        //   }
    }
}
