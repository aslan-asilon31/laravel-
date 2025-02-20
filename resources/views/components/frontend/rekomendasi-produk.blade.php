        <div class="container mx-auto px-4 mt-10 bg-gradient-to-r from-cyan-500 to-blue-500  m-8 p-4 rounded-lg border shadow-lg">
            <h2 class="text-2xl font-bold mb-4  text-white underline">Rekomendasi untuk Anda</h2>
            <div class="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-4 " data-aos="zoom-in">
                @forelse ($productrecoms->take(6) as $productrecom)
                    <div class="bg-white rounded-lg shadow-md p-4">
                        <img src="{{ $productrecom->image_url ?? asset('backend-assets/no-image-900x900.png')}}" alt="Rekomendasi 1" class=" object-cover rounded-lg mb-2">
                        <h3 class="text-lg font-semibold">{{ $productrecom->name }}</h3>
                        <p class="text-gray-600">{{ $productrecom->price_nett }}</p>
                    </div>
                @empty
                    tidak ada data
                @endforelse
                
            </div>
        </div>