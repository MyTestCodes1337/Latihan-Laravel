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

Route::get('/', function () {
    return view('welcome');
});

Route::resource('pegawai','pegawaiController');

Route::get('/pegawai/change/{id}/{status}','pegawaiController@change')->name('pegawai.change');

// Route::get('/vue',function(){
// 	return view('vue.test');
// });