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

use App\JobReference;
use App\Company;

Route::get('/', function () {
    return view('welcome');
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home')->middleware('auth');

Route::group(['middleware' => 'auth'], function () {

	Route::group(['prefix' => 'company-list'], function () {
		Route::get('', 'CompanyController@index')->name('table');
		Route::get('/edit/{company}', ['as' => 'company.edit', 'uses' => 'CompanyController@edit']);
		Route::get('/create', ['as' => 'company.create', 'uses' => 'CompanyController@create']);
		Route::post('/store', ['as' => 'company.store', 'uses' => 'CompanyController@store']);
		Route::delete('/delete/{company}', ['as' => 'company.destroy', 'uses' => 'CompanyController@destroy']);
		Route::put('/update/{company}', ['as' => 'company.update', 'uses' => 'CompanyController@update']);
	});

	Route::group(['prefix' => 'employee-list'], function () {
		Route::get('', 'EmployeeController@index')->name('employee');
		Route::get('/edit/{employee}', ['as' => 'employee.edit', 'uses' => 'EmployeeController@edit']);
		Route::get('/create', ['as' => 'employee.create', 'uses' => 'EmployeeController@create']);
		Route::post('/store', ['as' => 'employee.store', 'uses' => 'EmployeeController@store']);
		Route::delete('/delete/{employee}', ['as' => 'employee.destroy', 'uses' => 'EmployeeController@destroy']);
		Route::put('/update/{employee}', ['as' => 'employee.update', 'uses' => 'EmployeeController@update']);
	});

	Route::get('notifications', function () {
		return view('pages.notifications');
	})->name('notifications');

	Route::get('/job-data', function(){
		$jobs = JobReference::all();
		return $jobs;
	});
	Route::get('/company-data', function(){
		$companies = Company::all();
		return $companies;
	});
});

Route::group(['middleware' => 'auth'], function () {
	Route::resource('user', 'UserController', ['except' => ['show']]);
	Route::get('profile', ['as' => 'profile.edit', 'uses' => 'ProfileController@edit']);
	Route::put('profile', ['as' => 'profile.update', 'uses' => 'ProfileController@update']);
	Route::put('profile/password', ['as' => 'profile.password', 'uses' => 'ProfileController@password']);
});

