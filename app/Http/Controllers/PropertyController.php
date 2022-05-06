<?php

namespace App\Http\Controllers;

use App\Models\PropertyModel;
use App\Models\Advertisement;
use Hash;
use Auth;
use DB;
use Carbon\Carbon;
use Illuminate\Support\Str;

use Illuminate\Http\Request;

class PropertyController extends Controller
{
  public function myProfile()
  {

    if (!Auth::user()) {
      return redirect('/');
    }

    $bannerImage = Advertisement::all();

    $userId = Auth::user()->id;
    $property = PropertyModel::where('author_id', $userId)->get();
    return view('Frontend.my-profile')->with(compact('property', 'bannerImage'));
  }



  public function addProperty(Request $request)
  {
    $fname = Auth::user()->first_name;
    $lname = Auth::user()->last_name;

    $property = new PropertyModel();
    $property->name = $request->prop_name;
    $property->content = "Content";
    $property->location = $request->address;
    $property->project_id = $request->propertyType;
    $property->number_bedroom = $request->bedroom;
    $property->number_bathroom = $request->bathroom;

    $property->maidroom = $request->maidRoom;
    $property->parking_space = $request->parking;
    $property->covered_parking = $request->c_parking;
    $property->furnished = $request->furnish;
    $property->developer = $request->developer;
    $property->year_built = $request->year;

    $property->square = $request->square;
    $property->price = $request->price;
    $property->price_unit = "";
    $property->is_featured = 1;

    $property->type = $request->property;
    $property->description = $request->description;
    $property->currency_id = 1;
    $property->city_id = $request->city_id;
    $property->period = 'month';
    $property->author_id = Auth::user()->id;
    $property->author_type = 'Botble\RealEstate\Models\Account';
    $property->author_name = $fname . ' ' . $lname;
    $property->auto_renew = 0;
    $property->never_expired = 1;
    $property->expire_date = now()->addDays(30);

    $images = $request->file('prop_images');
    $img_array = [];


    foreach ($images as $image) {
      if ($image) {
        $name = "/properties/" . rand() . '.' . $image->getClientOriginalExtension();
        $destinationPath = public_path('/storage/properties');
        $image->move($destinationPath, $name);
        array_push($img_array, $name);
      }
    }

    $property->images = json_encode($img_array);
    $video = $request->file('prop_video');
    if ($video) {
      $name1 = time() . '.' . $video->getClientOriginalExtension();
      $destinationPath = public_path('/storage/properties');
      $video->move($destinationPath, $name1);
      $property->video = $name1;
    }


    $slug = Str::slug($request->prop_name, '-');

    if ($property->save()) {
      $slugs = DB::table('slugs')->insert(
        array(
          'key'   =>  $slug,
          'reference_id' => $property->id,
          'reference_type' => 'Botble\RealEstate\Models\Property',
          'prefix' => 'properties',
          'created_at' => Carbon::now()->toDateTimeString(),
          'updated_at' => Carbon::now()->toDateTimeString(),

        )
      );

      $propCategory = DB::table('re_property_categories')->insert(
        array(
          'category_id' => $request->propertyType,
          'property_id' => $property->id,
        )
      );
      return redirect()->back()->with('success', 'Property Created Successfully');
    } else {
      return redirect()->back()->with('danger', 'Property Denied ');
    }
  }


  public function buyApartment()
  {
    $properties = PropertyModel::where('status', 'selling')->get();
    $test = DB::table('re_properties')->get();
    // dd($test);
    $property =   DB::table('re_properties')
      ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
      ->select('*')
      ->where('re_properties.status', 'selling')
      ->where('category_id', 1)
      ->where('is_featured', 1)
      ->get();




    //   dd($property);
    return view('Frontend.buyApartment')->with(compact('property'));
  }

  public function buyHouse()
  {
    $properties = PropertyModel::where('status', 'selling')->get();
    $test = DB::table('re_properties')->get();
    // dd($test);
    $property =   DB::table('re_properties')
      ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
      ->select('*')
      ->where('re_properties.status', 'selling')
      ->where('category_id', 4)
      ->where('is_featured', 1)
      ->get();
    //   dd($property);
    return view('Frontend.buyHouse')->with(compact('property'));
  }

  public function buyLand()
  {
    $properties = PropertyModel::where('status', 'selling')->get();
    $test = DB::table('re_properties')->get();
    // dd($test);
    $property =   DB::table('re_properties')
      ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
      ->select('*')
      ->where('re_properties.status', 'selling')
      ->where('category_id', 5)
      ->where('is_featured', 1)
      ->get();
    //   dd($property);
    return view('Frontend.buyLand')->with(compact('property'));
  }


  // Rent

