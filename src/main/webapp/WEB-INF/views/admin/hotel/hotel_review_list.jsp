<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Bootstrap Table [ OPTIONAL ]-->
<link href=<c:url value = "/admin/plugins/bootstrap-table/bootstrap-table.min.css"/> rel="stylesheet">

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
				
				<table class="table table-hover">
					<thead>
						<tr>
							<th>글 번호</th>
							<th>회원이름</th>
							<th >제목</th>
							<th >내용</th>
							<th >작성날짜</th>
							<th class="">객실</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>0001</td>
							<td>강지우</td>
							<td>제목</td>
							<td>내용</td>
							<td>작성날짜</td>
							<td>
								<span class="icon-wrap icon-wrap-sm icon-circle bg-purple"><i class="fa fa-desktop fa-lg"></i></span>
								
							</td>
						</tr>
						<tr>
							<td>0002</td>
							<td>강지우</td>
							<td>제목</td>
							<td>내용</td>
							<td>작성날짜</td>
							<td><span class="icon-wrap icon-wrap-sm icon-circle bg-purple"><i class="fa fa-desktop fa-lg"></i></span></td>
						</tr>
						<tr>
							<td>0003</td>
							<td>강지우</td>
							<td>제목</td>
							<td>내용</td>
							<td>작성날짜</td>
							<td><span class="icon-wrap icon-wrap-sm icon-circle bg-purple"><i class="fa fa-desktop fa-lg"></i></span></td>
						</tr>
						<tr>
							<td>0004</td>
							<td>강지우</td>
							<td>제목</td>
							<td>내용</td>
							<td>작성날짜</td>
							<td><span class="icon-wrap icon-wrap-sm icon-circle bg-purple"><i class="fa fa-desktop fa-lg"></i></span></td>
						</tr>

					</tbody>
				</table>
				



				<div style="float: right;">

					<!--Pagination-->
					<!--===================================================-->
					<ul class="pagination">
						<li><a href="#" class="fa fa-angle-double-left"></a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" class="fa fa-angle-double-right"></a></li>
					</ul>
					<!--===================================================-->
					<!--End Default Pagination-->

				</div>
				
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