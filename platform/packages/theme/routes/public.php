<?php

use Botble\Theme\Events\ThemeRoutingAfterEvent;
use Botble\Theme\Events\ThemeRoutingBeforeEvent;
use Botble\RealEstate\Models\Project;
use Botble\RealEstate\Models\Property;
use Botble\ACL\Http\Controllers\Auth\LoginController;


Route::group(['namespace' => 'Botble\Theme\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {
        event(new ThemeRoutingBeforeEvent);

        // Route::get('/', [
        //     'as'   => 'public.index',
        //     'uses' => 'PublicController@getIndex',
        // ]);
        // Route::get('/', 'LoginController@showLoginForm');
        Route::get('/', [LoginController::class, 'showLoginForm'])->name('access.login');
        Route::post('/', [LoginController::class, 'login'])->name('access.login.post');
        Route::get('sitemap.xml', [
            'as'   => 'public.sitemap',
            'uses' => 'PublicController@getSiteMap',
        ]);

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), [
            'as'   => 'public.single',
            'uses' => 'PublicController@getView',
        ]);

        event(new ThemeRoutingAfterEvent);
    });
});
