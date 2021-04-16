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

Route::get('/kotedzas',[
	'as'=>'kotedzas',
	'uses'=>'ViewController@kotedzas']);

Route::get('/kotedzas/{kotedzas}', 'ViewController@kotedzushow');

Route::get('/1/1',[
	'as'=>'pirmopirmas',
	'uses'=>'ViewController@pirmopirmas']);

Route::get('/pirmasa', 'ViewController@pirmasa');

Route::get('/1/1/{butas}', 'ViewController@pirmasashow');

Route::get('/1/2',[
	'as'=>'pirmoantras',
	'uses'=>'ViewController@pirmoantras']);

Route::get('/pirmasb', 'ViewController@pirmasb');

Route::get('/1/2/{butas}', 'ViewController@pirmasbshow');

Route::get('/1/3',[
	'as'=>'pirmotrecias',
	'uses'=>'ViewController@pirmotrecias']);

Route::get('/pirmasc', 'ViewController@pirmasc');

Route::get('/1/3/{butas}', 'ViewController@pirmascshow');

Route::get('/2/1',[
	'as'=>'antropirmas',
	'uses'=>'ViewController@antropirmas']);

Route::get('/antrasa', 'ViewController@antrasa');

Route::get('/2/1/{butas}', 'ViewController@antrasashow');

Route::get('/2/2',[
	'as'=>'antroantras',
	'uses'=>'ViewController@antroantras']);

Route::get('/antrasb', 'ViewController@antrasb');

Route::get('/2/2/{butas}', 'ViewController@antrasbshow');

Route::get('/2/3',[
	'as'=>'antrotrecias',
	'uses'=>'ViewController@antrotrecias']);

Route::get('/antrasc', 'ViewController@antrasc');

Route::get('/2/3/{butas}', 'ViewController@antrascshow');

Route::get('/3/1',[
	'as'=>'treciopirmas',
	'uses'=>'ViewController@treciopirmas']);

Route::get('/treciasa', 'ViewController@treciasa');

Route::get('/3/1/{butas}', 'ViewController@treciasashow');

Route::get('/3/2',[
	'as'=>'trecioantras',
	'uses'=>'ViewController@trecioantras']);

Route::get('/treciasb', 'ViewController@treciasb');

Route::get('/3/2/{butas}', 'ViewController@treciasbshow');

Route::get('/3/3',[
	'as'=>'treciotrecias',
	'uses'=>'ViewController@treciotrecias']);

Route::get('/treciasc', 'ViewController@treciasc');

Route::get('/3/3/{butas}', 'ViewController@treciascshow');

Route::get('/4/1',[
	'as'=>'ketvirtopirmas',
	'uses'=>'ViewController@ketvirtopirmas']);

Route::get('/ketvirtasa', 'ViewController@ketvirtasa');

Route::get('/4/1/{butas}', 'ViewController@ketvirtasashow');

Route::get('/4/2',[
	'as'=>'ketvirtoantras',
	'uses'=>'ViewController@ketvirtoantras']);

Route::get('/ketvirtasb', 'ViewController@ketvirtasb');

Route::get('/4/2/{butas}', 'ViewController@ketvirtasbshow');

Route::get('/4/3',[
	'as'=>'ketvirtotrecias',
	'uses'=>'ViewController@ketvirtotrecias']);

Route::get('/ketvirtasc', 'ViewController@ketvirtasc');

Route::get('/4/3/{butas}', 'ViewController@ketvirtascshow');

Route::get('/kotedzasjson', 'ViewController@kotedzasjson');

Route::get('/valdymopultas', 'AdminController@index');

Route::get('/cpkotedzai', 
	['as'=>'cpkotedzai',
 'uses'=> 'AdminController@editkotedzai']);

Route::patch('/cpkotedzai/{kotedzas}', 'AdminController@updatekotedzai');

Route::patch('/cp1namas1/{pirmasa}', 'AdminController@updatepirmasa');

Route::patch('/cp1namas2/{pirmasb}', 'AdminController@updatepirmasb');

Route::patch('/cp1namas3/{pirmasc}', 'AdminController@updatepirmasc');

Route::patch('/cp2namas1/{antrasa}', 'AdminController@updateantrasa');

Route::patch('/cp2namas2/{antrasb}', 'AdminController@updateantrasb');

Route::patch('/cp2namas3/{antrasc}', 'AdminController@updateantrasc');

Route::patch('/cp3namas1/{treciasa}', 'AdminController@updatetreciasa');

Route::patch('/cp3namas2/{treciasb}', 'AdminController@updatetreciasb');

Route::patch('/cp3namas3/{treciasc}', 'AdminController@updatetreciasc');

Route::patch('/cp4namas1/{ketvirtasa}', 'AdminController@updateketvirtasa');

Route::patch('/cp4namas2/{ketvirtasb}', 'AdminController@updateketvirtasb');

Route::patch('/cp4namas3/{ketvirtasc}', 'AdminController@updateketvirtasc');

Route::post('/sold', ['as'=>'kotedzasp',
'uses' => 'AdminController@kotedzasp']);

Route::post('/rez', ['as'=>'kotedzasr',
'uses' => 'AdminController@kotedzasr']);

