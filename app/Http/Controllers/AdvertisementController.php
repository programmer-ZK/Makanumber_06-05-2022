<?php

namespace App\Http\Controllers;
use App\Models\Advertisement;

use Illuminate\Http\Request;

class AdvertisementController extends Controller
{
    public function addAdvertisement(Request $request){
       $advertisement = new Advertisement();
       
        $image = $request->file('image');
        $name = time().'.'.$image->getClientOriginalExtension();
        $destinationPath = public_path('/storage/advertisement');
        $image->move($destinationPath, $name);
       
        $advertisement->image = $name;
        
        $advertisement->save();
        
        return redirect()->back();
    }
    

}
