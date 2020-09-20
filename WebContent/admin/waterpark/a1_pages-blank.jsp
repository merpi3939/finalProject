<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blue Moon | admin </title>

	<%@include file="/admin/refSrc/layout/stylesheet&script.jspf"  %>
		
</head>

<body>
	<div id="container" class="effect mainnav-lg">
	
		<!-- 위쪽 nav -->
		<%@include file="/admin/refSrc/layout/navBar.jspf" %>
		

		<div class="boxed">

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
					
					<h3 class="text-thin">Your content...</h3>
					
					
					
				</div>
				<!--===================================================-->
				<!--End page content-->


			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
			
			<!-- 왼쪽 메인 바 -->
			<%@include file="/admin/refSrc/layout/mainNav.jspf" %>
			
			<!-- 오른쪽 aside -->
			<%@include file="/admin/refSrc/layout/aside.jspf" %>
			
		</div>

		<!-- footer -->
		<%@include file="/admin/refSrc/layout/footer.jspf" %>		

	</div>
	<!--===================================================-->
	<!-- END OF CONTAINER -->


	
	<!-- javascript -->
	<%@include file="/admin/refSrc/layout/javascript.jspf" %>
	
</body>
</html>

