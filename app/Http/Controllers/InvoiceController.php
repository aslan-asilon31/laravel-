<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\SalesOrder;
use App\Models\SalesOrderDetail;
use App\Models\Customer;
use Illuminate\Support\Facades\Session; // Import Session for session management  


class InvoiceController extends Controller
{

    public function index()
    {

        $customer = SalesOrder::with('customer') 
        ->latest() 
        ->first();


        $order = SalesOrderDetail::with('product')->where('sales_order_id',$customer->id) // Memuat relasi customer
        ->latest() 
        ->first();


        // dd( $order);
        $title = 'INVOICE';
    


        
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
            $customerInvoice = Customer::where('id', $existingCustomer['id'])->first();
            $salesOrderInvoices = SalesOrder::where('customer_id', $customerInvoice['id'])->get();
            $salesOrderDetailInvoices = SalesOrderDetail::whereIn('sales_order_id', $salesOrderInvoices->pluck('id'))->get();
        } else {
            $customerInvoice = null;
            $salesOrderInvoices = null;
            $salesOrderDetailInvoices = null;
        }

// dd($salesOrderDetailInvoices);
        // return view('invoice', compact('title', 'customer','order'));
        return view('invoice', compact('customerInvoice', 'salesOrderInvoices','salesOrderDetailInvoices'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
