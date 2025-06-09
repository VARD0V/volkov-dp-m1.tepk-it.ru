<?php

use App\Http\Controllers\MaterialController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
})->name('home');
Route::resource('materials', MaterialController::class);
Route::get('/materials/{id}/products', [MaterialController::class, 'show'])->name('materials.show');

