<div>
    <div class="container mx-auto px-4 mt-10 bg-gradient-to-r from-cyan-500 to-blue-500  m-8 p-4 rounded-lg border shadow-lg">
            <h2 class="text-2xl  font-bold mb-4 text-stone-900 underline">Kategori Produk</h2>
            <div class="grid gap-4 grid-cols-2 md:grid-cols-2 lg:grid-cols-4" data-aos="fade-up">
                @forelse ($product_category_firsts as $product_category_first)
                    <div wire:key="{{ $product_category_first->id }}"> 
                        <a href="/kategori/detail/{{ $product_category_first->id }}" class="flex items-center rounded-lg border border-gray-200 bg-white px-4 py-2 hover:bg-gray-50 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700">
                        <svg class="me-2 h-4 w-4 shrink-0 text-gray-900 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" stroke-linejoin="round" stroke-width="2" d="M10 12v1h4v-1m4 7H6a1 1 0 0 1-1-1V9h14v9a1 1 0 0 1-1 1ZM4 5h16a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1Z" />
                        </svg>
                            <span class="text-sm font-medium text-gray-900 dark:text-white">{{ $product_category_first->name }}</span>
                        </a>
                    </div>
                @empty
                @endforelse
            </div>
            {{-- <a href="#" class="text-blue-500 mt-4 inline-block">Lihat Semua</a> --}}
    </div>
</div>