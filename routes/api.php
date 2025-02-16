<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\UserController;  
use App\Http\Controllers\Api\ActionController;  
use App\Http\Controllers\Api\AuthController;  
use App\Http\Controllers\Api\ProductController;  


// List all products  
// Route::get('/products', [ProductController::class, 'index'])->name('products.index');  
  
// // Show the form for creating a new product (optional for API)  
// Route::get('/products/create', [ProductController::class, 'create'])->name('products.create');  
  
// // Store a newly created product  
// Route::post('/products', [ProductController::class, 'store'])->name('products.store');  
  
// // Show a specific product  
// Route::get('/products/{id}', [ProductController::class, 'show'])->name('products.show');  
  
// // Show the form for editing a specific product (optional for API)  
// Route::get('/products/edit/{id}', [ProductController::class, 'edit'])->name('products.edit');  
  
// // Update a specific product  
// Route::put('/products/{id}', [ProductController::class, 'update'])->name('products.update');  
// Route::patch('/products/{id}', [ProductController::class, 'update']); // Alternative for partial updates  
  
// Delete a specific product  
// Route::delete('/products/{id}', [ProductController::class, 'destroy'])->name('products.destroy');  