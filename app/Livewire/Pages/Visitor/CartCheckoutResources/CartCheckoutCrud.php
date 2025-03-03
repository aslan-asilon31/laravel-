<?php

namespace App\Livewire\Pages\Visitor\CartCheckoutResources;

use Livewire\Component;
use App\Models\Customer;
use App\Models\SalesShipping;
use App\Models\SalesOrder;
use App\Models\SalesInvoice;
use App\Models\SalesPayment;
use App\Models\SalesOrderDetail;
use App\Livewire\Pages\Visitor\CartCheckoutResources\Forms\CartCheckoutForm;
use App\Models\SalesCart;
use App\Models\SalesCartDetail;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;
use App\Services\ProductService;
use Illuminate\Support\Str;

class CartCheckoutCrud extends Component
{

    public $title = 'Cart Checkout Form';  
    public $first_name;  
    public $last_name;  
    public $email;  
    public $phone;  
    public $address;  
    public $postal_code;  
    public $isSubmitted = false;  
    public $formattedDate;
    public $randomNumber;
  


    use \Mary\Traits\Toast;

    use \Livewire\WithFileUploads;
    use \App\Helpers\ImageUpload\Traits\WithImageUpload;
    use \App\Helpers\FormHook\Traits\WithFormHook;
    use \App\Helpers\Permission\Traits\WithPermission;
    use \Mary\Traits\Toast;
  
    #[\Livewire\Attributes\Locked]
    public null|string $id = null;
    public CartCheckoutForm $masterForm;

    
    public $products;
    protected $productService;
    public $cartItems = [];  
    protected $cartService;

    public function mount()
    {
    }


