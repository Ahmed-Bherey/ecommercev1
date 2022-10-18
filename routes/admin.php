<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Auth\AdminLoginController;
use App\Http\Controllers\Admin\CreateAdminController;


// تسجيل دخول
Route::prefix('login')->group(function(){
    Route::get('/admin' , [AdminLoginController::class, 'loginForm'])->name('admin.login.form');
    Route::post('/admin' , [AdminLoginController::class, 'login'])->name('admin.login');
});
// تسجيل خروج
Route::get('logout/admin' , [AdminLoginController::class, 'logout'])->name('admin.logout');
Route::middleware('authAdmin')->prefix('admin')->group(function(){
    Route::get('/' , [DashboardController::class, 'index'])->name('dashboard');
    // المستخدمين
    Route::get('users' , [UserController::class, 'index'])->name('user.index');
    Route::get('users/{id}' , [UserController::class, 'edit'])->name('user.edit');
    Route::post('users/{id}' , [UserController::class, 'update'])->name('user.update');
    Route::get('users/destroy/{id}' , [UserController::class, 'destroy'])->name('user.destroy');
    Route::get('blockList/users' , [UserController::class, 'blockList'])->name('user.list');
    // اضافة ادمن
    Route::get('admin/create' , [CreateAdminController::class, 'create'])->name('createAdmin.create');
    Route::post('admin/create' , [CreateAdminController::class, 'store'])->name('createAdmin.store');
    Route::get('admin/edit/{id}' , [CreateAdminController::class, 'edit'])->name('createAdmin.edit');
    Route::post('admin/update/{id}' , [CreateAdminController::class, 'update'])->name('createAdmin.update');
    Route::get('admin/destroy/{id}' , [CreateAdminController::class, 'destroy'])->name('createAdmin.destroy');
});
