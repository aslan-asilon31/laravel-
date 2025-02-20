<div>
    <div class="container mx-auto px-4 mt-10 bg-gradient-to-r from-cyan-500 to-blue-500  m-8 p-4 rounded-lg border shadow-lg" data-aos="fade-left">
            <h2 class="text-2xl font-bold mb-4 text-white underline">Produk Terlaris</h2>

            <div class="flex justify-center">

                <div class="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-4">

                    @forelse ($products5->take(6) as $product5)
                    @php
                        $title = $product5->title;
                        $words = explode(' ', $title);
                        if (count($words) > 3) {
                            $title = implode(' ', array_slice($words, 0, 3)) . '...';
                        }
                    @endphp
                
                        {{-- <a href="/cart-item"> --}}
                            <div class="bg-white rounded-lg shadow-md p-4">
                                <img src="{{ $product5->image_url ?? asset('backend-assets/no-image-900x900.png')}}" alt="Produk 1" class=" object-cover rounded-lg mb-2">
                                <p class="md:text-lg text-md md:font-semibold lg:font-semibold">{{ $title }}</p>
                
                                <div class="grid grid-cols-1">
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
                
                                @php  
                                    $isInCart = $this->isProductInCart($product5->products_id);  
                                @endphp  
                                <br>
                                <div class=""     
                                    wire:click="{{ $isInCart ? 'removeCartItem' : 'addToCart' }}('{{ $product5->products_id }}', {{ $product5->product_selling_price }}, {{ $product5->product_weight }})">  
                                    @if ($isInCart)    
                                        <a type="button" class="bg-red-500 text-white  p-2 rounded-md cursor-pointer">remove</a>    
                                    @else    
                                        <a type="button" class="bg-green-500 text-white  p-2 rounded-md cursor-pointer">add</a>    
                                    @endif    
                                </div>
                
                            </div>
                        {{-- </a> --}}

                    @empty
                        tidak ada data
                    @endforelse
                
                </div>
            </div>
            <a href="produk/all" class="text-white underline mt-4 inline-block">Lihat Produk Lain</a>

    </div>
</div>