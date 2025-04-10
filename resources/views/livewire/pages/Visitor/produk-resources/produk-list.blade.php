<div>



        <section class="py-24 relative">
            <div class="w-full max-w-7xl mx-auto px-4 md:px-8">
                <div class="flex flex-col lg:flex-row lg:items-center max-lg:gap-4 justify-between w-full">
                    <ul class="flex flex-col sm:flex-row sm:items-center gap-4 sm:gap-12">
                        <li class="flex items-center cursor-pointer outline-none group">
                

                    
                        </li>
                    </ul>
                    <div class="relative w-full max-w-sm">
                        
                    </div>
                </div>
                <svg class="my-7 w-full" xmlns="http://www.w3.org/2000/svg" width="1216" height="2" viewBox="0 0 1216 2"
                    fill="none">
                    <path d="M0 1H1216" stroke="#E5E7EB" />
                </svg>
                <div class="grid grid-cols-12">
                    <div class="col-span-12 md:col-span-3 w-full max-md:max-w-md max-md:mx-auto mt-8">
                        <div class="box rounded-xl border border-gray-300 bg-white p-6 w-full md:max-w-sm">
                            <h6 class="font-medium text-base leading-7 text-black mb-5">Filter Produk</h6>
                            
                            <!-- Filter berdasarkan harga -->
                            <div class="mb-5">
                                <label for="hargaMin" class="block text-sm font-medium text-gray-700">Harga Minimum</label>
                                <input type="number" id="hargaMin" wire:model="hargaMin" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-opacity-50" placeholder="Masukkan harga minimum">
                            </div>
                    
                            <div class="mb-5">
                                <label for="hargaMax" class="block text-sm font-medium text-gray-700">Harga Maksimum</label>
                                <input type="number" id="hargaMax" wire:model="hargaMax" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-opacity-50" placeholder="Masukkan harga maksimum">
                            </div>
                    
                            <!-- Filter berdasarkan kategori -->
                            <div class="mb-5">
                                <label for="category" class="block text-sm font-medium text-gray-700">Kategori</label>
                                <select id="category" wire:model="selectedCategory" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-opacity-50">
                                    <option value="">Semua Kategori</option>
                                    @foreach($product_category_firsts as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="mb-4">
                                <label for="bestProducts" class="block text-sm font-medium text-gray-700">Tampilkan Produk Terbaik:</label>
                                <select id="bestProducts" wire:model="id" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:ring focus:ring-green-500 focus:border-green-500">
                                    <option value="">Pilih...</option>
                                    <option value="best5">5 Produk Terbaik</option>
                                    <option value="best10">10 Produk Terbaik</option>
                                </select>
                            </div>

                    
                            <!-- Tombol Filter -->
                            <div>
                                <button type="button"
                                x-on:click="isLoading = true; $wire.loadProducts().then(() => isLoading = false)" class="w-full bg-gradient-to-r from-cyan-500 to-blue-500 text-white rounded-md py-2 hover:bg-blue-600">Terapkan Filter</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-span-12 md:col-span-9 "  >


                        <div wire:loading.delay.shortest>
                            <x-frontend.components.loading-indicator1/>

                        </div>
                            <!-- Produk list -->
                            <div class="container mx-auto px-4 ">
                                {{-- @if($isLoading)
                                    <div class="">
                                        <x-frontend.components.loading-indicator1/>
                                    </div>
                                @else --}}
                                    <!-- Produk Terlaris -->
                                    <x-frontend.produk-terlaris :products5="$products5" lazy="on-load"/>
                                {{-- @endif --}}

                            </div>

                        
                    </div>
                </div>


                <div class="rounded-lg pt-8 pb-4 flex items-center justify-center">
                    <h2 class="text-dark text-2xl font-bold">Rekomendasi produk lain </h2>
                </div>

                <!-- Rekomendasi untuk Kamu -->
                <x-frontend.rekomendasi-produk :productrecoms="$productrecoms" lazy="on-load"/>



            </div>
        </section>

                                            
    
</div>