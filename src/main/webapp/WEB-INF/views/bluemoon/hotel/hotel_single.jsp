<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<style>
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

.row {
	text-align: center;
	    width: 80%;
}

<!--
디테일 로우영역 변경 -->.card-header:first-child {
	border-radius: calc(0.25rem - 1px) calc(0.25rem - 1px) 0 0;
}

.card-header {
	padding: 0.75rem 1.25rem;
	margin-bottom: 0;
	background-color: rgba(0, 0, 0, 0.03);
	border-bottom: 1px solid rgba(0, 0, 0, 0.125);
}

.card-body {
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.25rem;
	width: 80%;
    margin: auto;
}

.card {
	position: relative;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-ms-flex-direction: column;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 0.25rem;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.row {
	text-align: center;
	width: 105%;
}

.cover-slides {
	height: 100vh;
}

.slides-navigation a {
	background: #b0b435;
	position: absolute;
	height: 70px;
	width: 70px;
	top: 50%;
	font-size: 20px;
	display: block;
	color: #fff;
	line-height: 90px;
	text-align: center;
	transition: all .3s ease-in-out;
}

.slides-navigation a i {
	font-size: 40px;
}

.slides-navigation a:hover {
	background: #000000;
}

.cover-slides .container {
	height: 100%;
	position: relative;
	z-index: 2;
}

.cover-slides .container>.row {
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
}

.cover-slides .container>.row {
	height: 100%;
}

.overlay-background {
	background: #333;
	position: absolute;
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	opacity: 0.5;
}

.cover-slides h1 {
	font-family: 'Poppins', sans-serif;
	font-weight: 500;
	font-size: 64px;
	color: #fff;
}

.cover-slides p {
	font-size: 18px;
	color: #fff;
	padding-bottom: 30px;
}

.slides-pagination a {
	border: 2px solid #ffffff;
	border-radius: 6px;
}

.slides-pagination a.current {
	background: #b0b435;
	border: 2px solid #b0b435;
}

.cover-slides p a {
	font-size: 24px;
	color: #ffffff;
	border: none;
	text-transform: uppercase;
	padding: 10px 20px;
}

.single-product-slider .carousel-indicators li img {
	opacity: 0.5;
}

.single-product-slider .carousel-indicators li.active img {
	opacity: 1;
}

.carousel-indicators {
	position: relative;
	bottom: 0;
	background: #000000;
}

.carousel-indicators li {
	width: 30%;
	height: 100%;
	cursor: pointer;
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
<div class="shop-detail-box-main">
	<div class="container" style="padding-top: 50px;">
	<form action="Hoteladd" id="hotelCategoryForm" name="hotelCategoryForm" method="post">
		<div style="border-bottom: 2px solid #E2E2E2; padding-bottom: 50px;">
			<div style="text-align: center;">
				<h2 style="padding-top: 30px;">${hotelCategoryNo.hotelCategoryName }</h2>
				<hr>
			</div>
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-6"
					style="flex: 100%; max-width: 100%; padding-top: 50px;">
					<div id="carousel-example-1"
						class="single-product-slider carousel slide" data-ride="carousel">
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block w-100"
									src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg1 }"/>
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg2 }"/>
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg3 }"/>
									alt="Third slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg4 }"/>
									alt="Third slide">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel-example-1"
							role="button" data-slide="prev"> <i class="fa fa-angle-left"
							aria-hidden="true"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-example-1"
							role="button" data-slide="next"> <i class="fa fa-angle-right"
							aria-hidden="true"></i> <span class="sr-only">Next</span>
						</a>
						<ol class="carousel-indicators"
							style="padding-top: 10px; background-color: white;">
							<li data-target="#carousel-example-1" data-slide-to="0"
								class="active"><img class="d-block w-100 img-fluid"
								src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg1 }"/> alt="" />
							</li>
							<li data-target="#carousel-example-1" data-slide-to="1"
								class="active"><img class="d-block w-100 img-fluid"
								src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg2 }"/> alt="" />
							</li>
							<li data-target="#carousel-example-1" data-slide-to="2"><img
								class="d-block w-100 img-fluid"
								src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg3 }"/> alt="" />
							</li>
							<li data-target="#carousel-example-1" data-slide-to="2"><img
								class="d-block w-100 img-fluid"
								src=<c:url value="bluemoon/images/hotel_img/${hotelCategoryNo.hotelCategoryImg4 }"/> alt="" />
							</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		
			<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">

				<h4 class="mb-5" style="text-align: center;">예약 정보 입력</h4>
				<div class="fields">

					<div class="row">
					<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" id="reserveMemname"
									name="reserveMemname" value="${hotel.reserveMemname }" placeholder="예약자 이름">
									 <span class="error" id="namech"></span>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							<div class="form-group">
								<select type="text" class="form-control" id="reserveperson"
									name="reserveperson" value="${hotel.reserveperson }" placeholder="예약 인원">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									</select>
									 <span class="error" id="personch"></span>
							</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" id="reserveMemphone"  onKeyup="inputPhoneNumber(this);" maxlength="13"
									name="reserveMemphone" value="${hotel.reserveMemphone }"placeholder="전화번호">
									 <span class="error" id="phonech"></span>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="email" class="form-control" id="reserveMememail"
									name="reserveMememail" value="${hotel.reserveMememail }" placeholder="이메일">
									 <span class="error" id="emailch"></span>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" readonly="readonly"
									name="hotelCategoryName" value="${hotelCategoryNo.hotelCategoryName }" placeholder="선택룸">
							</div>
						</div>
						<div class="col-md-6" style="display: none;">
							<div class="form-group">
								<input type="text" class="form-control"
									name="hotelCategoryNo" value="${hotelCategoryNo.hotelCategoryNo }" placeholder="선택룸번호">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" readonly="readonly"
									id="hotelCategoryPrice" name="hotelCategoryPrice" value="" placeholder="금액">
								<input id="onePrice" hidden="hidden" value="${hotelCategoryNo.hotelCategoryPrice }">
							</div>
						</div>
						 <div class="col-md-6">
							<div class="form-group">
								<input type="text" id="datepicker1" class="form-control"
									name="reserveCheckIn" readonly="readonly" placeholder="체크인 날짜">
									 <span class="error" id="datech"></span>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" id="datepicker2" class="form-control" 
								name="reserveCheckOut" readonly="readonly" placeholder="체크아웃 날짜">
								<span class="error" id="datech2"></span>
							</div>
						</div> 
						<div class="col-md-12">
							<div class="form-group">
								<button type="submit" id="save"  class="btn" style="background-color: #ffc321; margin-top: 15px; font-weight: 500;">예약하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>


