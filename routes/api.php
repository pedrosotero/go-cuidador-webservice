<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['namespace' => 'API\Auth'], function () {
    Route::post('auth', ['as' => 'login', 'uses' => 'LoginController@login']);
    Route::post('auth_facebook', ['as' => 'auth.facebook', 'uses' => 'LoginController@facebook_login']);
    Route::resource('users', 'UserController', ['only' => ['store']]);
    Route::post('forgot_password', ['as' => 'users.forgot.password', 'uses' => 'UserController@forgotPassword']);
    Route::group(['middleware' => 'token'], function () {
        Route::resource('users', 'UserController', ['except' => ['store']]);
        Route::post('change_password/{id}', ['as' => 'users.change.password', 'uses' => 'UserController@changePassword']);
    });
});
Route::group(['namespace' => 'API', 'middleware' => 'token'], function () {
    //feed
    Route::resource('feed', 'FeedController', ['only' => ['index', 'show']]);
});
Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:api');
