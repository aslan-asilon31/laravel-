<?php 


return [
      'paths' => ['api/*'],
      'allowed_methods' => ['*'],
      'allowed_origins' => ['*'], // Anda dapat mengganti '*' dengan domain spesifik jika perlu
      'allowed_origins_patterns' => [],
      'allowed_headers' => ['*'],
      'exposed_headers' => [],
      'max_age' => 0,
      'supports_credentials' => false,
  ];
  