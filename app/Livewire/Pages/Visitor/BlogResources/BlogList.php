<?php

namespace App\Livewire\Pages\Visitor\BlogResources;

use Livewire\Component;
use App\Models\Marketplace;
use App\Models\ProductBrand;
use App\Models\SalesOrder;
use App\Models\Customer;
use App\Models\SalesPayment;
use App\Models\ProductContent;
use App\Models\ProductCategoryFirst;
use App\Models\ProductCategorySecond;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\SalesCart;
use App\Models\SalesCartDetail; // Import the SalesCartDetail model
use App\Models\SalesOrderDetail;
use Illuminate\Support\Facades\Session; // Import Session for session management


class BlogList extends Component
{

    public $product_category_first;
    public $product_category_second;
    public $product_brands;
    public $product_brand_lists;
    public $product_contents;
    public $marketplaces;
    public $products = [];
    public $productContent = [];
    public $productCategoryFirsts = [];

    public $brands = [];
    public $cartItems = [];
    public $index = 0;
    public $sessionId;

    public $product_lists;
    public $product;
    public $product_detail = [];

    public $customerInvoice;
    public $salesOrderInvoices;
    public $salesOrderDetailInvoices;


    #[\Livewire\Attributes\Locked]
    protected $parentModel = \App\Models\ProductContent::class;

    #[\Livewire\Attributes\Locked]
    public array $options = [];


    #[\Livewire\Attributes\Locked]
    public null|string $id = null;

    public $start = 3;

    public $latestSalesOrder;
    public $latestSalesPayment;
    public $timeLeft;
    public $timeLeftFormatted;

    public function rules()
    {
        return [
            'cartItems.*.qty' => 'required|integer|min:1',
        ];
    }

    public function render()
    {
        return view('livewire.pages.visitor.blog-resources.blog-list')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }

    public string $title = 'Blog';

    public function mount()
    {

        $customers = session('customers', []);
        $sessionId = Session::getId();

        // Cek apakah ada customer dengan session_id yang sama
        $existingCustomer = null;
        foreach ($customers as $customer) {
            // Pastikan kunci 'session_id' ada sebelum membandingkan
            if (isset($customer['session_id']) && $customer['session_id'] === $sessionId) {
                $existingCustomer = $customer;
                break; // Keluar dari loop jika ditemukan
            }
        }

        // Jika customer dengan session_id yang sama ditemukan
        if($existingCustomer) {
            $this->customerInvoice = Customer::where('id', $existingCustomer['id'])->first();
            $this->salesOrderInvoices = SalesOrder::where('customer_id', $this->customerInvoice['id'])->get();
            $this->salesOrderDetailInvoices = SalesOrderDetail::whereIn('sales_order_id', $this->salesOrderInvoices->pluck('id'))->get();
        } else {
            $this->customerInvoice = null;
            $this->salesOrderInvoices = null;
            $this->salesOrderDetailInvoices = null;
        }

        $this->initialize();
        // $this->loadCartItems();

        // $this->latestSalesOrder = SalesOrder::latest()->first();

        $this->latestSalesOrder = SalesOrder::with([
            'salesInvoice' => function ($query) {
                // $query->orderBy('salesInvoice.created_at', 'asc');
            },
            'customer' => function ($query) {
                // $query->orderBy('salesInvoice.created_at', 'asc');
            },
            'salesShipping' => function ($query) {
                // $query->orderBy('salesInvoice.created_at', 'asc');
            },
            'salesOrderDetail' => function ($query) {
                // $query->orderBy('salesInvoice.created_at', 'asc');
            },

        ])->latest()->first()->toArray();


    }


    public function formatTimeLeft($seconds)
    {
        $hours = floor($seconds / 3600);
        $minutes = floor(($seconds % 3600) / 60);
        $remainingSeconds = $seconds % 60; // Menghitung detik yang tersisa

        return "{$hours} Jam {$minutes} Menit {$remainingSeconds} Detik";

    }



    public function initialize()
    {
        $this->brands = ProductBrand::all();
        $this->sessionId = Session::getId();
        $this->productCategoryFirsts = ProductCategoryFirst::with('product')->get();
        $this->options['product_category_firsts'] = ProductCategoryFirst::all();
    }

}
