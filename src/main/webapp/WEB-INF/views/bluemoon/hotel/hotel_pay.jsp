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
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="checkout-address">
                        <div class="title-left">
                            <h3>예약/결제</h3>
                        </div>
                        <form class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">체크인</label>
                                    <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                                    <div class="invalid-feedback"> Valid first name is required. </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">체크아웃</label>
                                    <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                                    <div class="invalid-feedback"> Valid last name is required. </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">예약 인원</label>
                                    <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                                    <div class="invalid-feedback"> Valid first name is required. </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">선택룸정보</label>
                                    <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                                    <div class="invalid-feedback"> Valid last name is required. </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="username">예약자 성함</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="username" placeholder="" required>
                                    <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email">휴대폰 번호</label>
                                <input type="email" class="form-control" id="email" placeholder="">
                                <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                            </div>
                            <div class="mb-3">
                                <label for="address">이메일 주소</label>
                                <input type="text" class="form-control" id="address" placeholder="" required>
                                <div class="invalid-feedback"> Please enter your shipping address. </div>
                            </div>
                            <div class="mb-3">
                                <label for="address2">Address 2 *</label>
                                <input type="text" class="form-control" id="address2" placeholder=""> </div>
                            <hr class="mb-4">
                            <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="shipping-method-box">
                                <div class="title-left">
                                    <h3>결제선택</h3>
                                </div>
                                <div class="mb-4">
                                 <div class="title"> <span>결제방법</span> </div>
                            <div class="d-block my-3">
                                <div class="custom-control custom-radio">
                                    <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                    <label class="custom-control-label" for="credit">신용카드</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                                    <label class="custom-control-label" for="debit">체크/현금카드</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                                    <label class="custom-control-label" for="paypal">무통장입금</label>
                                </div>
                            </div>
                            <hr class="mb-1">
                                   
                           
                                <div class="col-md-6 mb-3">
                                    <div class="payment-icon">
                                        <ul>
                                            <li><img class="img-fluid" src="images/payment-icon/1.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/2.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/3.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/5.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/7.png" alt=""></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                                </div>
                            </div>
                        </div>
                            <hr class="mb-4">
                            </form>
                    </div>
                </div>
                        <div class="col-md-12 col-lg-12">
                            <div class="order-box">
                                <div class="title-left">
                                    <h3>Your order</h3>
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

        </div>
