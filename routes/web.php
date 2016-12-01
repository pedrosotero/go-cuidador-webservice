<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::resource('caregivers', 'CaregiverController', ['only' => ['store']]);
Route::get('/success', function () {
    return view('success');
})->name('caregiver.success');
Route::get('/', function () {
    return view('welcome');
});
