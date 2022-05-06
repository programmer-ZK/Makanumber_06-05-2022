<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/home', function(){
//     return view('Frontend.index');
// });

Route::get('/about-us', function () {
    return view('Frontend.about-us');
});



Route::get('/customer-service', function () {
    return view('Frontend.customer-service');
});

Route::get('/privacy-policy', function () {
    return view('Frontend.privacy-policy');
});

Route::get('/sign-in', function () {
    return view('Frontend.signIn');
});

Route::get('/create-account', function () {
    return view('Frontend.agency-signUp');
});


Route::get('/add-property', function () {
    return view('Frontend.add-property');
});

Route::post('/agency-signUp', 'App\Http\Controllers\UserController@agencySignUp');

Route::get('/activation/{token}', 'App\Http\Controllers\UserController@activation');

Route::get('/member-signUp', 'App\Http\Controllers\UserController@memberSignUp');

Route::get('/edit-profile/{id}', 'App\Http\Controllers\UserController@editProfile');

Route::get('/change-password/{id}', 'App\Http\Controllers\UserController@changePassword');

// Profile Pic

Route::post('/profile-pic/{id}', 'App\Http\Controllers\UserController@profilePic');
Route::delete('/delete-dp/{id}', 'App\Http\Controllers\UserController@deleteDp');

// Docs
Route::post('/upload-doc', 'App\Http\Controllers\UserController@uploadDoc');
Route::get('/download-doc', 'App\Http\Controllers\UserController@downloadDoc');
Route::post('/upload-funds', 'App\Http\Controllers\UserController@uploadFunds');

Route::post('/home-sale', 'App\Http\Controllers\UserController@homeSale');

Route::post('/property', 'App\Http\Controllers\PropertyController@addProperty');

Route::get('/my-profile', 'App\Http\Controllers\PropertyController@myProfile');

Route::get('/buy-apartment', 'App\Http\Controllers\PropertyController@buyApartment');

Route::get('/buy-house', 'App\Http\Controllers\PropertyController@buyHouse');

Route::get('/buy-land', 'App\Http\Controllers\PropertyController@buyLand');


// Rent
Route::get('/rent-apartment', 'App\Http\Controllers\PropertyController@rentApartment');

Route::get('/rent-house', 'App\Http\Controllers\PropertyController@rentHouse');

Route::get('/rent-land', 'App\Http\Controllers\PropertyController@rentLand');


// Search 
Route::get('/search-property', 'App\Http\Controllers\PropertyController@searchProperty');


// All Seacrh
Route::get('/search-propeties', 'App\Http\Controllers\PropertyController@search');

Route::post('/create-blog', 'App\Http\Controllers\BlogController@create');

Route::get('/blogs', 'App\Http\Controllers\BlogController@index');

Route::post('/add-advertisement', 'App\Http\Controllers\AdvertisementController@addAdvertisement');


// Email
Route::post('/send-mail', 'App\Http\Controllers\ContactController@email');

Route::post('package', 'App\Http\Controllers\SubscriptionController@package');

Route::post('/search', 'App\Http\Controllers\PropertyController@singleProperty');

Route::get('/clear', function () {

    Artisan::call('cache:clear');
    Artisan::call('config:cache');
    return "Cleared!";
});