    public function store()  
    {  
        $sessionId = Session::getId();

        \Illuminate\Support\Facades\DB::beginTransaction();
        try {

            $customers = session('customers', []);


            // Cek apakah ada customer dengan session_id yang sama
            $customerExists = false;



            foreach ($customers as $customer) {
                // Pastikan kunci 'session_id' ada sebelum mengaksesnya
                if (isset($customer['session_id']) && $customer['session_id'] === $sessionId) {
                    $customerExists = true;
                    break; // Keluar dari loop jika customer ditemukan
                }
            }

            if (!$customerExists) {
                $customer = Customer::create([  
                    'first_name' => $this->masterForm->first_name  ?? '',  
                    'last_name' => $this->masterForm->last_name  ?? '',  
                    'email' => $this->masterForm->email  ?? '',  
                    'phone' => $this->masterForm->phone  ?? '',  
                    'created_by' => $this->masterForm->first_name.' '.$this->masterForm->last_name  ?? '',   
                    'updated_by' => $this->masterForm->first_name.' '.$this->masterForm->last_name  ?? '',   
                    'is_activated' => 1, 
                ]);  
        
    
                $customers[] = [
                    'id' => $customer->id  ?? '',
                    'session_id' => Session::getId(),
                ];
    
                session(['customers' => $customers]);
            }


            $this->formattedDate = Carbon::now()->format('d/F/Y');

            $this->randomNumber = str_pad(rand(0, 999999), 6, '0', STR_PAD_LEFT);
            
            $salesOrder = SalesOrder::create([  
                'employee_id' => auth()->user()->id ?? '9d8c81b8-37ad-4402-88ec-c5b65afb08c6',  
                'customer_id' => $customer->id ?? '',
                'date' => now(),
                'number' => 'so-'.$this->formattedDate.'-'.$this->randomNumber  ?? '',
                'total_amount' => $this->calculateFinalTotal(), 
                'status' => 'pending', 
                'fraud_status' => 'identifying', 
                'created_by' => $this->masterForm->first_name ." ". $this->masterForm->last_name ?? '', 
                'is_activated' => 1, 
            ]); 
            
                
            $sales_orders = session('sales_orders', []);
            $sales_orders[] = [
                'id' => $sales_order->id  ?? '',
            ];
            session(['sales_orders' => $sales_orders]);


            SalesShipping::create([  
                'sales_order_id' => $salesOrder->id  ?? '',  
                'address' => $this->masterForm->address ?? '',  
                'postal_code' => $this->masterForm->postal_code ?? '', 
                'created_by' => $this->masterForm->first_name ." ". $this->masterForm->last_name , 
                'is_activated' => 1, 
            ]);  

            $sales_shippings = session('sales_shippings', []);
            $sales_shippings[] = [
                'id' => $sales_shipping->id  ?? '',
            ];
            session(['sales_shippings' => $sales_shippings]);


            $salesInvoice = SalesInvoice::create([  
                'sales_order_id' => $salesOrder->id,  
                'date' => now(),  
                'number' => 'so-'.$this->formattedDate.'-'.$this->randomNumber,  
                'created_by' => $this->masterForm->first_name ." ". $this->masterForm->last_name ?? '', 
                'is_activated' => 1, 
            ]);
            
            $sales_invoices = session('sales_invoices', []);
            $sales_invoices[] = [
                'id' => $sales_invoice->id  ?? '',
            ];
            session(['sales_invoices' => $sales_invoices]);
            
            SalesPayment::create([  
                'sales_invoice_id' => $salesInvoice->id,  
                'date' => now(),  
                'number' => 'so-'.$this->formattedDate.'-'.$this->randomNumber,  
                'created_by' => $this->masterForm->first_name ." ". $this->masterForm->last_name , 
                'is_activated' => 1, 
            ]); 
            
            $sales_payments = session('sales_payments', []);
            $sales_payments[] = [
                'id' => $sales_payment->id  ?? '',
            ];
            session(['sales_payments' => $sales_payments]);


            $salesCarts = SalesCart::with('details')->where('session_id', $sessionId)->get();  
  
            // Menggunakan flatMap untuk mengumpulkan semua product_id dan selling_price  
            $products = $salesCarts->flatMap(function ($cart) {  
                return $cart->details->map(function ($detail) {  
                    return [  
                        'product_id' => $detail->product_id,  
                        'selling_price' => $detail->selling_price,  
                        'discount_persentage' => $detail->discount_persentage,  
                        'discount_value' => $detail->discount_value,  
                        'nett_price' => $detail->nett_price,  
                        'qty' => $detail->qty,  
                        'amount' => $detail->amount,  
                    ];  
                });  
            });  
            
            // Mengonversi koleksi menjadi array untuk penyimpanan massal  
            $productsArray = $products->toArray();  
            
            // Menyimpan data ke dalam SalesOrderDetail  
            SalesOrderDetail::insert(array_map(function ($product) use ($salesOrder) {  
                return [  
                    'id' => (string) \Illuminate\Support\Str::uuid(),
                    'sales_order_id' => $salesOrder->id,  
                    'product_id' => $product['product_id'],  
                    'selling_price' => $product['selling_price'],  
                    'discount_persentage' => $product['discount_persentage'],  
                    'discount_value' => $product['discount_value'],  
                    'nett_price' => $product['nett_price'],  
                    'qty' => $product['qty'],  
                    'amount' => $product['amount'],  
                    'created_at' => now(),  
                    'updated_at' => now(),  
                ];  
            }, $productsArray)); 
            
            $sales_order_details = session('sales_order_details', []);
            $sales_order_details[] = [
                'id' => $sales_order_detail->id  ?? '',
            ];
            session(['sales_order_details' => $sales_order_details]);


            SalesPayment::create([  
                'sales_invoice_id' => $salesInvoice->id,  
                'date' => now(),  
                'number' => 'so-'.$this->formattedDate.'-'.$this->randomNumber,  
                'created_by' => $this->masterForm->first_name ." ". $this->masterForm->last_name , 
                'is_activated' => 1, 
            ]); 
            

            

            // Mengumpulkan semua detail ID yang terkait dengan SalesCart  
            $detailIds = $salesCarts->flatMap(function ($cart) {  
                return $cart->details->pluck('id'); // Mengambil ID dari setiap detail  
            });  
        
            // Menghapus semua detail yang terkait dengan SalesCart dalam satu query  
            SalesCartDetail::whereIn('id', $detailIds)->delete();  
            \Illuminate\Support\Facades\DB::commit(); 

        
            // Menghapus SalesCart itu sendiri  
            SalesCart::where('session_id', $sessionId)->delete();  
            \Illuminate\Support\Facades\DB::commit(); 

            $this->isSubmitted = true;  
  
            // $this->reset();  
  
            session()->flash('message', 'Customer has been created successfully!');  
            $this->success('Data has been stored');

        } catch (\Throwable $th) {
            \Illuminate\Support\Facades\DB::rollBack();
            \Log::error('Store data failed: ' . $th->getMessage());
            $this->error('Data failed to Store');
        }
  
        // Tandai bahwa formulir telah disubmit    
        $this->isSubmitted = true;    
    }  

    public function calculateDiscount()  
    {  
        // Example discount calculation (15% of total)  
        $total = $this->calculateTotal();  
        return $total * 0.11;  
    }  

    public function calculateTotal()  
    {  
        $total = 0;  
        $this->cartItems = session('products', []);

        foreach ($this->cartItems as $item) {  
            $total += $item['amount'] ?? 0;  
        } 
        return $total;  
    } 
    
    
    public function calculateFinalTotal()  
    {  
        $total = $this->calculateTotal();  
        $discount = $this->calculateDiscount();  
        return $total - $discount;
        // $shipping = $this->calculateShipping();  
        // $vat = $this->calculateVAT();  
        // return $total - $discount + $shipping + $vat;  
    } 


    public function render()
    {
        return view('livewire.pages.visitor.cart-checkout-resources.cart-checkout-crud')
        ->layout('components.layouts.app_visitor')
        ->title($this->title);
    }
 

   


}
