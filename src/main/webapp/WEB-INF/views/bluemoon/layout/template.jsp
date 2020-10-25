<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlueMoon</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
	
    <link rel="stylesheet" href=<c:url value="bluemoon/css/animate.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/owl.carousel.min.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/owl.theme.default.min.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/magnific-popup.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/aos.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/bootstrap-datepicker.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/jquery.timepicker.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/flaticon.css"/>>
    <link rel="stylesheet" href=<c:url value="bluemoon/css/style.css"/>>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    
    <script src=<c:url value="bluemoon/js/jquery.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/jquery-migrate-3.0.1.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/jquery.easing.1.3.js"/>></script>
	<script src=<c:url value="bluemoon/js/jquery.waypoints.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/jquery.stellar.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/jquery.magnific-popup.min.js"/>></script>
	
</head>
<body>
	<tiles:insertAttribute name="header"/>	
	<c:if test="${fn:contains(path, 'myuser')}">
		<tiles:insertAttribute name="mypagemenu"/>
	</c:if>
	<c:if test="${fn:contains(path, 'info')}">
		<tiles:insertAttribute name="infomenu"/>
	</c:if>
	<tiles:insertAttribute name="content"/>
	<tiles:insertAttribute name="footer"/>


	<script src=<c:url value="bluemoon/js/popper.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/bootstrap.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/owl.carousel.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/aos.js"/>></script>
	<script src=<c:url value="bluemoon/js/jquery.animateNumber.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/bootstrap-datepicker.js"/>></script>
	<script src=<c:url value="bluemoon/js/scrollax.min.js"/>></script>
	<script src=<c:url value="bluemoon/js/main.js"/>></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
	
</body>

</html>