<script type="text/javascript">
	
	function formatDate(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() + 1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();
	
	    if (month.length < 2) 
	        month = '0' + month;
	    if (day.length < 2) 
	        day = '0' + day;
	
	    return [year, month, day].join('-');
	}
	
	$(function() {
		$('#datepicker1').datepicker({
			format : 'yyyy-mm-dd', // 달력에서 클릭시 표시할 값 형식
			todayHighlight : true,
			autoclose : true, // 날짜 클릭시 자동 닫힘
			
		})
		 .on('changeDate', function(){ // 날짜가 변경 되었을 때 실행
			 var start=$('#datepicker1').val();
			 var end=$('#datepicker2').val();
			 var date=formatDate(new Date());
			 
			 if(start!="" && end!="") {
			 	priceChange();  
			 }
			 if(start < date) {
				$('#datepicker1').datepicker('setDate', date);
			 }  
			 else if(end!="" && start >= end){ // 종료일보다 시작일자가 큰 경우 종료일자로 만듬
				if(end==date) {
					var newDate=new Date(end);
				 	newDate.setDate(newDate.getDate()+1);
				 	$('#datepicker2').datepicker('setDate', newDate);
				} else {
					var newDate=new Date(end);
			 		newDate.setDate(newDate.getDate()-1);
			 		$('#datepicker1').datepicker('setDate', newDate);
				 }
			 }
		});
	});
	
	$(function() {
		$('#datepicker2').datepicker({
			format : "yyyy-mm-dd", // 달력에서 클릭시 표시할 값 형식
			todayHighlight : true,
			autoclose : true,
		})
		.on('changeDate', function(){ // 날짜가 변경 되었을 때 실행
		 	var start=$('#datepicker1').val();
		 	var end=$('#datepicker2').val();
		 	var date=formatDate(new Date());
			
		 	if(start!="" && end!="") {
			 	priceChange();  
			 }
		 	
		 	if(end < date) {
		 		$('#datepicker2').datepicker('setDate', date);
		 	} else if(start!="" && start >= end) { // 시작일보다 종료일자가 앞선 경우 시작일자로 만듬
		 		var newDate=new Date(start);
			 	newDate.setDate(newDate.getDate()+1);
				$('#datepicker2').datepicker('setDate', newDate);
			}
		});
	});
	
	function priceChange() {
		var start=$('#datepicker1').val();
		var end=$('#datepicker2').val();
		var price=Number($("#onePrice").val());
		var listDate=[];
		
		getDateRange(start, end, listDate);		
		
		var day=Number(listDate.length-1);
		var totalPrice=price*day;
		
		$("#hotelCategoryPrice").val(totalPrice);
	};
	
	function getDateRange(startDate, endDate, listDate) {
        var dateMove = new Date(startDate);
        var strDate = startDate;
        if (startDate == endDate) {
            var strDate = dateMove.toISOString().slice(0,10);
            listDate.push(strDate);
        } else {
            while (strDate < endDate){
                var strDate = dateMove.toISOString().slice(0, 10);
                listDate.push(strDate);
                dateMove.setDate(dateMove.getDate() + 1);
            }
        }
        return listDate;
    };

    //전화번호 입력 자동 하이픈
    function inputPhoneNumber(obj) {



        var number = obj.value.replace(/[^0-9]/g, "");
        var phone = "";



        if(number.length < 4) {
            return number;
        } else if(number.length < 7) {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3);
        } else if(number.length < 11) {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3, 3);
            phone += "-";
            phone += number.substr(6);
        } else {
            phone += number.substr(0, 3);
            phone += "-";
            phone += number.substr(3, 4);
            phone += "-";
            phone += number.substr(7);
        }
        obj.value = phone;
    }
