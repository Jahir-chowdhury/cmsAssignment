<?php
use Illuminate\Support\Facades\Input;
use App\Http\Controllers\FileUpload;
use App\User;


Route::get('/','welcomecontroller@index');
Route::get('/img','welcomecontroller@img');
Route::POST('/saveimg','welcomecontroller@saveimg');


Auth::routes();

Route::get('/home', 'HomeController@index');

//showing student course registraion page
Route::get('/courseReg', 'HomeController@courseReg');

//showing admin page
Route::get('/admin', 'HomeController@admin');

//admin create  and save courses
Route::get('/createCourse', 'HomeController@createCourse');
Route::POST('/saveCourse', 'HomeController@saveCourse');

//admin create  and save course Unit
Route::get('/createCourseUnit', 'HomeController@createCourseUnit');
Route::POST('/saveCourseUnit', 'HomeController@saveCourseUnit');







