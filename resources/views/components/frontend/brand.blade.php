<div>
<div class="container mx-auto px-4 mt-10 bg-gradient-to-r from-cyan-500 to-blue-500  m-8 p-4 rounded-lg border shadow-lg" data-aos="fade-left">
            <h2 class="text-2xl font-bold mb-4 text-white underline">Brand</h2>
            <div class="flex justify-center">
                <div class="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-4 mx-auto" style="max-width: 1200px;">

                    @forelse($brands as $brand)
                        <div wire:key="{{ $brand->id }}"> 
                            <a href="/produk-detail/{{$brand->id}}">
                                <div class="bg-white rounded-lg shadow-md p-4">
                                    <img src="{{ $brand->image_url ?? asset('backend-assets/no-image-900x900.png')}}" alt="Produk 1" class=" object-cover rounded-lg mb-2">
                                </div>
                            </a>
                        </div>


                    @empty
                        tidak ada data
                    @endforelse
                
                </div>
            </div>

        </div>
</div>