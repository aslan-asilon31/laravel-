<div >


        <style>
        
        
            .swiper {
            width: 100%;
            height: 100%;
            }
        
            .swiper-slide-brand {
            text-align: center;
            font-size: 18px;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            }
        
            .swiper-slide-brand img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
            }
        
            .swiper-slide-brand {
            width: 80%;
            }
        
            .swiper-slide-brand:nth-child(2n) {
            width: 60%;
            }
        
            .swiper-slide-brand:nth-child(3n) {
            width: 40%;
            }
        </style>


        <div wire:loading>Loading...</div>
        <x-frontend.components.slider />


        {{-- Banner  --}}
        <div class="container mx-auto px-4 mt-10   m-8 p-4 rounded-lg border shadow-lg text-center justify-center">
            <img src="{{ asset('backend-assets/banner4.png') }}" class="w-full" alt="Brand 1">
        </div>

        <!-- Kategori Produk -->
        <kategori-produk/>


        <!-- Brand -->
        <brand/>

        <!-- Produk Terlaris -->
        <produk-terlaris/>

        <!-- Rekomendasi untuk Kamu -->
        <div class="container mx-auto px-4 mt-10 bg-gradient-to-r from-cyan-500 to-blue-500  m-8 p-4 rounded-lg border shadow-lg">
            <h2 class="text-2xl font-bold mb-4  text-white underline">Rekomendasi untuk Anda</h2>
            <div class="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-4 gap-4 " data-aos="zoom-in">
                @forelse ($product_contents->take(6) as $product_content)
                    <div class="bg-white rounded-lg shadow-md p-4">
                        <img src="{{ $product_content->image_url ?? asset('backend-assets/no-image-900x900.png')}}" alt="Rekomendasi 1" class=" object-cover rounded-lg mb-2">
                        <h3 class="text-lg font-semibold">{{ $product_content->name }}</h3>
                        <p class="text-gray-600">{{ $product_content->price_nett }}</p>
                    </div>
                @empty
                    tidak ada data
                @endforelse
                
            </div>
        </div>





@Script

    <script>
        $wire.on('cek', () => {
            alert('ok');
        });
    </script>

    <script>
        var swiper = new Swiper(".mySwiper-brand", {
            slidesPerView: "auto",
            spaceBetween: 30,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });
    </script>


    <script>

    var swiper = new Swiper(".mySwiper-brand", {
                slidesPerView: 2,
                spaceBetween: 30,
                loop: true,
                autoplay: {
                    delay: 2500,
                    disableOnInteraction: false,
                },
                pagination: {
                    el: ".swiper-pagination",
                    clickable: true,
                },
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                breakpoints: {
                    640: {
                        slidesPerView: 2,
                        spaceBetween: 20,
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 30,
                    },
                    1024: {
                        slidesPerView: 3,
                        spaceBetween: 40,
                    },
                },
            });
    </script>
@Endscript


</div>



  