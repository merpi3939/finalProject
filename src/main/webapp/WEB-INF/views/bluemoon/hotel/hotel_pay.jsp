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
	padding-left: 30%;
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
.container {
    margin-left: 20%;
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


<div class="cart-box-main" style="
    max-width: 100%;">
	<div class="container">
		<form class="needs-validation" action="hotelinsert" method="post">
			<div class="row">
				<div class="col-sm-6 col-lg-6 mb-3">
					<div class="checkout-address">
						<div class="title-left">
							<h3>예약 정보 확인</h3>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="firstName">체크인</label> <input type="text"
									class="form-control" name="reserveCheckIn" readonly="readonly"
									value="${hotel.reserveCheckIn }" required>
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="lastName">체크아웃</label> <input type="text" readonly="readonly"
									class="form-control" name="reserveCheckOut" placeholder=""
									value="${hotel.reserveCheckOut }" required>
								<div class="invalid-feedback">Valid last name is required.
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="firstName">예약 인원</label> <input type="text" readonly="readonly"
									class="form-control" name="reserveperson"
									value="${hotel.reserveperson }">
								<div class="invalid-feedback">Valid first name is
									required.</div>
							</div>
							<div class="col-md-6 mb-3">
								<label for="lastName">선택룸정보</label> <select 
									class="form-control" name="reserveRoom" required>
									<option value="${category.hotelCategoryNo}">${category.hotelCategoryName}</option>
								</select>
								<div class="invalid-feedback">Valid last name is required.
								</div>
							</div>
						</div>

						<div class="mb-3">
							<label for="username">예약자 성함</label>
							<div class="input-group">
								<input type="text" class="form-control" name="reserveMemname" readonly="readonly"
									value="${hotel.reserveMemname }">
								<div class="invalid-feedback" style="width: 100%;">Your
									username is required.</div>
							</div>
						</div>
						<div class="mb-3">
							<label for="email">휴대폰 번호</label> <input type="text" readonly="readonly"
								class="form-control" name="reserveMemphone"
								value="${hotel.reserveMemphone }">
							<div class="invalid-feedback">Please enter a valid email
								address for shipping updates.</div>
						</div>
						<div class="mb-3">
							<label for="address">이메일 주소</label> <input type="email" readonly="readonly"
								class="form-control" name="reserveMememail"
								value="${hotel.reserveMememail }">
							<div class="invalid-feedback">Please enter your shipping
								address.</div>
						</div>
						
					</div>
						<hr class="mb-4">
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
								<div class="mb-3">
								<div class="input-group">
								<input type="text" class="form-control" id="hotelMemPoint" hidden="hidden" value="${User.userPoint }">
										<div class="input-group">
										<label for="username">포인트 사용</label>
											<input type="text" class="form-control" name="hotelUsePoint" id="hotelUsePoint" style="width: 100%;" placeholder=" 보유 포인트 = ${User.userPoint }">
											<div><span class="error" id="pointch" style="color: red; width: 100%;"></span></div>
										</div>
									</div></div>
									<div class="d-block my-3">
										<label for="username">결제금액</label>
										<div class="input-group">
											<input type="text" class="form-control" id="hotelPayPrice" name="hotelPayPrice" readonly="readonly"
												value="${category.hotelCategoryPrice }">
												<input id="Price" hidden="hidden" value="${category.hotelCategoryPrice }">
											<div class="invalid-feedback" style="width: 100%;">Your
												username is required.</div>
										</div>
									</div>
									<div class="d-block my-3">
										<div class="custom-control custom-radio">
											<input id="credit" name="hotelPayment" type="radio"
												value="신용카드"
												class="custom-control-input" checked required> <label
												class="custom-control-label" for="credit">신용카드</label>
										</div>
										<div class="custom-control custom-radio">
											<input id="debit" name="hotelPayment" type="radio"
												value="휴대폰결제"
												class="custom-control-input" required>휴대폰결제 <label
												class="custom-control-label" for="debit"></label>
										</div>
										<div class="custom-control custom-radio">
											<input id="paypal" name="hotelPayment" type="radio"
												value="계좌이체"
												class="custom-control-input" required> <label
												class="custom-control-label" for="paypal">계좌이체</label>
										</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 d-flex shopping-box"> <button type="submit" class="ml-auto btn hvr-hover" style="background-color: #ffdc5f !important; color: black !important;">결제하기</button> </div>
                 
				
			</div>
			
		</form>
	</div>
</div>
<div>
</div>
<script type="text/javascript">
$("#hotelUsePoint").focus();
	$("#hotelUsePoint").blur(function() {
		var userp=Number($("#hotelUsePoint").val());
		var memp=Number($("#hotelMemPoint").val());
		var Price=Number($("#Price").val());
   		if (memp < userp) {
   			console.log('false');
	   		$("#pointch").text("사용 포인트가 보유 포인트보다 많습니다!!! 다시 입력해 주세요.");
			$("#hotelUsePoint").focus();
   		}else if(Price < userp){
   			console.log('false');
	   		$("#pointch").text("사용 포인트가 금액보다 많습니다!!! 다시 입력해 주세요.");
			$("#hotelUsePoint").focus();
   		
   		}else {
   			console.log('true');
   			$("#pointch").text("");
   			priceChange();
   		}
   	});

	
	function priceChange() {
		  var use=Number($("#hotelUsePoint").val());
	      var Price=Number($("#Price").val());
	      var totalPrice=Price-use;
	    	  $("#hotelPayPrice").val(totalPrice);
	
	   };
	   
	 
	
</script>
