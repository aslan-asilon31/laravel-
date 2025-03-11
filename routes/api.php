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

use App\Http\Controllers\Api\SettingController;


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

Route::get('api/settings', [SettingController::class,'index'])->name('settings.index');


Route::get('api/product-category-firsts', [ProductCategoryFirstController::class,'index']);
Route::get('api/product-category-firsts/{id}', [ProductCategoryFirstController::class,'fetch_by_id'])->name('product_category_firsts.list');
Route::post('api/product-category-firsts/store', [ProductCategoryFirstController::class,'store'])->name('product_category_firsts.store');
Route::post('api/product-category-firsts/update/{id}', [ProductCategoryFirstController::class,'update'])->name('product_category_firsts.update');
Route::get('api/product-category-firsts/create', [ProductCategoryFirstController::class,'index'])->name('product_category_firsts.create');
Route::get('api/product-category-firsts/edit/{id}', [ProductCategoryFirstController::class,'index'])->name('product_category_firsts.edit');
Route::get('api/product-category-firsts/show/{id}/{readonly}', [ProductCategoryFirstController::class,'index'])->where('readonly', 'readonly')->name('product_category_firsts.show');
Route::delete('api/product-category-firsts/delete/{id}', [ProductCategoryFirstController::class, 'destroy'])->name('product_category_firsts.delete'); // Route DELETE
Route::get('api/product-category-firsts-advanced/{slug}', [ProductCategoryFirstController::class, 'product_category_firsts.fetchAdvanceSearch']);



Route::get('api/product-contents', [ProductContentController::class,'index']);
Route::get('api/product-contents/{id}', [ProductContentController::class,'fetch_by_id'])->name('product_contents.list');
Route::post('api/product-contents/store', [ProductContentController::class,'store'])->name('product_contents.store');
Route::post('api/product-contents/update/{id}', [ProductContentController::class,'update'])->name('product_contents.update');
Route::get('api/product-contents/create', [ProductContentController::class,'index'])->name('product_contents.create');
Route::get('api/product-contents/edit/{id}', [ProductContentController::class,'index'])->name('product_contents.edit');
Route::get('api/product-contents/show/{id}/{readonly}', [ProductContentController::class,'index'])->where('readonly', 'readonly')->name('product_contents.show');
Route::delete('api/product-contents/delete/{id}', [ProductContentController::class, 'destroy'])->name('product_contents.delete'); // Route DELETE
Route::get('api/product-contents-advanced/{slug}', [ProductContentController::class, 'product_contents.fetchAdvanceSearch']);



