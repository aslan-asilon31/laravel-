<div>
<div class="container mx-auto px-4 mt-10 bg-gradient-to-r from-cyan-500 to-blue-500  m-8 p-4 rounded-lg border shadow-lg" data-aos="fade-left">
            <h2 class="text-2xl font-bold mb-4 text-stone-900 underline">Brand</h2>
            <div class="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-4">

            @forelse($product_brands as $product_brand)
                <div wire:key="{{ $product_brand->id }}"> 
                    <a href="/produk-detail/{{$product_brand->id}}">
                        <div class="bg-white rounded-lg shadow-md p-4">
                            <img src="{{ $product_brand->image_url ?? asset('backend-assets/no-image-900x900.png')}}" alt="Produk 1" class=" object-cover rounded-lg mb-2">
                        </div>
                    </a>
                </div>


            @empty
                tidak ada data
            @endforelse
            
            </div>
        </div>
</div>