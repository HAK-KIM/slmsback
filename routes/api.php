<?php

use App\Http\Controllers\AdminController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\LeaveController;
use App\Http\Controllers\UserController;

//user login
Route::post('/login',[UserController::class,'login']);
//admin login
Route::post('/loginAdmin', [AdminController::class, 'login']);

Route::group(['middleware'=>['auth:sanctum']],function(){
    // crud leave requests
    Route::apiResource('requests', LeaveController::class);

    // crud student
    Route::apiResource('/students', UserController::class);

    // send mail
    Route::post('admin/email/{id}', [AdminController::class, 'storeSingleEmail'])->name('store.user.email');
    Route::post('user/email/{id}', [UserController::class, 'storeSingleEmail'])->name('store.user.email');

    // logout
    Route::post('/logout', [UserController::class, 'logout']);
    // UPDATE IMAGE SET
    Route::put('/upload/{id}', [UserController::class, 'updateImage']);
    // UPDATE IMAGE SET
    Route::put('/password/{id}', [UserController::class, 'updatePassword']);

});
//GET ADMIN
Route::apiResource('/admins', AdminController::class);
Route::put('/admin_upload/{id}', [AdminController::class, 'updateImage']);
Route::put('/admin_password/{id}', [AdminController::class, 'updatePassword']);
