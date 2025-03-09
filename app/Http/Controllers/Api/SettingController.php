<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class SettingController extends Controller
{

    public function index()
    {
        $records = [
            "name"=>"KBN",
            "logo"=>"{{asset('frontend/assets/img/logo.png')}}",
        ];
        return response()->json([
          'success' => true,
          'data' => $records,
          'csrf_token' => csrf_token(),
        ], Response::HTTP_OK);

    }


}
