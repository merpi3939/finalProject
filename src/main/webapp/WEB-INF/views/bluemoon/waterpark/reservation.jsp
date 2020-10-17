<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Water Park reservation</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/payment.css">
<link rel="stylesheet" href="calendar/calendar.css">

<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400&display=swap" rel="stylesheet">

<!-- 달력 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
<script>
	
	$( function() {
	    $( "#datepicker" ).datepicker();
	  } );
	
    $.datepicker.setDefaults({
        dateFormat: 'yyyy-mm-dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });
</script>
<!-- 달력 -->

</head>
<body>
<div class="limiter">
		<div class="con01">
			<form class="form01">
				<div class="wrap100" style="height=100%;">
			<h5>예약하기</h5>
			<table class="res01">
				<colgroup>
					<col width="30%">
				</colgroup>
				<tbody>
					<tr>
						<th>예약 날짜</th>
						<td>
						<input type="text" id="datepicker">
						</td>
					</tr>
					<tr>
						<th>이용권</th>
						
						<td>
							<select name="sel">
								<option value="">리스트</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>이용권 수량</th>
						<td>
							<strong>
								<span class="age01" maxlength="3">대인</span>
							</strong>
							<input class="agein">
							<strong>
								<span class="age01" maxlength="3">소인</span>
							</strong>
							<input class="agein">
						</td>
					</tr>
					<tr>
						<th>이용권 금액</th>
						<td>
							<strong>
								<input>
							</strong>
							원
						</td>
					</tr>
				</tbody>
			</table>
			<h5>회원 정보</h5>
			<table class="res01">
				<colgroup>
					<col width="30%">
				</colgroup>
				<tbody>
					<tr>
						<th>회원 이름</th>
						<td>
							<input value="" readonly="readonly">
						</td>
					</tr>
					<tr>
						<th>회원 이메일</th>
						<td>
							<input value="" readonly="readonly">
						</td>
					</tr>
					<tr>
						<th>회원 전화번호</th>
						<td>
							<input value="" readonly="readonly">
						</td>
					</tr>
					<tr>
						<th>결제 방법</th>
						<td>
							<ul>
								<li>
									<input class="pay" type="radio" value="0">신용카드
								</li>
								<li>
									<input class="pay" type="radio" value="1">무통장입금
								</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			
			<div class="btns">
				<span class="formBtn">
					<a href="#DM" style="color: #fff;" onclick="javascript:send();">결제하기</a>
				</span>
			</div>
</div>
</form>
</div>
</div>



	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
	
</body>
</html>