<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<style>
img {
	margin: 0px auto;
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

ul {
	list-style: none;
}

.gr-total h5 {
	color: #f85959;
	!
	important;
}

.custom-checkbox .custom-control-input:checked ~ .custom-control-label::after
	{
	background-color: red;
}

.cover-slides .container>.row {
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.cover-slides .container>.row {
	height: 100%;
}

.cart-box-main {
	padding: 70px 0px;
}

.title-left {
	font-size: 16px;
	border-bottom: 3px solid #000000;
	margin-bottom: 20px;
}

.title-left h3 {
	font-weight: 700;
}

.ml-auto btn hvr-hover {
	color: white;
	!
	important;
}
</style>
</head>
    <div class="top-bar"style="border-bottom: 1px solid #E2E2E2; ">
 <ul>
  <li style="font-weight: bold; padding-right: 30px;"><a>HOTELCATEGORY</a></li>
  <li><a href=<c:url value="hotel"/>>ROOMS</a></li>
  <li><a href=<c:url value="hotel_event"/>>EVENT</a></li>
  <li><a href=<c:url value="hotel_service"/>>CONVENIENCE</a></li>
</ul>
</div>


<div class="cart-box-main">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-lg-6 mb-3">
				<div class="checkout-address">
					<div class="title-left">
						<h3>예약 정보 확인</h3>
					</div>
					<form class="needs-validation" novalidate>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="firstName">체크인</label> <input type="text"
									class="form-control" id="firstName"  value="${hotel.reserveCheckIn }"
									required>
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="lastName">체크아웃</label> <input type="text"
									class="form-control" id="lastName" placeholder="" value="${hotel.reserveCheckOut }"
									required>
								<div class="invalid-feedback">Valid last name is required.
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="firstName">예약 인원</label> <input type="text"
									class="form-control" id="lastName" value="${hotel.reserveperson }">
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="lastName">선택룸정보</label> <input type="text"
									class="form-control" id="lastName" placeholder="" value=""
									required>
								<div class="invalid-feedback">Valid last name is required.
								</div>
							</div>
						</div>
						<div class="mb-3">
							<label for="username">예약자 성함</label>
							<div class="input-group">
								<input type="text" class="form-control" id="username"
									value="${hotel.reserveMemname }"  >
								<div class="invalid-feedback" style="width: 100%;">Your
									username is required.</div>
							</div>
						</div>
						<div class="mb-3">
							<label for="email">휴대폰 번호</label> <input type="email"
								class="form-control" id="email" value="${hotel.reserveMemphone }">
							<div class="invalid-feedback">Please enter a valid email
								address for shipping updates.</div>
						</div>
						<div class="mb-3">
							<label for="address">이메일 주소</label> <input type="text"
								class="form-control" id="address" value="${hotel.reserveMememail }">
							<div class="invalid-feedback">Please enter your shipping
								address.</div>
						</div>
						<hr class="mb-4">
					</form>
				</div>
			</div>
			<div class="col-sm-6 col-lg-6 mb-3">
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<div class="shipping-method-box">
							<div class="title-left">
								<h3>결제</h3>
							</div>
							<div class="mb-4">
								<div class="title">
								</div>
								<div class="d-block my-3">
									<div class="custom-control custom-radio">
										<input id="credit" name="paymentMethod" type="radio"
											class="custom-control-input" checked required> <label
											class="custom-control-label" for="credit">신용카드</label>
									</div>
									<div class="custom-control custom-radio">
										<input id="debit" name="paymentMethod" type="radio"
											class="custom-control-input" required> <label
											class="custom-control-label" for="debit">체크카드</label>
									</div>
									<div class="custom-control custom-radio">
										<input id="paypal" name="paymentMethod" type="radio"
											class="custom-control-input" required> <label
											class="custom-control-label" for="paypal">직불카드</label>
									</div>
								</div>
								<hr class="mb-1">
								<div class="row">
									<div class="col-md-6 mb-3">
										<label for="cc-name">Name on card</label> <input type="text"
											class="form-control" id="cc-name" placeholder="" required>
										<small class="text-muted">Full name as displayed on
											card</small>
										<div class="invalid-feedback">Name on card is required</div>
									</div>
									<div class="col-md-6 mb-3">
										<label for="cc-number">Credit card number</label> <input
											type="text" class="form-control" id="cc-number"
											placeholder="" required>
										<div class="invalid-feedback">Credit card number is
											required</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3 mb-3">
										<label for="cc-expiration">Expiration</label> <input
											type="text" class="form-control" id="cc-expiration"
											placeholder="" required>
										<div class="invalid-feedback">Expiration date required</div>
									</div>
									<div class="col-md-3 mb-3">
										<label for="cc-expiration">CVV</label> <input type="text"
											class="form-control" id="cc-cvv" placeholder="" required>
										<div class="invalid-feedback">Security code required</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>
					<hr class="mb-4">
				</div>
				<div class="col-12 d-flex shopping-box">
					<a href="checkout.html" class="ml-auto btn hvr-hover"
						style="background-color: red !important; color: white !important;">Place Order</a>
				</div>
			</div>
		</div>
	</div>
</div>

