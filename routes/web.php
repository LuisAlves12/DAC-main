<?php

use Illuminate\Support\Facades\Route;

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



Route::get('/', 'App\Http\Controllers\UserController@index')->name('index');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


//Route Perfis

Route::get('/perfil','App\Http\Controllers\PerfilController@index')->name('perfil.index');

Route::get('/perfil/show/{name}','App\Http\Controllers\PerfilController@show')->name('perfil.show');

Route::get('/perfil/{name}/edit','App\Http\Controllers\PerfilController@edit')->name('perfil.edit');

Route::post('/perfil/{name}/update','App\Http\Controllers\PerfilController@update')->name('perfil.update');

Route::get('/perfil/dashboard','App\Http\Controllers\UserController@dash')->name('perfil.dashboard');

//Route Frames

Route::get('/frame/index','App\Http\Controllers\FrameController@index')->name('frame.index');

Route::get('/frame/create','App\Http\Controllers\FrameController@create')->name('frame.create');

Route::post('/frame/store','App\Http\Controllers\FrameController@store')->name('frame.store');

//Route::get('/freame/{id}/edit','App\Http\Controllers\FrameController@edit')->name('frame.edit');

//Route::patch('/frame/{id}/update','App\Http\Controllers\FrameController@update')->name('frame.update');

// Route Musicas

Route::get('/musica/index','App\Http\Controllers\MusicaController@index')->name('musica.index');

Route::get('/musica/show/{id}','App\Http\Controllers\MusicaController@show')->name('musica.show');

Route::post('/musica/store','App\Http\Controllers\MusicaController@store')->name('musica.store');

Route::get('/musica/create','App\Http\Controllers\MusicaController@create')->name('musica.create');
