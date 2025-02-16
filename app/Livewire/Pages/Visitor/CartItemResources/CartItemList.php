<?php

namespace App\Livewire\Pages\Visitor\CartItemResources;

use Livewire\Component;
use App\Models\Marketplace;
use App\Models\ProductBrand;   
use App\Models\ProductContent;   
use App\Models\ProductCategoryFirst;
use App\Models\ProductCategorySecond;  
use Illuminate\Support\Facades\DB; 

use App\Models\Product;
use App\Models\SalesCart; 
use App\Models\SalesCartDetail; // Import the SalesCartDetail model  
use Illuminate\Support\Facades\Session; // Import Session for session management  


class CartItemList extends Component
{
    public $product_category_first;   
    public $product_category_second;   
    public $product_brands;   
    public $product_brand_lists;   
    public $product_contents;   
    public $productRecommendations;   
    public $marketplaces; 
    public $products = [];
    public $product ;
    public $productContent = [];
    public $productCategoryFirsts = [];
  
    public $brands = [];  
    public $cartItems = [];  
    public $cartItemArrays;  
    public $index = 0;  
    public $sessionId;  

    #[\Livewire\Attributes\Locked]
    protected $parentModel = \App\Models\ProductContent::class;
  
    #[\Livewire\Attributes\Locked]
    public array $options = [];
  
  
    #[\Livewire\Attributes\Locked]
    public null|string $id = null;

    use \Mary\Traits\Toast;

    
    public function rules()  
    {  
        return [  
            'cartItems.*.qty' => 'required|integer|min:1', 
        ];  
    }  

    public function render()
    {
        return view('livewire.pages.visitor.cart-item-resources.cart-item-list')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }

    public string $title = 'Cart Item'; 
    
    public function mount() 
    {  
        $this->initialize();
        $this->cartItems = Session::get('cart', []);
        $this->loadCartItems();  
    }  

    public function initialize()  
    {  
        $this->brands = ProductBrand::all();  
        $this->sessionId = Session::getId();
        // $this->productCategoryFirsts = ProductContent::with('product')->get(); 
        $this->productCategoryFirsts = ProductCategoryFirst::with('product')->get();

        $this->productRecommendations = Product::with('productCategoryFirst')
        ->where('product_category_first_id',$this->id)->get();

        $this->options['product_category_firsts'] = ProductCategoryFirst::all(); 
    }

    
    public function addToCart($productId, $sellingPrice, $weight)  
    { 
        $sessionId = Session::getId(); 

        if (!DB::table('sessions')->where('id', $sessionId)->exists()) {  
            DB::table('sessions')->insert([  
                'id' => $sessionId,  
                'payload' => 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNmR2WThQaWRFY1hDVTZDaTN4TjJQbjE1TFNVV2hQSHRBQkNKbENCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',  
                'last_activity' => time(),  
            ]);  
        }  

        $cart = session()->get('cart', []);

        if (isset($cart[$movieId])) {
            // Update quantity if product is already in the cart
            $cart[$movieId]['quantity'] += $quantity;
        } else {
            // Add new item to the cart
            $cart[$movieId] = [
                'id' => $movie->id,
                'name' => $movie->name,
                'price' => $movie->price,
                'quantity' => $quantity,
                "poster" => $movie->poster
            ];
        }

        session()->put('cart', $cart);
        

    } 

    
    public function loadCartItems()  
    {  
        $cart = SalesCart::where('session_id', $this->sessionId)->first(); 
        if ($cart) {  
            $this->cartItems = $cart->details;
        } else {  
            $this->cartItems = [];  
        }  
    }

    public function isProductInCart($productId)  
    {  
        return SalesCartDetail::where('product_id', $productId)    
        ->exists(); 
    }  
  
    public function updateCartItem($cartDetailId, $qty)  
    {  
        try {  
            $cartDetail = SalesCartDetail::find($cartDetailId);  
            if ($cartDetail) {  
                $cartDetail->qty = $qty;  
                $cartDetail->amount = $cartDetail->selling_price * $qty;  
                $cartDetail->subtotal_weight = $cartDetail->weight * $qty;  
                $cartDetail->save();  
                $this->loadCartItems();  
                $this->dispatch('cartUpdated');  
            }  
        } catch (\Exception $e) {  
            session()->flash('error', 'Failed to update cart item: ' . $e->getMessage());  
        }  
    }  
  
    public function removeCartItem($cartDetailId)  
    {  
        try {  
            $cartDetail = SalesCartDetail::find($cartDetailId);  
            if ($cartDetail) {  
                $cartDetail->delete();  
                $this->loadCartItems();  
                $this->dispatch('cartUpdated');
                $this->success('Produk dihapus dari keranjang!');
                session()->flash('success', 'Success to remove data from cart');  

            }  
        } catch (\Exception $e) {  
            session()->flash('error', 'Failed to remove cart item: ' . $e->getMessage());  
        }  
    }  
  
    public function calculateTotal()  
    {  
        $total = 0;  
        foreach ($this->cartItems as $item) {  
            $total += $item->amount;  
        }  
        return $total;  
    }  
  
    public function calculateDiscount()  
    {  
        // Example discount calculation (15% of total)  
        $total = $this->calculateTotal();  
        return $total * 0.15;  
    }  
  
    public function calculateShipping()  
    {  
        // Example shipping cost  
        return 30000;  
    }  
  
    public function calculateVAT()  
    {  
        // Example VAT calculation (10% of total)  
        $total = $this->calculateTotal();  
        return $total * 0.1;  
    }  
  
    public function calculateFinalTotal()  
    {  
        $total = $this->calculateTotal();  
        $discount = $this->calculateDiscount();  
        $shipping = $this->calculateShipping();  
        $vat = $this->calculateVAT();  
        return $total - $discount + $shipping + $vat;  
    }  




}
