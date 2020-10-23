<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	border-radius: 0.8em;
	background: #a3b3c7;
}

.formBtn:hover {
	color: #fff;
	background-color: #ffc321;
}

.formBtn a {
	height: 22px;
	padding: 0px 22px 22px 22px;
	display: inline-block;
}

.msg {
	display: none;
	color: red;
}

#datepicker {
	z-index: 999 !important;
}
</style>

</head>
<body>
	<div class="limiter">
		<div class="con01">
			<form class="form01" id="form01" action="addOcean" method="post">
				<div class="wrap100">
					<h5>예약하기</h5>
					<table class="res01">
						<colgroup>
							<col width="30%">
						</colgroup>
						<tbody>
							<tr>
								<th>예약 날짜</th>
								<td>
									<input id="datepicker" name="rsUsedate" value="${addOcean.rsUsedate}"><span id="datepickerNullMsg"
									class="msg nameMsg"> 날짜는 필수 입력입니다.</span>
								</td>
							</tr>
							<tr>
								<th>이용권</th>
								<td>
									<input id="rsTicket" name="rsTicket" value="${chargeList.cgName }" readonly="readonly">
								</td>
							</tr>
							<tr>
								<th>이용권 수량</th>
								<td>
									
									<span class="age01">대인</span>
									<input id="rsAdult" type="number" min="0" max="99" class="agein" value="${addOcean.rsAdult}" name="rsAdult">

									<span class="age01">소인</span>
									<input id="rsChild" type="number" min="0" max="99" class="agein" value="${addOcean.rsChild}" name="rsChild">

								<span id="rsAdultNullMsg" class="msg nameMsg">숫자는 필수 입력입니다.</span>
								<span id="rsChildNullMsg" class="msg nameMsg">원하는 구매 수량을 선택하세요.</span>
								
								</td>
							</tr>
							<tr>
								<th>이용권 금액</th>
								<%-- <td id="rsPrice" name="rsPrice" value="">${chargeList.cgPrice }</td> --%>
								<td>${chargeList.cgPrice }</td>
								<input type="hidden" id="rsPrice" name="rsPrice" value="" />
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
								<td><input id="rsName" value="${addOcean.rsName}"
									name="rsName"> <span id="nameNullMsg"
									class="msg nameMsg">이름은 필수 입력입니다.</span> <span
									id="nameValidMsg" class="msg nameMsg">이름을 형식에 맞게 입력해
										주세요.</span>
							</tr>
							<tr>
								<th>회원 전화번호</th>
								<td><input id="rsPhone" value="${addOcean.rsPhone}"
									onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
									name="rsPhone" maxlength="11"> <span id="phoneNullMsg"
									class="msg phoneMsg">전화번호는 필수 입력입니다.</span><span
									id="phoneValidMsg" class="msg phoneMsg">형식에 맞는 전화번호를
										입력해주세요.</span></td>

							</tr>
							<tr>
								<th>결제 방법</th>
								<td>
									<ul>
										<li><input type="radio" class="pay" id="rsOption"
											name="rsOption" type="radio" value="0" checked="checked">신용카드</li>
										<li><input type="radio" class="pay" id="rsOption"
											name="rsOption" type="radio" value="1">무통장입금</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="btns">
						<button type="submit" class="formBtn">결제하기</button>
					</div>
				</div>
			</form>
			
		</div>
	</div>

	<!-- 달력 -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script>
		$(function() {
			 $("#datepicker").datepicker({
				format : "yyyy-mm-dd",
				language : "kr",
				maxDate: "+2w",
				minDate : "+1d",
				todayHighlight : true,
				autoclose : true

			});
			 
		});

		$("#form01").submit(function() {
			var result = true;
			$(".msg").hide();

			//이름
			var name = $("#rsName").val();
			var nameReg = /^[가-힣]{2,10}$/g;

			if (name == "") {
				$("#nameNullMsg").show();
				result = false;
			} else if (!nameReg.test(name)) {
				$("#nameValidMsg").show();
				result = false;
			}

			//전화번호
			var phone = $("#rsPhone").val()
			var phoneReg = /^([0-9]{11})$/;

			if (phone == "") {
				$("#phoneNullMsg").show();
				result = false;
			} else if (!phoneReg.test(phone)) {
				$("#phoneValidMsg").show();
				result = false;
			} 
			
			var datepicker1 = $("#datepicker").val()
			
			if (datepicker1 == "") {
				$("#datepickerNullMsg").show();
				result = false;
			}
			
			var rsAdult = $("#rsAdult").val()
			var rschild = $("#rsChild").val()
			
			if (rsAdult == "" || rschild == "") {
				$("#rsAdultNullMsg").show();
				result = false;
			} else if (rsAdult == "" && rschild == "") {
				$("#rsAdultNullMsg").show();
				result = false;
			}else if (rschild == 0 && rschild == 0) {
				$("#rschildNullMsg").show();
				result = false;
			}
			
			var adult = $("#rsAdult").val();
			var child = $("#rsChild").val();
			var price = ${chargeList.cgPrice };
			
			var price2 = price - 10000;
			var sum1 = price * adult;
			var sum2 = price2 * child;
			
			var sum = sum1 + sum2;
			
			$("#rsPrice").val(sum);

			
			return result;

		});
		

	</script>
</body>
</html>