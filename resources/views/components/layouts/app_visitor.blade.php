<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, viewport-fit=cover">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>{{ isset($title) ? $title . ' | ' . config('app.name') : config('app.name') }}</title>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.6.1/cropper.min.css" />
  @vite(['resources/css/app.css', 'resources/js/app.js'])
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/flowbite@3.1.2/dist/flowbite.min.css" rel="stylesheet" />

  <style>
    @font-face {
      font-family: 'Kimono';
      src: url("{{ asset('frontend/fonts/Kimono.ttf') }}") format('truetype');
      font-weight: normal;
      font-style: normal;
  }
  </style>
</head>

{{-- <body class=""> --}}
<body class="" x-data="{ isLoading: true }" x-init="setTimeout(() => isLoading = false, 2000)">
  <div class="loading-indicator" :class="{ 'hidden': !isLoading }" role="status">
  </div>
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

    <livewire:pages.visitor.partials.header />
    
    <div class="container mx-auto">

      {{ $slot }}

    </div>

    <livewire:pages.visitor.partials.footer/>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flowbite@3.1.2/dist/flowbite.min.js"></script>


    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init({
        // delay: 8000,
        // duration: 4000,
      });
    </script>
</body>

</html>
