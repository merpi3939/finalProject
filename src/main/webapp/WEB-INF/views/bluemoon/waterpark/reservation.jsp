<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

body, html {
	height: 100%;
	font-family: Ubuntu-Regular, sans-serif;
}

label {
	width: 100%;
	display: block;
	font-size: 15px;
	line-height: 17px;
	top-bottom: 15px;
	margin-bottom: 15px;
	color: #434343;
	font-family: Noto Sans KR, sans-serif;
	font-weight: 500;
	letter-spacing: 0.01em;
	display: block;
}

.limiter {
	width: 100%;
	margin: 0 auto;
	height: 1335px;
}

.con01 {
	width: 100%;
	min-height: 100vh;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	flex-wrap: wrap;
	padding: 15px;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	position: relative;
	width: 100%;
	max-width: 960px;
	min-height: 300px;
	margin: 0 auto;
	padding: 60px 16px 70px;
	justify-content: center;
	align-items: center;
}

.wrap100 {
	width: 100%;
	float: left;
	background: #fff;
	border-radius: 10px;
	position: relative;
}

.con {
	width: 100%;
	margin-top: 30px;
}

.div100 {
	width: 100%;
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	appearance: textfield;
	background-color: -internal-light-dark(rgb(255, 255, 255),
		rgb(59, 59, 59));
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 2px;
	-webkit-writing-mode: horizontal-tb !important;
	border: 1px solid #ddd;
}

.input100 {
	font-size: 14px;
	line-height: 23px;
	width: 100%;
	height: 45px;
	padding: 10px 15px;
}

.form01 {
	width: 100%;
	float: left;
	position: absolute;
	top: 10px;
}

table .res01 {
	width: 100%;
	border-top: 3px solid #a3b3c7;
}

dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset,
	input, textarea, p, blockquote, tbody, tfoot, thead, th, td {
	margin: 0;
	padding: 0;
}

input.pay {
	width: 40px;
}

input {
	width: 120px;
	height: 20px;
	padding: 0 0 0 5px;
	line-height: 1.5;
	border: 1px solid #d8d8d8;
	color: #777;
}

tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: inherit;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

table {
	display: table;
	border-collapse: separate;
	box-sizing: border-box;
	border-spacing: 2px;
	border-color: grey;
}

table.res01 {
	width: 100%;
	border-top: 3px solid #a3b3c7;
}

table.res01 th {
	padding: 10px 0 10px 15px;
	text-align: left;
	font-weight: normal;
	color: #777;
	vertical-align: top;
	border-bottom: 1px solid #e1e1e1;
	background: #f8f8f8;
}

table.res01 td {
	padding: 10px 10px;
	text-align: left;
	border-bottom: 1px solid #e1e1e1;
	line-height: 1.4;
}

th, td {
	line-height: 1.4 !important;
}

ol, ul, li {
	list-style: none;
}

input, textarea, td, th {
	font-size: 12px;
	font-family: Dotum, '돋움';
	letter-spacing: 0;
}

input {
	width: 200px;
}

input.agein {
	width: 50px;
	margin-right: 20px;
}

table.res01 td input[type="radio"] {
	margin: 0 5px 5px 0;
	/* vertical-align: middle; */
}

table.res01 td label {
	color: #777;
	vertical-align: middle;
}

h5 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

div.btns {
	margin: 10px 0 0 0;
	text-align: right;
}

.formBtn {
	display: inline-block;
	vertical-align: top;
	background-position: left 0;
	border: 1px solid #a3b3c7;
	border-radius: 0.8em;
	background: #a3b3c7;
}

.formBtn:hover {
	color: #fff;
	background-color: #f85989;
}

.formBtn a {
	height: 22px;
	padding: 0px 22px 22px 22px;
	display: inline-block;
}
</style>

</head>
<body>
	<div class="limiter">
		<div class="con01">
			<form class="form01">
				<div class="wrap100" style="">
					<h5>예약하기</h5>
					<table class="res01">
						<colgroup>
							<col width="30%">
						</colgroup>
						<tbody>
							<tr>
								<th>예약 날짜</th>
								<td><input type="text" id="datepicker1" name="${OceanReservationDTO.date }"></td>
							</tr>
							<tr>
								<th>이용권</th>

								<td><select name="sel">
										<option value="">리스트</option>
								</select></td>
							</tr>
							<tr>
								<th>이용권 수량</th>
								<td><strong> <span class="age01" maxlength="3">대인</span>
								</strong> <input class="agein"> <strong> <span
										class="age01" maxlength="3">소인</span>
								</strong> <input class="agein"></td>
							</tr>
							<tr>
								<th>이용권 금액</th>
								<td><strong> <input>
								</strong> 원</td>
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
								<td><input value="" readonly="readonly"></td>
							</tr>
							<tr>
								<th>회원 이메일</th>
								<td><input value="" readonly="readonly"></td>
							</tr>
							<tr>
								<th>회원 전화번호</th>
								<td><input value="" readonly="readonly"></td>
							</tr>
							<tr>
								<th>결제 방법</th>
								<td>
									<ul>
										<li><input class="pay" type="radio" value="0">신용카드
										</li>
										<li><input class="pay" type="radio" value="1">무통장입금
										</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="btns">
						<span class="formBtn"> <a href="#DM" style="color: #fff;"
							onclick="javascript:send();">결제하기</a>
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

	<!-- 달력 -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"/>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script>
		$.datepicker.setDefaults({
			dateFormat : 'yyyy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});

		$(function() {
			$("#datepicker1").datepicker();
		});
	</script>

</body>
</html>