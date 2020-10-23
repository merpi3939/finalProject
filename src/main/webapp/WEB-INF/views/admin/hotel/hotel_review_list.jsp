<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Bootstrap Table [ OPTIONAL ]-->
<link href=<c:url value = "/admin/plugins/bootstrap-table/bootstrap-table.min.css"/> rel="stylesheet">

<!--Bootstrap Table [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/datatables/media/css/dataTables.bootstrap.css" /> rel="stylesheet">
<link href=<c:url value="/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css"/>  rel="stylesheet">

<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">호텔 리뷰 목록</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔 관리</a></li>
		<li class="active">리뷰 목록</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->





	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">호텔 후기 리스트</h3>
			</div>
	
			<!--Hover Rows-->
			<!--===================================================-->
			<div class="panel-body">
			<!-- 
				<button data-toggle="button" class="btn btn-sm btn-default btn-active-info active" type="button">
					최신순
				</button>
			 -->
				<div class="form-group" >
					<div style="float: right; margin-left: 5px; margin-top: 2px;">
						<button  class="btn btn-sm btn-mint">검색</button>
					</div>
			 		<div style="float: right;">
						<input type="text" name="keyword" class="form-control">
					</div>
				</div>
				
				<table id="demo-dt-delete" class="table table-striped table-bordered" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th class="min-width">호텔 리뷰 번호</th>
							<th>객실</th>
							<th>회원번호</th>
							<th>리뷰제목</th>
							<th>리뷰내용</th>
							<th>작성날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="comment" items="${commentList}" >
							<tr>
								<td style="text-align: right;"><a href="${pageContext.request.contextPath }/admin/review_detail?commentNo=${comment.commentNo }">${comment.commentNo }</a></td>
								<td style="text-align: right;">${comment.commentRoom }</td>
								<td style="text-align: right;">${comment.commentMemno }</td>
								<td>${comment.commentTitle }</td>
								<td>${comment.commentContent }</td>
								<td>${comment.commentDate.substring(0,10) }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				
			</div>
			<!--===================================================-->
			<!--End Hover Rows-->
	
		</div>
		
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->

<!--DataTables [ OPTIONAL ]-->
<script <c:url value="/admin/plugins/datatables/media/js/jquery.dataTables.js"/>></script>
<script <c:url value="/admin/plugins/datatables/media/js/dataTables.bootstrap.js"/>></script>
<script <c:url value="/admin/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"/>></script>

<!--DataTables Sample [ SAMPLE ]-->
<script <c:url value="/admin/js/demo/tables-datatables.js"/>></script>