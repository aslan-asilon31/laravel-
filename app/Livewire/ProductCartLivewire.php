<?php

namespace App\Livewire;

use Livewire\Component;
use Illuminate\Support\Facades\Session;
use Livewire\Attributes\On;
use App\Models\ProductContent;

class ProductCartLivewire extends Component
{
    protected $listeners = ['productRefresh' => 'mount'];
    protected $listeners1 = ['productDeleteRefresh' => 'mount'];


    public $brands = [];
    public $products = [];
    public $products5 = [];

    public $productId;
    public $name;
    public $price;
    public $amount;
    public $title = 'Product Cart Livewire';

    #[On('productRefresh')]
    public function mount()
    {
        $this->products = session('products', []);

        $this->products5 =  ProductContent::query()
          ->join('products', 'product_contents.product_id', 'products.id')
          ->select([
            'product_contents.id',
            'products.id AS products_id',
            'products.name AS products_name',
            'products.selling_price AS product_selling_price',
            'products.discount_value AS product_discount_value',
            'products.nett_price AS product_nett_price',
            'products.weight AS product_weight',
            'products.is_new AS product_is_new',
            'products.discount_persentage AS product_discount_persentage',
            'product_contents.title',
            'product_contents.slug',
            'product_contents.url',
            'product_contents.image_url',
            'product_contents.created_by',
            'product_contents.updated_by',
            'product_contents.created_at',
            'product_contents.updated_at',
            'product_contents.is_activated',
        ])->get();


    }

    public function editCart($id)
    {
        $product = collect($this->products)->firstWhere('id', $id);
        if ($product) {
            $this->productId = $product['id'];
            $this->amount = $product['amount'];
        }
    }

    public function updateCart()
    {
        $this->validate([
            'amount' => 'required|numeric',
        ]);

        $products = session('products', []);
        foreach ($products as &$product) {
            if ($product['id'] == $this->productId) {
                $product['amount'] = $this->amount;
            }
        }

        session(['products' => $products]);
        $this->dispatch('productRefresh');

    }

    public function deleteCart($id)
    {
        $products = session('products', []);
        $products = array_filter($products, function($product) use ($id) {
            return $product['id'] != $id;
        });

        session(['products' => $products]);
    }


    public function render()
    {
        return view('livewire.product-cart-livewire')
            ->layout('components.layouts.app_visitor')
            ->title($this->title);
    }

    public function storeCart($id)
    {
        // Ambil data produk berdasarkan ID
        $newProducts = ProductContent::query()
            ->join('products', 'product_contents.product_id', '=', 'products.id') // Menggunakan '=' untuk join
            ->select([
                'product_contents.id AS product_content_id',
                'products.id AS products_id',
                'products.name AS products_name',
                'products.selling_price AS product_selling_price',
                'products.discount_value AS product_discount_value',
                'products.nett_price AS product_nett_price',
                'products.weight AS product_weight', // Menyelesaikan kolom yang terputus
                'products.sku AS products_sku',
            ])
            ->where('products.id', $id) // Menambahkan kondisi untuk mengambil produk berdasarkan ID
        ->first(); // Mengambil satu produk


        // Jika produk ditemukan, simpan ke dalam keranjang
        if ($newProducts) {
            // Logika untuk menyimpan produk ke dalam keranjang
            $products = session('products', []);
            $products[] = [
                'id' => $newProducts->products_id,
                'name' => $newProducts->products_name,
                'selling_price' => $newProducts->products_selling_price,
                'discount_value' => $newProducts->products_discount_value,

                'nett_price' => $newProducts->products_nett_price,
                'qty' => 1,
                'amount' => $newProducts->products_nett_price,
                'weight' => $newProducts->product_weight,
                'sku' => $newProducts->products_sku,
            ];

            // Simpan kembali ke session
            session(['products' => $products]);

            $this->dispatch('productWasAdded');
        } else {
            // Jika produk tidak ditemukan, Anda bisa menambahkan logika penanganan error
            session()->flash('error', 'Product not found.');
        }
    }

    public function isProductInCart($productId)
    {
        $products = session('products', []);
        foreach ($products as $product) {
            if ($product['id'] == $productId) {
                return true; // Produk ada di dalam keranjang
            }
        }

        $this->dispatch('productDeleteRefresh');


        return false; // Produk tidak ada di dalam keranjang
    }

}
