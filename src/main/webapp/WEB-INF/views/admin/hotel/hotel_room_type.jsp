<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--Bootstrap Table [ OPTIONAL ]-->
<link href=<c:url value = "/admin/plugins/bootstrap-table/bootstrap-table.min.css"/> rel="stylesheet">
<!--X-editable [ OPTIONAL ]-->
<link href=<c:url value = "/admin/plugins/x-editable/css/bootstrap-editable.css"/> rel="stylesheet">
<!--FooTable [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/fooTable/css/footable.core.css"/> rel="stylesheet">
<!--Demo [ DEMONSTRATION ]-->
<link href=<c:url value = "/admin/css/demo/nifty-demo.min.css"/> rel="stylesheet">

<!--Bootstrap Table [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/datatables/media/css/dataTables.bootstrap.css" /> rel="stylesheet">
<link href=<c:url value="/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css"/>  rel="stylesheet">    

<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">객실 타입</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔 관리</a></li>
		<li class="active">객실 타입</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
		
		
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">호텔 객실 카테고리</h3>
			</div>
	
			<div class="panel-body">
				<!-- <button id="demo-delete-row" class="btn btn-danger btn-labeled fa fa-times" disabled>Delete</button> -->
				<table id="demo-dt-delete" class="table table-striped table-bordered" cellspacing="0" width="100%">
					<thead>
							<tr>
								<th data-toggle="true">카테고리번호</th>
								<th>카테고리이름</th>
								<th>이미지1</th>
								<th>이미지2</th>
								<th>이미지3</th>
								<th>이미지4</th>
								<th>1일당 가격</th>
								<th>객실수</th>
							</tr>
					</thead>
					<tbody>
						<c:forEach items="${categoryList }" var="category">
							<tr>
								<td>${category.hotelCategoryNo }</td>
								<td><a href="${pageContext.request.contextPath }/admin/hotel_room_detail?hotelCategoryNo=${category.hotelCategoryNo }">${category.hotelCategoryName }</a></td>
								<td>
									<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg1 }"/> style="height: 50px;">
								</td>
								<td>
									<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg2 }"/> style="height: 50px;">
								</td>
								<td>
									<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg3 }"/> style="height: 50px;">
								</td>
								<td>
									<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg4 }"/> style="height: 50px;">
								</td>
								<td>${category.hotelCategoryPrice }원</td>
								<td>${category.hotelCategoryQty }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		
		</div>
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->

<!--X-editable [ OPTIONAL ]-->
<script src=<c:url value ="/admin/plugins/x-editable/js/bootstrap-editable.min.js"/>></script>
<!--Bootstrap Table [ OPTIONAL ]-->
<script src=<c:url value ="/admin/plugins/bootstrap-table/bootstrap-table.min.js"/>></script>
<!--Bootstrap Table Extension [ OPTIONAL ]-->
<script src=<c:url value ="/admin/plugins/bootstrap-table/extensions/editable/bootstrap-table-editable.js"/>></script>
<!--FooTable [ OPTIONAL ]-->
<script src=<c:url value="/admin/plugins/fooTable/dist/footable.all.min.js"/>></script>
<!--Demo script [ DEMONSTRATION ]-->
<script src=<c:url value="/admin/js/demo/nifty-demo.min.js"/>></script>
<!--Bootstrap Table Sample [ SAMPLE ]-->
<script src=<c:url value="/admin/js/demo/tables-bs-table.js"/>></script>
<!--FooTable Example [ SAMPLE ]-->
<script src=<c:url value="/admin/js/demo/tables-footable.js"/>></script>

<!--DataTables [ OPTIONAL ]-->
<script <c:url value="/admin/plugins/datatables/media/js/jquery.dataTables.js"/>></script>
<script <c:url value="/admin/plugins/datatables/media/js/dataTables.bootstrap.js"/>></script>
<script <c:url value="/admin/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"/>></script>

<!--DataTables Sample [ SAMPLE ]-->
<script <c:url value="/admin/js/demo/tables-datatables.js"/>></script>