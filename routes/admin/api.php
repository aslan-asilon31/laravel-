<?php

use Illuminate\Support\Facades\Route;



use App\Http\Controllers\Api\UserController;  
use App\Http\Controllers\Api\AuthController;  
use App\Http\Controllers\Api\contents\ProductController;  
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


    // Route::apiResource('api/products', ProductController::class,'index');

    // Route::get('api/product-category-firsts', [ProductCategoryFirstController::class, 'index'])->name('product_category_firsts.list');

    // Route::get('api/employees', EmployeeResources\EmployeeController::class,'index');

    Route::group(['prefix' => 'api', 'middleware' => 'auth'], function () {


    // Contents
    Route::get('/meta-property-groups',[MetaPropertyGroupController::class,'index']);

    Route::get('/meta-properties', [MetaPropertyController::class,'index']);

    Route::get('/products', [ProductController::class,'index'])->name('products.list');
    Route::get('/products/create', [ProductController::class,'index'])->name('products.create');
    Route::get('/products/edit/{id}', [ProductController::class,'index'])->name('products.edit');
    Route::get('/products/show/{id}/{readonly}', [ProductController::class,'index'])->where('readonly', 'readonly')->name('products.show');

    Route::get('/product-brands', [ProductBrandController::class,'index']);
    Route::get('/product-brands', [ProductBrandController::class,'index'])->name('product_brands.list');
    Route::get('/product-brands/create', [ProductBrandController::class,'index'])->name('product_brands.create');
    Route::get('/product-brands/edit/{id}', [ProductBrandController::class,'index'])->name('product_brands.edit');
    Route::get('/product-brands/show/{id}/{readonly}', [ProductBrandController::class,'index'])->where('readonly', 'readonly')->name('product_brands.show');
    
    Route::get('/product-contents/edit/{id}/metas', [ProductContentMetaController::class,'index']);
    Route::get('/product-contents/edit/{id}/displays', [ProductContentDisplayController::class,'index']);
    Route::get('/product-contents/edit/{id}/videos', [ProductContentVideoController::class,'index']);
    Route::get('/product-contents/edit/{id}/specifications', [ProductContentSpecificationController::class,'index']);
    Route::get('/product-contents/edit/{id}/features', [ProductContentFeatureController::class,'index']);
    Route::get('/product-contents/edit/{id}/qnas', [ProductContentQnaController::class,'index']);
    Route::get('/product-contents/edit/{id}/reviews', [ProductContentReviewController::class,'index']);
    Route::get('/product-contents/edit/{id}/review-images', [ProductContentReviewImageController::class,'index']);

    Route::get('/product-contents', [ProductContentController::class,'']);
    Route::get('/product-contents/create', [ProductContentController::class,'']);
    Route::get('/product-contents/edit/{id}', [ProductContentController::class,'']);
    Route::get('/product-contents/edit/{id}/readonly', [ProductContentController::class,'']);
    Route::get('/product-content-metas/edit/{id}', [ProductContentMetaController::class,'']);
    Route::get('/product-content-displays/edit/{id}', [ProductContentDisplayController::class,'']);
    Route::get('/product-content-videos/edit/{id}', [ProductContentVideoController::class,'']);
    Route::get('/product-content-specifications/edit/{id}', [ProductContentSpecificationController::class,'']);
    Route::get('/product-content-features/edit/{id}', [ProductContentFeatureController::class,'']);
    Route::get('/product-content-qnas/edit/{id}', [ProductContentQnaController::class,'']);
    Route::get('/product-content-reviews/edit/{id}', [ProductContentReviewController::class,'']);
   
    Route::get('/product-category-firsts', [ProductCategoryFirstController::class,''])->name('product_category_firsts.list');
    Route::get('/product-category-firsts/create', [ProductCategoryFirstController::class,''])->name('product_category_firsts.create');
    Route::get('/product-category-firsts/edit/{id}', [ProductCategoryFirstController::class,''])->name('product_category_firsts.edit');
    Route::get('/product-category-firsts/show/{id}/{readonly}', [ProductCategoryFirstController::class,''])->where('readonly', 'readonly')->name('product_category_firsts.show');

    Route::get('/product-category-seconds', [ProductCategorySecondController::class,''])->name('product_category_seconds.list');
    Route::get('/product-category-seconds/create', [ProductCategorySecondController::class,''])->name('product_category_seconds.create');
    Route::get('/product-category-seconds/edit/{id}', [ProductCategorySecondController::class,''])->name('product_category_seconds.edit');
    Route::get('/product-category-seconds/show/{id}/{readonly}', [ProductCategorySecondController::class,''])->where('readonly', 'readonly')->name('product_category_seconds.show');


    // Generals
    Route::get('/dashboards', [DashboardController::class,'index'])->name('dashboard');

    Route::get('/marketplaces', [MarketplaceController::class,'index']);
    Route::get('/marketplaces/create', [MarketplaceController::class,'index'])->name('marketplaces.create');
    Route::get('/marketplaces/edit/{id}', [MarketplaceController::class,'index'])->name('marketplaces.edit');
    Route::get('/marketplaces/show/{id}/{readonly}', [MarketplaceController::class,'index'])->where('readonly', 'readonly')->name('products.show');

    Route::get('/employees', [EmployeeController::class,'index']);
    Route::get('/employees/create', [EmployeeController::class,'index']);
    Route::get('/employees/edit/{id}', [EmployeeController::class,'index'])->name('employees.edit');
    Route::get('/employees/show/{id}/{readonly}', [EmployeeController::class,'index'])->where('readonly', 'readonly')->name('employees.show');
    
    Route::get('/employee-accounts', [EmployeeAccountController::class,'index']);
    Route::get('/employee-accounts/create', [EmployeeAccountController::class,'index']);
    Route::get('/employee-accounts/edit/{id}', [EmployeeAccountController::class,'index'])->name('employee-accounts.edit');
    Route::get('/employee-accounts/show/{id}/{readonly}', [EmployeeAccountController::class,'index'])->where('readonly', 'readonly')->name('employee-accounts.show');

    Route::get('/positions', [PositionController::class,'index']);
    Route::get('/positions/create', [PositionController::class,'index']);
    Route::get('/positions/edit/{id}', [PositionController::class,'index'])->name('positions.edit');
    Route::get('/positions/show/{id}/{readonly}', [PositionController::class,'index'])->where('readonly', 'readonly')->name('positions.show');

    Route::get('/pages', [PageController::class,'index']);
    Route::get('/pages/create', [PageController::class,'index']);
    Route::get('/pages/edit/{id}', [PageController::class,'index'])->name('pages.edit');
    Route::get('/pages/show/{id}/{readonly}', [PageController::class,'index'])->where('readonly', 'readonly')->name('pages.show');


    Route::get('/permissions', [PermissionController::class,'index']);
    Route::get('/permissions/edit/{id}', [PermissionController::class,'index'])->name('pages.edit');
    Route::get('/permissions/show/{id}/{readonly}', [PermissionController::class,'index'])->where('readonly', 'readonly')->name('pages.show');

    // Sales 
    Route::get('/customers', [CustomerController::class,'index']);
    Route::get('/customers/create', [CustomerController::class,'index']);
    Route::get('/customers/edit/{id}', [CustomerController::class,'index'])->name('customer.edit');
    Route::get('/customers/show/{id}/{readonly}', [CustomerController::class,'index'])->where('readonly', 'readonly')->name('customer.show');

    Route::get('/sales-orders', [SalesOrderController::class,'index']);
    Route::get('/sales-orders/create', [SalesOrderController::class,'index']);
    // Route::get('/sales-orders/update/{slug}', \App\Livewire\Pages\Admin\Sales\SalesOrderResources\SalesOrderController::class,'index')->name('sales-order.edit');
    // Route::get('/sales-orders/update/{id}', \App\Livewire\Pages\Admin\Sales\SalesOrderResources\SalesOrderController::class,'index')->name('sales-order.edit');
    // Route::get('/sales-orders/update/{id}/{slug}', \App\Livewire\Pages\Admin\Sales\SalesOrderResources\SalesOrderController::class,'index')->name('sales-order.edit');
    Route::get('/sales-orders/update/{id}', [SalesOrderController::class,'index'])->name('sales-order.edit');
    
    Route::get('/sales-orders/edit/{id}', [SalesOrderController::class,'index'])->name('sales-order.edit');

    Route::get('/sales-orders/show/{id}/{readonly}', [SalesOrderController::class,'index'])->where('readonly', 'readonly')->name('sales-order.show');
    Route::get('/sales-orders/activate/{id}/{value}', [SalesOrderController::class,'index'])
    ->where('readonly', 'readonly')
    ->name('sales-order.show');

    Route::get('/category-recommendations', [CategoryRecommendationController::class,'index'])->name('category_recommendations.list');
    Route::get('/category-recommendations/create', [CategoryRecommendationController::class,'index'])->name('category_recommendations.create');
    Route::get('/category-recommendations/edit/{id}', [CategoryRecommendationController::class,'index'])->name('category_recommendations.edit');
    Route::get('/category-recommendations/show/{id}/{readonly}', [CategoryRecommendationController::class,'index'])->where('readonly', 'readonly')->name('category_recommendations.show');


});