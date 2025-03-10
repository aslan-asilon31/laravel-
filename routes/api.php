<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\UserController;  
use App\Http\Controllers\Api\ActionController;  
use App\Http\Controllers\Api\contents\ProductController;  
use App\Http\Controllers\Api\AuthController;  
use App\Http\Controllers\Api\contents\ProductCategoryFirstController;  
use App\Http\Controllers\Api\generals\MarketplaceController;
use App\Http\Controllers\Api\generals\EmployeeController;
use App\Http\Controllers\Api\generals\PositionController;
use App\Http\Controllers\Api\generals\PageController;
use App\Http\Controllers\Api\generals\PermissionController;
use App\Http\Controllers\Api\contents\MetaPropertyGroupController;
use App\Http\Controllers\Api\contents\MetaPropertyController;
use App\Http\Controllers\Api\contents\ProductBrandController;
use App\Http\Controllers\Api\contents\ProductContentController;
use App\Http\Controllers\Api\contents\CategoryRecommendationController;

use App\Http\Controllers\Api\sales\CustomerController;
use App\Http\Controllers\Api\sales\ProductSalesController;
use App\Http\Controllers\Api\CompanyController;


    Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
        return $request->user();
    });
    

    Route::get('api/products/{id}', [ProductController::class,'fetchById'])->name('products.fetchById');
    Route::get('api/products', [ProductController::class,'index'])->name('products.list');
    Route::get('api/products/create', [ProductController::class,'index'])->name('products.create');
    Route::post('api/products/store', [ProductController::class,'store'])->name('products.store');
    Route::get('api/products/show/{id}/{readonly}', [ProductController::class,'index'])->where('readonly', 'readonly')->name('products.show');
    Route::put('api/products/update/{id}', [ProductController::class, 'update']);
    Route::delete('api/products/delete/{id}', [ProductController::class, 'destroy']);


    Route::get('api/product-category-firsts', [ProductCategoryFirstController::class,''])->name('product_category_firsts.list');
    Route::get('api/product-category-firsts/create', [ProductCategoryFirstController::class,''])->name('product_category_firsts.create');
    Route::get('api/product-category-firsts/edit/{id}', [ProductCategoryFirstController::class,''])->name('product_category_firsts.edit');
    Route::get('api/product-category-firsts/show/{id}/{readonly}', [ProductCategoryFirstController::class,''])->where('readonly', 'readonly')->name('product_category_firsts.show');



    // Sales 
    Route::get('api/customers', [CustomerController::class,'index']);
    Route::get('api/customers/{id}', [CustomerController::class,'fetch_by_id'])->name('customers.list');
    Route::post('api/customers/store', [CustomerController::class,'store'])->name('customers.store');
    Route::post('api/customers/update/{id}', [CustomerController::class,'update'])->name('customers.update');
    Route::get('api/customers/create', [CustomerController::class,'index'])->name('customers.create');
    Route::get('api/customers/edit/{id}', [CustomerController::class,'index'])->name('customers.edit');
    Route::get('api/customers/show/{id}/{readonly}', [CustomerController::class,'index'])->where('readonly', 'readonly')->name('customers.show');
    Route::delete('api/customers/delete/{id}', [CustomerController::class, 'destroy'])->name('customers.delete'); // Route DELETE
    Route::get('api/customer-advanced', [CustomerController::class, 'fetchAdvanceSearch']);





