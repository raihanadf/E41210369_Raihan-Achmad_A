<?php

use App\Http\Controllers\BlogController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;

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
    return redirect('/home');
});

Route::get('/dashboard', [DashboardController::class, 'index']);
Route::get('/index', [DashboardController::class, 'home']);

Route::get('/home', [BlogController::class, 'home']);
Route::get('/about', [BlogController::class, 'about']);
Route::get('/blog', [BlogController::class, 'blog']);
