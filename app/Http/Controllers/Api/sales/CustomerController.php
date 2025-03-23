<?php

namespace App\Http\Controllers\Api\sales;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Http\Response;
use App\Models\ProductContent;
use App\Models\ProductContentDisplay;
use App\Models\ProductContentFeature;
use App\Models\ProductContentMarketplace;
use App\Models\ProductContentMeta;
use App\Models\ProductContentQna;
use App\Models\ProductContentReview;
use App\Models\ProductContentReviewImage;
use App\Models\ProductContentReviewSpecification;
use App\Models\ProductContentReviewVideo;
use App\Models\MetaPropertyGroup;
use App\Models\MetaProperty;
use App\Models\ProductBrand;
use App\Models\CategoryRecommendation;
use App\Models\Marketplace;
use App\Models\Employee;
use App\Models\Position;
use App\Models\Page;
use App\Models\Permission;
use App\Models\Customer;
use App\Models\ProductSales;
use App\Models\SalesOrder;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{


    public function index(Request $request)
    {
        $records = Customer::orderBy('created_at', 'desc')->paginate($request->input('per_page') ?? 20);
        return response()->json([
          'success' => true,
          'data' => $records,
          'csrf_token' => csrf_token(),
        ], Response::HTTP_OK);
    }

    public function fetchAdvanceSearch(Request $request)
    {

        // Retrieve the request parameters
        $filter = $request->input('filter');
        $createdBy = $request->input('created_by');
        $page = $request->input('page', 1); // Default to page 1 if not provided
        $sort = $request->input('sort', 'newest'); // Default sort option
        $desc = $request->input('desc', false); // Default to ascending order

        // Build the query
        $query = Customer::query();

        // Apply filters
        if ($filter) {
            $query->where('first_name', 'LIKE', '%' . $filter . '%');
        }

        if ($createdBy) {
            $query->where('created_by', $createdBy);
        }

        // Apply sorting
        if ($sort === 'newest') {
            $query->orderBy('created_at','desc');
        } else{
            $query->orderBy('created_at','asc');
        }

        // Paginate the results
        $perPage = 9; // Set the number of items per page
        $brands = $query->paginate($perPage, ['*'], 'page', $page);


        // Return the paginated results
        return response()->json([
            'success' => true,
            'data' => $brands,
            'csrf_token' => csrf_token(),
        ], Response::HTTP_OK);

    }

    public function fetch_by_id(string $id)
    {
        $brand = Customer::where('id',$id)->first();

        return response()->json([
            'success' => true,
            'data' => $brand,
            'csrf_token' => csrf_token(),
        ], Response::HTTP_OK);

    }

    public function edit(string $id)
    {

        $records = Customer::where('id',$id)->first();
        return response()->json([
          'success' => true,
          'data' => $records,
          'csrf_token' => csrf_token(),
        ], Response::HTTP_OK);

    }


    public function store(Request $request)
    {
        $validated = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|email',
            'phone' => 'required|string',
            'is_activated' => 'required',
        ]);

        // Create the customer
        $customer = Customer::create($validated);

        return response()->json($customer, 201);
    }


    public function show(string $id)
    {
        try {
            $customer = Product::with('productContent')->findOrFail($id);
            return response()->json([
                "message" => "success",
                "data" => $customer
            ]);
        } catch (\Exception $e) {
            return response()->json([
                "message" => "failed",
                "error" => "Product Brand not found"
            ], 404);
        }
    }

    public function update(Request $request, string $id)
    {
        DB::beginTransaction();

        try {
            // Validate request data
            $validated = $request->validate([
                'first_name' => 'required|string|max:255',
                'last_name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:customers,email,' . $id, // Exclude current customer's email
                'phone' => 'required|string',
                'created_at' => 'required|string',
            ]);

            $customer = Customer::findOrFail($id);
            $customer->update($validated);

            DB::commit();
            return response()->json([
                "message" => "Product Brand updated successfully",
                "data" => $customer
            ]);

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                "message" => "failed",
                "error" => $e->getMessage()
            ], 500);
        }
    }

    public function destroy(string $id)
    {
        DB::beginTransaction();

        try {
            $customer = Customer::findOrFail($id);
            $customer->delete();

            DB::commit();
            return response()->json([
                "message" => "Product deleted successfully"
            ]);

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                "message" => "failed",
                "error" => $e->getMessage()
            ], 500);
        }
    }

}
