<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blue Moon | admin </title>

	<%--<%@include file="stylesheet&script.jspf"  %> --%>
	<tiles:insertAttribute name="stylesheetScript"/>
</head>

<body>
	
	
	
	
	<div id="container" class="effect mainnav-lg">
	
		<!-- 위쪽 nav -->
		<%--<%@include file="navBar.jspf" %> --%>
		<tiles:insertAttribute name="navBar"/>

		<div class="boxed">

			<tiles:insertAttribute name="content"/>
			<%--
			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">
				
				<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">Blank page</h1>
				</div>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End page title-->


				<!--Breadcrumb-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End breadcrumb-->


		

				<!--Page content-->
				<!--===================================================-->
				<div id="page-content">
					

					
				</div>
				<!--===================================================-->
				<!--End page content-->


			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
			 --%>
			 
			<!-- 왼쪽 메인 바 -->
			<%--<%@include file="mainNav.jspf" %> --%>
			<tiles:insertAttribute name="mainNav"/>
			
			<!-- 오른쪽 aside -->
			<%--<%@include file="aside.jspf" %> --%>
			<tiles:insertAttribute name="aside"/>
			
		</div>

		<!-- footer -->
		<%-- <%@include file="footer.jspf" %> --%>		
		<tiles:insertAttribute name="footer"/>

	</div>
	<!--===================================================-->
	<!-- END OF CONTAINER -->


	
	<!-- javascript -->
	<%--<%@include file="javascript.jspf" %> --%>
	<tiles:insertAttribute name="javascript"/>
	
</body>
</html>

    