//유효성 검사 
	
	$("#reserveMemname").focus();
	var checkName=/^[가-힣]{2,10}$/;//Name 유효성 검사 정규식
    var checkPWD=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;// PASSWORD 유효성 검사 정규식
    var checkEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;//Email 유효성 검사 정규식
   	//아이디 유효성
   	

   /*	  	//이름 확인 유효성
   	$("#reserveMemname").blur(function() {
   		if (checkName.test($("#reserveMemname").val())) {
			console.log('true');
	   		$("#namech").text("");
			$("#reserveperson").focus();
   		}else if ($("#reserveMemname").val()=="") {
   			console.log('false');
   			$("#namech").text("이름을 입력해 주세요.");
   			$("#namech").css('color', 'red');   		
			$("#reserveMemname").focus();
		}else if (checkName.test($("#reserveMemname").val())!=true) {
			console.log('false');
			$("#namech").text("잘못된 문자가 입력되었습니다. 다시 입력해 주세요.");
			$("#namech").css('color', 'red');
			$("#reserveMemname").focus();
		}
   	})
	
		//전화번호 확인 유효성   	
   	  	$("#reserveMemphone").blur(function() {
   		 if($("#reserveMemphone").val()=="") {
   			console.log('false');
   			$("#phonech").text("전화번호를 입력해 주세요.");
   			$("#phonech").css('color', 'red');
			$("#reserveMemphone").focus();
   		 }else{
   				console.log('true');
   		   		$("#phonech").text("");
   				$("#reserveMememail").focus();
   		 }
   		
   	})
   	

  
		
   		//이메일  확인 유효성   	
   	  	$("#reserveMememail").blur(function() {
   		if (checkEmail.test($("#reserveMememail").val())) {
			console.log('true');
	   		$("#emailch").text("");
   		}else if ($("#reserveMememail").val()=="") {
   			console.log('false');
   			$("#emailch").text("이메일을 입력해 주세요.");
   			$("#emailch").css('color', 'red');
			$("#reserveMememail").focus();
		}else if (checkEmail.test($("#reserveMememail").val())!=true) {
   			console.log('false');
   			$("#emailch").text("올바른 이메일 형식을 입력해 주세요.");
   			$("#emailch").css('color', 'red');
			$("#reserveMememail").focus();
		}
   	 });*/
    //==================================================================
  //서브밋 유효성   	
	  	$("#hotelCategoryForm").submit(function() {
	  		var result=true;
	  		//이름
	  		if (checkName.test($("#reserveMemname").val())) {
			console.log('true');
	   		$("#namech").text("");
   		}else if ($("#reserveMemname").val()=="") {
   			console.log('false');
   			$("#namech").text("이름을 입력해 주세요.");
   			$("#namech").css('color', 'red');   		
			$("#reserveMemname").focus();
			result=false;
		}else if (checkName.test($("#reserveMemname").val())!=true) {
			console.log('false');
			$("#namech").text("잘못된 문자가 입력되었습니다. 다시 입력해 주세요.");
			$("#namech").css('color', 'red');
			$("#reserveMemname").focus();
			result=false;
		}
	  		//전화번호
	  		 if($("#reserveMemphone").val()=="") {
   			console.log('false');
   			$("#phonech").text("전화번호를 입력해 주세요.");
   			$("#phonech").css('color', 'red');
			result=false;
   		 }else{
   				console.log('true');
   		   		$("#phonech").text("");
   		 }
   		
	  		//이메일
	  		if (checkEmail.test($("#reserveMememail").val())) {
			console.log('true');
	   		$("#emailch").text("");
   		}else if ($("#reserveMememail").val()=="") {
   			console.log('false');
   			$("#emailch").text("이메일을 입력해 주세요.");
   			$("#emailch").css('color', 'red');
			$("#reserveMememail").focus();
			result=false;
		}else if (checkEmail.test($("#reserveMememail").val())!=true) {
   			console.log('false');
   			$("#emailch").text("올바른 이메일 형식을 입력해 주세요.");
   			$("#emailch").css('color', 'red');
			$("#reserveMememail").focus();
			result=false;
		}
	  		//체크인
	  		 if($("#datepicker1").val()=="") {
	    			$("#datech").text("체크인 날짜를 선택해 주세요.");
	    			$("#datech").css('color', 'red');
	 			$("#datepicker1").focus();
	 			result=false;
	    		 }else{
	    				console.log('true');
	    		   		$("#datech").text("");
	    		 }
	  		//체크아웃
	  		 if($("#datepicker2").val()=="") {
	    			$("#datech2").text("체크아웃 날짜를 선택해 주세요.");
	    			$("#datech2").css('color', 'red');
	 			result=false;
	    		 }
	  		return result;
	    	});
	
    
</script>


