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
Route::group(['namespace' => 'Site', 'as' => 'site.'], function () {
    Route::get('/', 'WelcomeController')->name('home');
    Route::get('/contact', 'ContactController@index')->name('contact.index');

    Route::group(['as' => 'service.'], function () {
        Route::get('/ambulante-begeleiding', 'PageController@guidance')->name('guidance.index');
        Route::get('/woonbegeleiding', 'PageController@residential')->name('residential.index');
        Route::get('/thuiszorg-en-advies', 'PageController@advice')->name('advice.index');
        Route::get('/aanmelden', 'PageController@signup')->name('signup.index');
    });

    Route::group(['as' => 'organization.'], function () {
        Route::get('/organisatie', 'PageController@organization')->name('organization.index');
        Route::get('/voor-wie', 'PageController@whom')->name('whom.index');
        Route::get('/documenten', 'PageController@document')->name('document.index');
    });
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
