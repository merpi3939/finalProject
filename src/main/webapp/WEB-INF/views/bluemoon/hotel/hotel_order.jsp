<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <head>
<style>
img{
 margin : 0px auto;
}
  .top-bar ul {
   list-style-type: none;
    margin: 0;
    padding-left: 100px;
    overflow: hidden;
}

.top-bar li {
    float: left;
}

.top-bar li a, .dropbtn {
      display: inline-block;
    color: black;
    text-align: center;
    padding: 20px 22px;
    text-decoration: none;
    padding-right: 100px;
    font-weight: bolder;
    font-size: 20px;
}

.top-bar li a:hover, .dropdown:hover .dropbtn {
	color: red;
}

ul{
   list-style:none;
}
.gr-total h5 {
    color: #f85959;!important;
}
.custom-checkbox .custom-control-input:checked ~ .custom-control-label::after {
background-color: red;
}
 .cover-slides .container > .row {
     -webkit-box-align: center;
     -ms-flex-align: center;
     align-items: center;
}
 .cover-slides .container > .row {
     height: 100%;
}
 .cart-box-main{
     padding: 70px 0px;
}
 .title-left{
     font-size: 16px;
     border-bottom: 3px solid #000000;
     margin-bottom: 20px;
}
 .title-left h3{
     font-weight: 700;
}
.ml-auto btn hvr-hover{
color: white;!important;
}


  </style>
</head>
    <div class="top-bar"style="border-bottom: 1px solid #E2E2E2; ">
 <ul>
  <li style="font-weight: bold; padding-right: 30px;"><a>HOTELCATEGORY</a></li>
  <li><a href="hotel.html">ROOMS</a></li>
  <li><a href="#news">EVENT</a></li>
  <li><a href="service.html">CONVENIENCE</a></li>
</ul>
</div>


    <div class="cart-box-main">
        <div class="container">
            <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="order-box">
                                <div class="title-left">
                                    <h3>예약/주문 완료</h3>
                                </div>
                                <div class="d-flex">
                                    <div class="font-weight-bold">Product</div>
                                    <div class="ml-auto font-weight-bold">Total</div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <h4>Sub Total</h4>
                                    <div class="ml-auto font-weight-bold"> $ 440 </div>
                                </div>
                                <div class="d-flex">
                                    <h4>Discount</h4>
                                    <div class="ml-auto font-weight-bold"> $ 40 </div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <h4>Coupon Discount</h4>
                                    <div class="ml-auto font-weight-bold"> $ 10 </div>
                                </div>
                                <div class="d-flex">
                                    <h4>Tax</h4>
                                    <div class="ml-auto font-weight-bold"> $ 2 </div>
                                </div>
                                <div class="d-flex">
                                    <h4>Shipping Cost</h4>
                                    <div class="ml-auto font-weight-bold"> Free </div>
                                </div>
                                <hr>
                                <div class="d-flex gr-total">
                                    <h5>Grand Total</h5>
                                    <div class="ml-auto h5"> $ 388 </div>
                                </div>
                                <hr> </div>
                        </div>
                        <div class="col-12 d-flex shopping-box"> <a href="checkout.html" class="ml-auto btn hvr-hover" style="background-color: red !important; color: white !important;">Place Order</a> </div>
                    </div>
                </div>
            </div>