Route::post('/laisvas', ['as'=>'kotedzasl',
'uses' => 'AdminController@kotedzasl']);

Route::get('/cppirmas', 
	['as'=>'cppirmas',
 'uses'=> 'AdminController@editpirmas']);

Route::post('/pirmasap', ['as'=>'pirmasap',
'uses' => 'AdminController@pirmasap']);

Route::post('/pirmasar', ['as'=>'pirmasar',
'uses' => 'AdminController@pirmasar']);

Route::post('/pirmasal', ['as'=>'pirmasal',
'uses' => 'AdminController@pirmasal']);

Route::post('/pirmasbp', ['as'=>'pirmasbp',
'uses' => 'AdminController@pirmasbp']);

Route::post('/pirmasbr', ['as'=>'pirmasbr',
'uses' => 'AdminController@pirmasbr']);

Route::post('/pirmasbl', ['as'=>'pirmasbl',
'uses' => 'AdminController@pirmasbl']);

Route::post('/pirmascp', ['as'=>'pirmascp',
'uses' => 'AdminController@pirmascp']);

Route::post('/pirmascr', ['as'=>'pirmascr',
'uses' => 'AdminController@pirmascr']);

Route::post('/pirmascl', ['as'=>'pirmascl',
'uses' => 'AdminController@pirmascl']);

Route::get('/cpantras', 
	['as'=>'cpantras',
 'uses'=> 'AdminController@editantras']);

Route::post('/antrasap', ['as'=>'antrasap',
'uses' => 'AdminController@antrasap']);

Route::post('/antrasar', ['as'=>'antrasar',
'uses' => 'AdminController@antrasar']);

Route::post('/antrasal', ['as'=>'antrasal',
'uses' => 'AdminController@antrasal']);

Route::post('/antrasbp', ['as'=>'antrasbp',
'uses' => 'AdminController@antrasbp']);

Route::post('/antrasbr', ['as'=>'antrasbr',
'uses' => 'AdminController@antrasbr']);

Route::post('/antrasbl', ['as'=>'antrasbl',
'uses' => 'AdminController@antrasbl']);

Route::post('/antrascp', ['as'=>'antrascp',
'uses' => 'AdminController@antrascp']);

Route::post('/antrascr', ['as'=>'antrascr',
'uses' => 'AdminController@antrascr']);

Route::post('/antrascl', ['as'=>'antrascl',
'uses' => 'AdminController@antrascl']);

Route::get('/cptrecias', 
	['as'=>'cptrecias',
 'uses'=> 'AdminController@edittrecias']);

Route::post('/treciasap', ['as'=>'treciasap',
'uses' => 'AdminController@treciasap']);

Route::post('/treciasar', ['as'=>'treciasar',
'uses' => 'AdminController@treciasar']);

Route::post('/treciasal', ['as'=>'treciasal',
'uses' => 'AdminController@treciasal']);

Route::post('/treciasbp', ['as'=>'treciasbp',
'uses' => 'AdminController@treciasbp']);

Route::post('/treciasbr', ['as'=>'treciasbr',
'uses' => 'AdminController@treciasbr']);

Route::post('/treciasbl', ['as'=>'treciasbl',
'uses' => 'AdminController@treciasbl']);

Route::post('/treciascp', ['as'=>'treciascp',
'uses' => 'AdminController@treciascp']);

Route::post('/treciascr', ['as'=>'treciascr',
'uses' => 'AdminController@treciascr']);

Route::post('/treciascl', ['as'=>'treciascl',
'uses' => 'AdminController@treciascl']);

Route::get('/cpketvirtas', 
	['as'=>'cpketvirtas',
 'uses'=> 'AdminController@editketvirtas']);

Route::post('/ketvirtasap', ['as'=>'ketvirtasap',
'uses' => 'AdminController@ketvirtasap']);

Route::post('/ketvirtasar', ['as'=>'ketvirtasar',
'uses' => 'AdminController@ketvirtasar']);

Route::post('/ketvirtasal', ['as'=>'ketvirtasal',
'uses' => 'AdminController@ketvirtasal']);

Route::post('/ketvirtasbp', ['as'=>'ketvirtasbp',
'uses' => 'AdminController@ketvirtasbp']);

Route::post('/ketvirtasbr', ['as'=>'ketvirtasbr',
'uses' => 'AdminController@ketvirtasbr']);

Route::post('/ketvirtasbl', ['as'=>'ketvirtasbl',
'uses' => 'AdminController@ketvirtasbl']);

Route::post('/ketvirtascp', ['as'=>'ketvirtascp',
'uses' => 'AdminController@ketvirtascp']);

Route::post('/ketvirtascr', ['as'=>'ketvirtascr',
'uses' => 'AdminController@ketvirtascr']);

Route::post('/ketvirtascl', ['as'=>'ketvirtascl',
'uses' => 'AdminController@ketvirtascl']);


Route::get('kontaktai', 'MailController@kontaktai');

Route::post('kontaktai', [
	'as'=> 'sendmail',
    'uses' => 'MailController@sendmail']);

Route::get('vieta', 'ViewController@vieta');

Route::get('apieprojekta', 'ViewController@apieprojekta');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
