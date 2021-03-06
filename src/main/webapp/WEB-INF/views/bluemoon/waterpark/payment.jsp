<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	background-color: #ffc321;
}

.formBtn a {
	height: 22px;
	padding: 0px 22px 22px 22px;
	display: inline-block;
}

.align-items-end {
	-webkit-box-align: center !important;
	-ms-flex-align: center !important;
	align-items: flex-end !important;
}
</style>

</head>
<body>
	<div class="limiter">
		<div class="con01">
			<form class="form01" id="form01">
				<div class="wrap100" style="">
					<div>
						<h5>결제 정보</h5>
						<table class="res01">
							<colgroup>
								<col width="40%">
							</colgroup>
							<tbody>
								<tr>
									<th>결제 번호</th>
									<td>${paymentList.rsNo }</td>
									<input type="hidden" name="rsNo" id="rsNo" value="" readonly="readonly" style="width : 50%;">
								</tr>
								<tr>
									<th>이용 날짜</th>
									<td name="rsUseDate" id="rsUseDate">${paymentList.rsUsedate}</td>
								</tr>
								<tr>
									<th>이용권</th>
									<td name="rsTicket" id="rsTicket">${paymentList.rsTicket}</td>
								</tr>
								<tr>
									<th>이용권 총 수량</th>
									<td name="rsAdult" id="rsAdult">대인 :
										${paymentList.rsAdult} / 소인 : ${paymentList.rsChild }</td>
								</tr>
								<tr>
									<th>이용권 총 금액</th>
									<td name="rsPrice" id="rsPrice">${paymentList.rsPrice }</td>
								</tr>
								<tr>
									<th>결제 날짜</th>
									<td name="rsDate" id="rsDate">${paymentList.rsDate }</td>
								</tr>
								<tr>
									<th>결제 방법</th>
									<td>
										<ul>
											<li>
												<input name="rsOption" id="rsOption" class="pay" value="" readonly="readonly" style="width : 50%;">
											</li>
										</ul>
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
									<td id="rsName" value="" name="rsName">${paymentList.rsName}</td>
								</tr>
								<tr>
									<th>회원 전화번호</th>
									<td id="rsPhone" value="" name="rsPhone">${paymentList.rsPhone}</td>
								</tr>
							</tbody>
						</table>

						<div class="btns">	

							<!-- <button class="formBtn" type="submit">환불</button> -->	

							
							<a href='WaterParkRefund?rsNo=${paymentList.rsNo }' type="button">환불</a>
                 
														
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
<script type="text/javascript">
	$("#form01").ready(function() {
	     var radio = ${paymentList.rsOption };
	     var val0 = '신용카드'
	     var val1 = '무통장입금'
	     
	     if(radio == 0){
	    	 $("#rsOption").val(val0);
	     } else if(radio == 1 ){
	    	/* $("input[name='rsOption2']:checked").val(); */
	    	 $("#rsOption").val(val1);
	     }
	     
	     var del = ${paymentList.rsNo };
	     
	     $("#rsNo").val(del);
	     
	     /* alert(radio); */
	});
</script>
</body>
</html>