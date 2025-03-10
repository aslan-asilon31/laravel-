<?php

namespace App\Http\Controllers\Api\contents;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
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
use Illuminate\Http\Response;
use App\Models\CategoryRecommendation;
use App\Models\Marketplace;
use App\Models\Employee;
use App\Models\Position;
use App\Models\Page;
use App\Models\Permission;
use App\Models\Customer;
use App\Models\ProductSales;
use App\Models\SalesOrder;
use App\Models\ProductCategoryFirst;

use Illuminate\Support\Facades\DB;

class ProductCategoryFirstController extends Controller
{

    public function index(Request $request)
    {
<<<<<<< HEAD

        $records = ProductCategoryFirst::orderBy('created_at')->paginate(20);
=======
        $records = ProductCategoryFirst::with('productContent')->orderBy('created_at', 'desc')->paginate(20);
>>>>>>> 0443fc5b4bec49673e25ba379f538828862a2025
        return response()->json([
          'success' => true,
          'data' => $records,
          'csrf_token' => csrf_token(),
        ], Response::HTTP_OK);
<<<<<<< HEAD

=======
 
>>>>>>> 0443fc5b4bec49673e25ba379f538828862a2025
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
        $query = ProductBrand::query();
    
        // Apply filters
        if ($filter) {
            $query->where('name', 'LIKE', '%' . $filter . '%');
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
    

    public function fetchById($id)
    {
        $products = ProductCategoryFirst::with('productContent')->where('products.id',$id)->get();
        return response()->json($products, 200);
    }
    
    // public function index(Request $request)
    // {
    //     DB::beginTransaction();
    //     try {
    //         $products = ProductCategoryFirst::with('productContent')->get();

    //         if ($products->isEmpty()) {

    //             DB::rollBack();
    //             return response()->json([
    //                 "message" => "failed",
<<<<<<< HEAD
    //                 "error" => "No product Category 1 found"
    //             ], 404);
=======
    //                 "error" => "No products found"
    //             ], 404); 
>>>>>>> 0443fc5b4bec49673e25ba379f538828862a2025
    //         }

    //         DB::commit();

    //         $pass = [
    //             "data" => $products,
    //             "links" => [
    //                 "first" => "http://site.test/api/v1/post?page=1",
    //                 "last" => "http://site.test/api/v1/post?page=8",
    //                 "prev" => null,
    //                 "next" => "http://site.test/api/v1/post?page=2"
    //             ],
    //             "meta" => [
    //                 "total" => $products->count(),
    //                 "per_page" => 15,
    //                 "title"=>"Product",
    //             ],
    //             "message" => "success!"
    //         ];
    //         return response()->json($pass);

    //     } catch (\Exception $e) {

    //         \Log::error('Data failed : ' . $e->getMessage());

    //         DB::rollBack();
    //         return response()->json([
    //             "message" => "failed",
    //             "error" => $e->getMessage()
    //         ], 500);
    //     }

    // }


    public function store(Request $request)
    {
<<<<<<< HEAD
        DB::beginTransaction();

        try {
            $validated = $request->validate([
                'name' => 'required|string|max:255',
            ]);

            $product = Product::create($validated);

            DB::commit();
            return response()->json([
                "message" => "Product created successfully",
                "data" => $product
            ], 201);

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                "message" => "failed",
                "error" => $e->getMessage()
            ], 500);
        }
=======
        // Validasi data yang diterima
        $validatedData = $request->validate([
            // 'product_category_first_id' => 'required|string',
            // 'product_brand_id' => 'required|string',
            'name' => 'required|string|max:255',
            'selling_price' => 'required|numeric|min:0',
            // 'discount_persentage' => 'nullable|numeric|min:0|max:100',
            // 'discount_value' => 'nullable|numeric|min:0',
            // 'nett_price' => 'required|numeric|min:0',
            // 'availability' => 'required|string',
            
        ]);

        // Buat produk baru
        $product = ProductCategoryFirst::create($validatedData);

        return response()->json([
            'data' => $product, // Menempatkan produk di dalam atribut 'data'
            'status' => 200 // Menambahkan status
        ], 200);

        // return response()->json($product, 200);
>>>>>>> 0443fc5b4bec49673e25ba379f538828862a2025
    }


    // public function store(Request $request)
    // {
    //     DB::beginTransaction();

    //     try {
    //         $validated = $request->validate([
    //             'name' => 'required|string|max:255',
    //         ]);

    //         $product = ProductCategoryFirst::create($validated);

    //         DB::commit();
    //         return response()->json([
    //             "message" => "Product created successfully",
    //             "data" => $product
    //         ], 201); 
            
    //     } catch (\Exception $e) {
    //         DB::rollBack();
    //         return response()->json([
    //             "message" => "failed",
    //             "error" => $e->getMessage()
    //         ], 500);
    //     }
    // }

    public function show(string $id)
    {
        try {
            $product = ProductCategoryFirst::with('productContent')->findOrFail($id);
            return response()->json([
                "message" => "success",
                "data" => $product
            ]);
        } catch (\Exception $e) {
            return response()->json([
                "message" => "failed",
                "error" => "Product not found"
            ], 404);
        }
    }

    // public function update(Request $request, string $id)
    // {
    //     DB::beginTransaction();

    //     try {
    //         // Validate request data
    //         $validated = $request->validate([
    //             'name' => 'required|string|max:255',
    //         ]);

    //         $product = ProductCategoryFirst::findOrFail($id);
    //         $product->update($validated);

<<<<<<< HEAD
            DB::commit();
            return response()->json([
                "message" => "Product updated successfully",
                "data" => $product
            ]);

        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                "message" => "failed",
                "error" => $e->getMessage()
            ], 500);
        }
=======
    //         DB::commit();
    //         return response()->json([
    //             "message" => "Product updated successfully",
    //             "data" => $product
    //         ]);
            
    //     } catch (\Exception $e) {
    //         DB::rollBack();
    //         return response()->json([
    //             "message" => "failed",
    //             "error" => $e->getMessage()
    //         ], 500);
    //     }
    // }

    // public function destroy(string $id)
    // {
    //     DB::beginTransaction();

    //     try {
    //         $product = ProductCategoryFirst::findOrFail($id);
    //         $product->delete();

    //         DB::commit();
    //         return response()->json([
    //             "message" => "Product deleted successfully"
    //         ]);
            
    //     } catch (\Exception $e) {
    //         DB::rollBack();
    //         return response()->json([
    //             "message" => "failed",
    //             "error" => $e->getMessage()
    //         ], 500);
    //     }
    // }


    public function update(Request $request, $id)
    {
        // Validasi data yang diterima
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'selling_price' => 'required|numeric',
        ]);
    
        // Temukan produk berdasarkan ID
        $product = ProductCategoryFirst::findOrFail($id);
    
        // Perbarui produk dengan data yang divalidasi
        $product->update($validatedData);
    
        return response()->json([
            'status' => 200,
            'data' => $product,
        ]);
>>>>>>> 0443fc5b4bec49673e25ba379f538828862a2025
    }
    

    public function destroy($id)
    {
        
        $product = ProductCategoryFirst::findOrFail($id);
        $product->delete();

<<<<<<< HEAD
        try {
            $product = Product::findOrFail($id);
            $product->delete();

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
=======
        return response()->json(['message' => 'Product deleted successfully'], 200);
>>>>>>> 0443fc5b4bec49673e25ba379f538828862a2025
    }

}
