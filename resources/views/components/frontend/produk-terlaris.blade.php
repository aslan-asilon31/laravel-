<div>

    <div x-data="{ isLoading: false }">
        <div class="container  mx-auto px-4  bg-gradient-to-r from-cyan-500 to-blue-500 m-8 p-4 rounded-lg border shadow-lg" >
            <h2 class="text-sm md:text-xl text-outline font-bold mb-4 text-white underline">Produk Terlaris</h2>

            <div x-show="isLoading" class="loading-indicator">
                <div class="spinner"></div>
            </div>

            <div class="flex flex-wrap justify-center"> <!-- Menggunakan justify-center untuk memusatkan card -->
                @forelse ($products5 as $product5)
                
                    @php  
                        $isInCart = $this->isProductInCart($product5->products_id);  
                    @endphp 

                    <div class=" rounded-lg shadow-md p-4 w-1/2 md:w-1/2 lg:w-1/4 mb-4"  >
                        <div class="{{ $product5->product_is_new ? 'text-sm md:text-md absolute bg-gradient-to-r from-cyan-500 to-blue-500  text-white px-2 py-1 rounded-tl rounded-bl inline-block':'' }} ">
                            {{ $product5->product_is_new ? 'Produk Baru':'' }}
                        </div>
                        <img src="{{ $product5->image_url ?? asset('backend-assets/no-image-900x900.png') }}" alt="Produk" class="object-cover rounded-lg mb-2">
                        <h3 class="font-semibold text-sm md:text-md">{{ $product5->products_name }}</h3>
                        <div class="grid grid-cols-1 mb-4">
                            @if($product5->product_selling_price > 0)  
                                @if($product5->product_discount_persentage > 0)  
                                    <h3>Rp {{ number_format($product5->product_nett_price, 0, ',', '.') }},-</h3>    
                                    <sub class="stroke"> <s>Rp {{ number_format($product5->product_selling_price, 0, ',', '.') }}</s> ,-</sub>    
                                @else   
                                    <h3 style="text-decoration:none;">Rp {{ number_format($product5->product_selling_price, 0, ',', '.') }},-</h3>    
                                @endif   
                            @else   
                                <sub>-</sub>    
                            @endif 
                        </div>

                        @if($isInCart)
                            <button type="button"
                                x-on:click="isLoading = true; $wire.removeFromCart('{{  $product5->products_id }}').then(() => isLoading = false)" 
                                class="bg-red-500 bg-sm  text-white rounded px-4 py-2">
                                <i class="fa-solid fa-trash"></i>
                            </button>
                        @else 
                            <button type="button"
                                x-on:click="isLoading = true; $wire.storeCart('{{ $product5->products_id }}').then(() => isLoading = false)"  
                                class="bg-green-500  text-white rounded px-4 py-2">
                                <i class="fa-solid bg-sm fa-cart-shopping"></i>
                            </button>

                        @endif
                            <a type="button" x-on:click="isLoadingDetails = true; setTimeout(() => isLoadingDetails = false, 2000)" 
                                href="produk-detail/{{ $product5->products_id }}"
                                class="bg-blue-900 bg-sm text-white rounded px-4 py-2">
                                <i class="fa-solid fa-eye"></i>
                            </a>

                    </div>

                @empty
                    <p class="text-white">Tidak ada produk tersedia.</p>
                @endforelse
            </div>
        </div> 
    </div> 

</div>