  public function rentApartment()
  {
    $properties = PropertyModel::where('status', 'renting')->get();
    $test = DB::table('re_properties')->get();
    // dd($test);
    $property =   DB::table('re_properties')
      ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
      ->select('*')
      ->where('re_properties.status', 'renting')
      ->where('category_id', 1)
      ->where('is_featured', 1)
      ->get();

    //   dd($property);
    return view('Frontend.rentApartment')->with(compact('property'));
  }

  public function rentHouse()
  {
    $properties = PropertyModel::where('status', 'renting')->get();
    $test = DB::table('re_properties')->get();
    // dd($test);
    $property =   DB::table('re_properties')
      ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
      ->select('*')
      ->where('re_properties.status', 'renting')
      ->where('category_id', 4)
      ->where('is_featured', 1)
      ->get();
    //   dd($property);
    return view('Frontend.rentHouse')->with(compact('property'));
  }

  public function rentLand()
  {
    $properties = PropertyModel::where('status', 'renting')->get();
    $test = DB::table('re_properties')->get();
    // dd($test);
    $property =   DB::table('re_properties')
      ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
      ->select('*')
      ->where('re_properties.status', 'renting')
      ->where('category_id', 5)->where('is_featured', 1)
      ->get();
    //   dd($property);
    return view('Frontend.rentLand')->with(compact('property'));
  }


  public function searchProperty(Request $request)
  {

    $results =  DB::table('re_properties')
      ->select('*')
      ->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id')
      ->where('re_properties.name', 'like', '%' . $request->search_property . '%')
      ->orWhere('re_properties.location', 'like', '%' . $request->search_property . '%')
      ->where('re_properties.type', 'LIKE', '%' . $request->type . '%')
      ->where('re_property_categories.category_id', 'like', '%' . $request->property . '%')
      ->where('is_featured', 1)
      ->get();

    return view('Frontend.search')->with(compact('results'));


    $query = DB::table('re_properties')->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id');

    if ($request->filled('areaFrom') && $request->filled('areaTo')) {
      // dd('asd');
      $query  = $query->whereBetween('re_properties.square', [$request->areaFrom, $request->areaTo]);
    }
    if ($request->filled('propertyType')) {
      $query  = $query->where('re_property_categories.category_id', $request->propertyType);
    }
    if ($request->filled('beds')) {
      $query  = $query->where('re_properties.number_bedroom', $request->beds);
    }
    if ($request->filled('baths')) {
      $query  = $query->where('re_properties.number_bathroom', $request->baths);
    }
    if ($request->filled('priceFrom') && $request->filled('priceTo')) {
      $query  = $query->whereBetween('re_properties.price', [$request->priceFrom, $request->priceTo]);
    }
    $results = $query->get();
  }


  public function search(Request $request)
  {
    // SELECT re_properties.id, re_properties.price, re_properties.status, re_properties.type, re_properties.square, re_properties.number_bedroom, cities.name, re_categories.name FROM `re_properties` JOIN cities on re_properties.city_id = cities.id Join re_property_categories ON re_property_categories.property_id = re_properties.id JOIN re_categories on re_property_categories.category_id =re_categories.id

    $query = DB::table('re_properties')->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id');
    if ($request->filled('location')) {
      $query = $query->where('re_properties.city_id', $request->location);
    }
    if ($request->filled('purpose')) {
      $query = $query->where('re_properties.status', $request->purpose);
    }
    if ($request->filled('areaFrom') && $request->filled('areaTo')) {
      $query  = $query->whereBetween('re_properties.square', [$request->areaFrom, $request->areaTo]);
    }
    if ($request->filled('propertyType')) {
      $query  = $query->where('re_property_categories.category_id', $request->propertyType);
    }
    if ($request->filled('beds')) {
      $query  = $query->where('re_properties.number_bedroom', $request->beds);
    }
    if ($request->filled('priceFrom') && $request->filled('priceTo')) {
      $query  = $query->whereBetween('re_properties.price', [$request->priceFrom, $request->priceTo]);
    }
    $results = $query->where('is_featured', 1)->get();
    $data = $request->all();
    return view('Frontend.searchProperty')->with(compact('results', 'data'));
  }


  public function singleProperty(Request $request)
  {

    $query = DB::table('re_properties')->join('re_property_categories', 're_properties.id', '=', 're_property_categories.property_id');
    $cities = DB::table('cities')->where('state_id', $request->place)->get();
    $ids = $cities->pluck('id');

    if ($request->filled('place')) {
      $query = $query->whereIn('re_properties.city_id', $ids);
    }

    $data = $request->all();
    $results = $query->where('is_featured', 1)->get();
    // dd($results);
    return view('Frontend.searchProperty')->with(compact('results', 'data'));
  }
}
