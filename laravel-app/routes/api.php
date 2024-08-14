<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SanctumController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

//auth route
Route::post("/register", [SanctumController::class, 'register']);
Route::post("/login", [SanctumController::class, 'login']);
Route::post("/logout", [SanctumController::class, 'logout'])->middleware('auth:sanctum');

//profile
Route::post("/profile/image/{id}", [SanctumController::class, 'profilePhoto'])->middleware('auth:sanctum');

//products
Route::get("/products", [ProductController::class, 'index']);
Route::get("/product/{id}", [ProductController::class, 'show']);

//articles
Route::get("/articles", [ArticleController::class, 'index']);
Route::get("/article/{id}", [ArticleController::class, 'show']);
