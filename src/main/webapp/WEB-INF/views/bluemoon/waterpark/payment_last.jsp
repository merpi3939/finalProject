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

h5 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

.box {
	width: 100%;
	height: 300px;
	/* border: 6px solid #ffc321;  */
	margin-left: auto;
	margin-right: auto;
	padding: 100px 0;
	/* background: #dee2e6; */
}

.boxtext1 {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	font-size: 40px;
	margin-bottom: 20px;
}

.boxtext2 {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	font-size: 15px;
	margin-bottom: 20px;
}

a {
	color: #ffc321;
	font-weight: bold;
	font-size: 15px;
}
</style>

</head>
<body>
	<div class="limiter">
		<div class="con01">
			<form class="form01" id="form01">
				<div class="wrap100" style="">
					<div>
						<h5>결제 안내</h5>
						<div class="box">
							<h2 class="boxtext1">결제결과</h2>
							<h3 class="boxtext2">결제가 완료 되었습니다. <span><a href=<c:url value="/myuserreservation"/>>예약내역</a></span>을 확인하세요. </h3>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>