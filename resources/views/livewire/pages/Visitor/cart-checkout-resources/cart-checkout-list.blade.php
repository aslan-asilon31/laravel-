<div>
            <!-- ========================  Main header ======================== -->

            <section class="main-header" style="background-image:url(assets/images/gallery-2.jpg)">
                <header>
                    <div class="container text-center">
                        <h2 class="h2 title">{{ $title }}</h2>
                        <ol class="breadcrumb breadcrumb-inverted">
                            <li><a href="index.html"><span class="icon icon-home"></span></a></li>
                            <li><a href="checkout-1.html">Informasi Pelanggan</a></li>
                    </div>
                </header>
            </section>
    
            <!-- ========================  Step wrapper ======================== -->
    
            <div class="step-wrapper">
                <div class="container">
    
                    <div class="stepper">
                        <ul class="row">
                            <li class="col-md-4 active">
                                <span data-text="Cart items"></span>
                            </li>
                            <li class="col-md-4 active">
                                <span data-text="Receipt"></span>
                            </li>
                           
                            <li class="col-md-4">
                                <span data-text="Invoice"></span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
    
            <!-- ========================  Checkout ======================== -->
    
            <section class="checkout">
                <div class="container">
    
                    <header class="hidden">
                        <h3 class="h3 title">Checkout - Step 2</h3>
                    </header>
    
                    <!-- ========================  Cart navigation ======================== -->
    
                    <div class="clearfix">
                        <div class="row">
                            <div class="col-xs-6">
                                <a href="checkout-1.html" class="btn btn-clean-dark"><span class="icon icon-chevron-left"></span> Back to cart</a>
                            </div>
                            <div class="col-xs-6 text-right">
                                <a href="checkout-3.html" class="btn btn-main"><span class="icon icon-cart"></span> Go to payment</a>
                            </div>
                        </div>
                    </div>
    
                    <!-- ========================  Delivery ======================== -->
    
                    <div class="cart-wrapper">
    
                        <div class="note-block">
                            <div class="col-md-12">

                                <!-- === login-wrapper === -->


                                    @livewire('pages.visitor.cart-checkout-resources.cart-checkout-crud')

                            </div> 

                        </div>
                    </div>
    
                    <!-- ========================  Cart wrapper ======================== -->
    
                    <div class="cart-wrapper">
                        <!--cart header -->
    
    
                        <!--cart items-->
    
    
                        <!--cart prices -->
    
                        
                    </div>
    
                    <!-- ========================  Cart navigation ======================== -->
    
                    <div class="clearfix">
                        <div class="row">
                            <div class="col-xs-6">
                                <a href="checkout-1.html" class="btn btn-clean-dark"><span class="icon icon-chevron-left"></span> Back to cart</a>
                            </div>
                            <div class="col-xs-6 text-right">
                                <a href="/cart-invoice" class="btn btn-main"><span class="icon icon-cart"></span> Make Invoice</a>
                            </div>
                        </div>
                    </div>
    
    
                </div> <!--/container-->
    
            </section>
</div>