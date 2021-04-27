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

Route::get('/', 'ViewController@index');

Route::get('/pirmasd',
	['as'=>'pirmasd',
		'uses'=>'ViewController@pirmasd']
	);

Route::get('/antrasd',[
	'as'=>'antrasd',
	'uses'=>'ViewController@antrasd']);

Route::get('/treciasd',[
	'as'=>'treciasd',
	'uses'=>'ViewController@treciasd']);

Route::get('/ketvirtasd',[
	'as'=>'ketvirtasd',
	'uses'=>'ViewController@ketvirtasd']);

Route::get('/namas/{namas}/{aukstas}','ViewController@butai');

Route::get('/pirmasa', 'ViewController@pirmasa');

Route::get('/pirmas', 'ViewController@pirmas');
Route::get('/antras', 'ViewController@antras');
Route::get('/trecias', 'ViewController@trecias');
Route::get('/ketvirtas', 'ViewController@ketvirtas');

Route::get('/namas/{namas}/{aukstas}/{butas}', 'ViewController@butashow');


Route::get('/valdymopultas', 'AdminController@index');

Route::get('/admin-namas/{id}', 'AdminController@editNamoButai')->name('admin-namas'); //??

Route::patch('/update/{namasId}/{butasId}', 'AdminController@update');

Route::post('/update-status', ['as'=>'update-status',
'uses' => 'AdminController@updateStatus']);

Route::get('/kontaktai', 'MailController@kontaktai');

Route::post('/kontaktai', [
	'as'=> 'sendmail',
    'uses' => 'MailController@sendmail']);

Route::get('/vieta', 'ViewController@vieta');

Route::get('/apieprojekta', 'ViewController@apieprojekta');

Route::post('/filtras', 'ViewController@filtras')->name('filter');

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');