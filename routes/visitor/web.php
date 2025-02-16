<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InvoiceController;
use App\Mail\SendEmail;
use App\Http\Controllers\SendEmailController;
use Illuminate\Support\Facades\Mail;


Route::get('/', \App\Livewire\Pages\Visitor\HomeResources\HomeList::class)->name('home');
// Route::get('/home/show/{id}', \App\Livewire\Pages\Visitor\HomeResources\HomeProductDetail::class)->name('home-product-detail');
Route::get('/kontak', \App\Livewire\Pages\Visitor\KontakResources\KontakList::class)->name('kontak');
Route::get('/kategori', \App\Livewire\Pages\Visitor\KategoriResources\KategoriList::class)->name('kategori');
Route::get('/kategori/detail/{id}', \App\Livewire\Pages\Visitor\KategoriResources\KategoriList::class)->name('kategori');
Route::get('/tentang', \App\Livewire\Pages\Visitor\TentangResources\TentangList::class)->name('tentang');

Route::get('/produk-detail/{id}', \App\Livewire\Pages\Visitor\ProdukDetailResources\ProdukDetailList::class)->name('produk-detail');
Route::get('/produk/{id}', \App\Livewire\Pages\Visitor\ProdukResources\ProdukList::class)->name('produk');
Route::get('/produk-brand/{id}', \App\Livewire\Pages\Visitor\ProdukBrandResources\ProdukBrandList::class)->name('produk-brand');
// Route::get('/produk-brand/{id}', \App\Livewire\Pages\Visitor\ProdukBrandResources\ProdukBrandList::class)->name('produk-brand');

Route::get('/cart-item', \App\Livewire\Pages\Visitor\CartItemResources\CartItemList::class)->name('cart-item');
Route::get('/cart-checkout', \App\Livewire\Pages\Visitor\CartCheckoutResources\CartCheckoutList::class)->name('cart-checkout');
Route::get('/cart-invoice', \App\Livewire\Pages\Visitor\CartInvoiceResources\CartInvoiceList::class)->name('cart-invoice');
Route::get('/invoice', [InvoiceController::class, 'index'])->name('invoice');



Route::get('/send-email', [SendEmailController::class, 'index'])->name('kirim-email');

Route::post('/post-email', [SendEmailController::class, 'store'])->name('post-email');




