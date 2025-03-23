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




            <div >
                <x-frontend.components.slider />
            </div>

            <div  >

                @if($isLoading)
                    <div class="loading-indicator">
                        <!-- Anda bisa menggunakan spinner atau teks loading -->
                        <p>Loading...</p>
                        <div class="spinner-border" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>
                    </div>
                @else
                    <div class="container mx-auto px-4 mt-10   m-8 p-4 rounded-lg border shadow-lg text-center justify-center " >
                        <img src="{{ asset('backend-assets/banner4.png') }}" class="w-full" alt="Brand 1">
                    </div>
                @endif

            </div>


            <div id="categories">
                <!-- Kategori Produk -->
                <x-frontend.kategori-produk :categories="$categories" wire:transition/>
            </div>

            <div>
                <!-- Brand -->
                <x-frontend.brand :brands="$brands" wire:transition/>
            </div>

            <div>
                <!-- Produk Terlaris -->
                <x-frontend.produk-terlaris :products5="$products5" wire:show="!starred" wire:cloak/>
            </div>


            <div>
                <!-- Rekomendasi untuk Kamu -->
                <x-frontend.rekomendasi-produk :productrecoms="$productrecoms" wire:transition />
            </div>



            <div>
                <!-- marketplace -->
                <x-frontend.marketplace :marketplaces="$marketplaces" wire:transition/>
            </div>


            <br><br><br>



    @script
        <script>
            document.addEventListener('livewire:load', function () {

            });
        </script>
    @endscript




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


    document.addEventListener('livewire:init', () => {

        Livewire.on(('productWasDeleted') => {
            alert('produt was deleted')
        })

        Livewire.on(('productWasAdded') => {
            alert('produt was added')
        })

    })

    </script>






</div>



