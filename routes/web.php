<?php

use App\Http\Controllers\TinController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',[TinController::class,'home'])->name('home');
Route::get('/chi-tiet/{id}',[TinController::class,'chiTiet'])->name('chiTiet');
Route::get('/tin-trong-loai/{id}',[TinController::class,'tinTrongLoai'])->name('tinTrongLoai');
