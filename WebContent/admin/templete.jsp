<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String workgroup=request.getParameter("workgroup");
	if(workgroup==null) workgroup="home";
	
	String work=request.getParameter("work");
	if(work==null) work="main";
	
	String headerPath="header.jsp";
	if(workgroup.equals("admin")) {
		headerPath="admin/header.jsp";
	}
	
	String contentPath=workgroup+"/"+work+".jsp";
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blue Moon | admin </title>

	<%@include file="/admin/layout/stylesheet&script.jspf"  %>
		
</head>

<body>
	<div id="container" class="effect mainnav-lg">
		<%@include file="/admin/layout/navBar.jspf" %>
		

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
					
					<%-- <h3 class="text-thin">Your content...</h3> --%>
					<jsp:include page="<%=contentPath %>"></jsp:include>
					
					
				</div>
				<!--===================================================-->
				<!--End page content-->


			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
			
			<!-- 왼쪽 메인 바 -->
			<%@include file="/admin/layout/mainNav.jspf" %>
			
			<!-- 오른쪽 aside -->
			<%@include file="/admin/layout/aside.jspf" %>
			
		</div>

		<%@include file="/admin/layout/footer.jspf" %>		

	</div>
	<!--===================================================-->
	<!-- END OF CONTAINER -->

	<!-- setting -->
	<%@include file="/admin/layout/setting.jspf" %>
	
	<!-- javascript -->
	<%@include file="/admin/layout/javascript.jspf" %>

	 
</body>
</html>

