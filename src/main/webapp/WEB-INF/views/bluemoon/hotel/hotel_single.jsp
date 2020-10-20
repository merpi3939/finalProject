<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<style>
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

<div class="top-bar" style="border-bottom: 1px solid #E2E2E2;">
	<ul>
		<li style="font-weight: bold; padding-right: 30px;"><a>HOTELCATEGORY</a></li>
		<li><a href=<c:url value="hotel"/>>ROOMS</a></li>
		<li><a href=<c:url value="hotel_event"/>>EVENT</a></li>
		<li><a href=<c:url value="hotel_service"/>>CONVENIENCE</a></li>
	</ul>
</div>

  
<div class="shop-detail-box-main">
	<div class="container" style="padding-top: 50px;">
	<form action="Hoteladd" method="post">
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
								<input type="text" class="form-control"
									name="reserveMemname" value="${hotel.reserveMemname }" placeholder="예약자 이름">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
							<div class="form-group">
								<input type="text" class="form-control"
									name="reserveperson" value="${hotel.reserveperson }" placeholder="예약 인원">
							</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									name="reserveMemphone" value="${hotel.reserveMemphone }"placeholder="전화번호">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control"
									name="reserveMememail" value="${hotel.reserveMememail }" placeholder="이메일">
							</div>
						</div>
						 <div class="col-md-6">
							<div class="form-group">
								<input type="text" id="datepicker1" class="form-control"
									name="reserveCheckIn" value="${hotel.reserveCheckIn }" placeholder="체크인 날짜">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" id="datepicker2" class="form-control"
									name="reserveCheckOut" value="${hotel.reserveCheckOut }" placeholder="체크아웃 날짜">
							</div>
						</div> 
						<div class="col-md-12">
							<div class="form-group">
								<button type="submit" class="btn" style="background-color: #ffc321; margin-top: 15px; font-weight: 500;">예약하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<div class="row my-5">
	<div class="card card-outline-secondary my-4" style="    margin-left: 10%;
    margin-right: 10%;">
		<div class="card-header">
			<h2>Room Reviews</h2>
		</div>
		<div class="card-body">
			<div class="media mb-3">
				<div class="mr-2">
					<img class="rounded-circle border p-1"
						src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
						alt="Generic placeholder image">
				</div>
				<div class="media-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Omnis et enim aperiam inventore, similique necessitatibus neque
						non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum.
						Sequi mollitia, necessitatibus quae sint natus.</p>
					<small class="text-muted">Posted by Anonymous on 3/1/18</small>
				</div>
			</div>
			<hr>
			<div class="media mb-3">
				<div class="mr-2">
					<img class="rounded-circle border p-1"
						src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
						alt="Generic placeholder image">
				</div>
				<div class="media-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Omnis et enim aperiam inventore, similique necessitatibus neque
						non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum.
						Sequi mollitia, necessitatibus quae sint natus.</p>
					<small class="text-muted">Posted by Anonymous on 3/1/18</small>
				</div>
			</div>
			<hr>
			<div class="media mb-3">
				<div class="mr-2">
					<img class="rounded-circle border p-1"
						src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
						alt="Generic placeholder image">
				</div>
				<div class="media-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Omnis et enim aperiam inventore, similique necessitatibus neque
						non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum.
						Sequi mollitia, necessitatibus quae sint natus.</p>
					<small class="text-muted">Posted by Anonymous on 3/1/18</small>
				</div>
			</div>
			<hr>
			<a href="#" class="btn hvr-hover">Leave a Review</a>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('#datepicker1').datepicker({
			format : 'yyyy-mm-dd', // 달력에서 클릭시 표시할 값 형식
			todayHighlight : true,
			autoclose : true // 날짜 클릭시 자동 닫힘
			
		})
		.datepicker('setDate', new Date(new Date())) // 금일 날짜로 세팅
		.on('changeDate', function(selectedDate){ // 날짜가 변경 되었을 때 실행
			if($('#datepicker2').val() > $('#datepicker1').val()){ // 종료일보다 시작일자가 큰 경우 종료일자로 만듬
				 $('#datepicker1').datepicker('setDate', new Date($('#datepicker2').val()));
			}
		});
		$('#datepicker2').datepicker({
			format : "yyyy-mm-dd", // 달력에서 클릭시 표시할 값 형식
			todayHighlight : true,
			autoclose : true
		}).datepicker('setDate', new Date(new Date())) // 금일 날짜로 세팅
		.on('changeDate', function(){ // 날짜가 변경 되었을 때 실행
			if($('#datepicker1').val() > $('#datepicker2').val()){ // 시작일보다 종료일자가 앞선 경우 시작일자로 만듬
				 $('#datepicker2').datepicker('setDate', new Date($('#datepicker1').val()));
			}
		});
	});
</script>


