        <div class="container mx-auto px-4 mt-10 bg-gradient-to-r text-center from-cyan-500 to-blue-500  m-8 p-4 rounded-lg border shadow-lg">
            <h2 class="text-2xl font-bold mb-4  text-white underline "></h2>
            <div class="flex justify-center">

                <div class="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-4 " data-aos="zoom-in">
                        @forelse ($marketplaces as $marketplace)
                            <div class="bg-white rounded-lg shadow-md p-4">
                                <img src="{{ $marketplace->image_url ?? asset('backend-assets/no-image-900x900.png')}}" alt="Rekomendasi 1" class=" object-cover rounded-lg mb-2">
                                <h3 class="text-lg font-semibold">{{ $marketplace->name }}</h3>
                                <p class="text-gray-600">{{ $marketplace->price_nett }}</p>
                            </div>
                        @empty
                            tidak ada data
                        @endforelse
                    
                </div>
            </div>

        </div>