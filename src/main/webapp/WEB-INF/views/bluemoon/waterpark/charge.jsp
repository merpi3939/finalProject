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

.con02 {
	width: 100%;
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

dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset,
	input, textarea, p, blockquote, tbody, tfoot, thead, th, td {
	margin: 0;
	padding: 0;
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

table.res01 {
	width: 100%;
	text-align: center;
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
	text-align: center;
}

table.res01 td {
	padding: 10px 10px;
	text-align: left;
	border-bottom: 1px solid #e1e1e1;
	line-height: 1.4;
	text-align: center;
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

h5 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
	text-align: center;
}

table {
	display: table;
	border-collapse: separate;
	box-sizing: border-box;
	border-spacing: 2px;
	border-color: grey;
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

a {
	color : #4d4d4d;
}
</style>

</head>
<body>
	<div class="limiter">
		<div class="con01">
			<form class="form01">
				<div class="wrap100">
					<h5>요금표</h5>

					<div style="width: 100%; margin-bottom: 50px;">
						<table class="res01" style="width: 100%; height: 150px;">

							<thead>
								<tr>
									<td class="tr1" colspan="2" rowspan="2">구분</td>
									<td class="tr1"></td>
									<td class="tr1">대인</td>
									<td class="tr1">소인</td>
								</tr>
								<tr>
									<th class="tr6" colspan="3" style="text-align: center;">주중/주말/공휴일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="tr3" rowspan="4">8/17 ~ 8/30</td>
									<td class="tr3" rowspan="2">실내존</td>
									<td class="tr3">종일권</td>
									<td class="tr3">60,000</td>
									<td class="tr3">50,000</td>
								</tr>
								<tr>
									<td class="tr3">야간권</td>
									<td class="tr3"><font color="#ff6900"> <strong>40,000</strong>
									</font></td>
									<td class="tr3"><font color="#ff6900"> <strong>30,000</strong>
									</font></td>
								</tr>
								<tr>
									<td class="tr3" rowspan="2">실외권</td>
									<td class="tr3">종일권</td>
									<td class="tr3">55,000</td>
									<td class="tr3">45,000</td>
								</tr>
								<tr>
									<td class="tr3">야간권</td>
									<td class="tr3"><font color="#ff6900"> <strong>35,000</strong>
									</font></td>
									<td class="tr3"><font color="#ff6900"> <strong>25,000</strong>
									</font></td>
								</tr>
								<tr>
									<td class="tr3" rowspan="4">8/31 ~ 12/31</td>
									<td class="tr3" rowspan="2">실내권</td>
									<td class="tr3">종일권</td>
									<td class="tr3">55,000</td>
									<td class="tr3">45,000</td>
								</tr>
								<tr>
									<td class="tr3">야간권</td>
									<td class="tr3"><font color="#ff6900"> <strong>35,000</strong>
									</font></td>
									<td class="tr3"><font color="#ff6900"> <strong>25,000</strong>
									</font></td>
								</tr>
								<tr>
									<td class="tr3" rowspan="2">실외권</td>
									<td class="tr3">종일권</td>
									<td class="tr3">50,000</td>
									<td class="tr3">40,000</td>
								</tr>
								<tr>
									<td class="tr3">야간권</td>
									<td class="tr3"><font color="#ff6900"> <strong>30,000</strong>
									</font></td>
									<td class="tr3"><font color="#ff6900"> <strong>20,000</strong>
									</font></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="chargeform">
					<table class="res01">
						<colgroup>
							<col width="30%">
						</colgroup>
						<tbody>
							<tr>
								<th>이용권</th>
								<c:forEach var="charge" items="${oceanChaereList}">
									<td style="color: #999;" id="sel"><a
										href='reservation?chargeList=${charge.cgNo }'>${charge.cgName }</a></td>
								</c:forEach>
							</tr>
						</tbody>
					</table>

					<div></div>
				</div>
			</form>
		</div>
	</div>
<script type="text/javascript">
	var date = new Date();
	var mon = date.setMonth()+1;
	var select = ${charge.cgSeason };
	var arr = 10;
	
	
	if(select == '비수기' && mon == arr) {
		$("#sel").hide();
	}
</script>
</body>
</html>