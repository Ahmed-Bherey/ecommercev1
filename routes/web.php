<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\User\IndexController;
use App\Http\Controllers\Auth\UserLoginController;
use App\Http\Controllers\Auth\UserRegisterController;

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

// انشاء حساب
Route::get('register' , [UserRegisterController::class, 'registerForm'])->name('register.form');
Route::post('register' , [UserRegisterController::class, 'register'])->name('register');
Route::get('user/confirmNumber/{id}' , [UserRegisterController::class, 'confirmNumberIndex'])->name('user.confirmNumberIndex');
Route::post('confirmNumber/{id?}' , [UserRegisterController::class, 'confirmNumberupdate'])->name('user.confirmNumberupdate');
// تسجيل دخول
Route::prefix('login')->group(function(){
    Route::get('/' , [UserLoginController::class, 'loginForm'])->name('login.form');
    Route::post('/' , [UserLoginController::class, 'login'])->name('login');
});
// تسجيل خروج
Route::get('logout' , [UserLoginController::class, 'logout'])->name('logout');
// الصفحة الرئيسية
Route::get('/' , [IndexController::class, 'index'])->name('index');
