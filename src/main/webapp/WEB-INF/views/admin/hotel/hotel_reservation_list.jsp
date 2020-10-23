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
		<h1 class="page-header text-overflow">호텔 예약 관리</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔관리</a></li>
		<li class="active">호텔 예약 목록</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
		
		<!--Default Tabs (Left Aligned)-->
		<!--===================================================-->
		<div class="tab-base">

			<!--Nav Tabs-->
			<ul class="nav nav-tabs">
				<li class="active">
					<a data-toggle="tab" href="#demo-lft-tab-1">New <span class="badge badge-purple">27</span></a>
				</li>
				<li>
					<a data-toggle="tab" href="#demo-lft-tab-2">Confirmed</a>
				</li>
				<li>
					<a data-toggle="tab" href="#demo-lft-tab-3">Old</a>
				</li>
			</ul>

			<!--Tabs Content-->
			<div class="tab-content">
				<div id="demo-lft-tab-1" class="tab-pane fade active in">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">호텔 예약 리스트</h3>
						</div>
					
						<!-- Foo Table - Filtering -->
						<!--===================================================-->
						<div class="panel-body">
							<table id="demo-dt-delete" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th data-toggle="true">예약번호</th>
										<th>예약일자</th>
										<th>예약회원번호</th>
										<th data-hide="phone, tablet">체크인</th>
										<th data-hide="phone, tablet">체크아웃</th>
										<th data-hide="phone, tablet">예약금액</th>
										<th data-hide="phone, tablet">예약상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${newReserveList}" var="reservation">
										<tr>
											<td><a href="${pageContext.request.contextPath }/admin/hotel_reservation_detail?reserveNo=${reservation.reserveNo }">${reservation.reserveNo }</a></td>
											<td>${reservation.reserveDate.substring(0,10) }</td>
											<td>${reservation.reserveMemno }</td>
											<td>${reservation.reserveCheckIn.substring(0,10) }</td>
											<td>${reservation.reserveCheckOut.substring(0,10) }</td>
											<td>${reservation.reservePrice }원</td>
											<td>
												<c:choose>
													<c:when test="${reservation.reserveState==1}">
														<span class="label label-table label-warning">미완료</span>
													</c:when>
													<c:when test="${reservation.reserveState==2 }">
														<span class="label label-table label-success">예약완료</span>
													</c:when>
													<c:when test="${reservation.reserveState==0 }">
														<span class="label label-table label-danger">취소</span>
													</c:when>										
												</c:choose>
											</td>
										</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
						<!--===================================================-->
						<!-- End Foo Table - Filtering -->
					
					</div>

				</div>
				<div id="demo-lft-tab-2" class="tab-pane fade">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">호텔 예약 리스트</h3>
						</div>
					
						<!-- Foo Table - Filtering -->
						<!--===================================================-->
						<div class="panel-body">
							<table id="confirmedReserve" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th data-toggle="true">예약번호</th>
										<th>예약일자</th>
										<th>예약회원번호</th>
										<th data-hide="phone, tablet">체크인</th>
										<th data-hide="phone, tablet">체크아웃</th>
										<th data-hide="phone, tablet">예약금액</th>
										<th data-hide="phone, tablet">예약상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${confirmedReserveList}" var="reservation">
										<tr>
											<td><a href="${pageContext.request.contextPath }/admin/hotel_reservation_detail?reserveNo=${reservation.reserveNo }">${reservation.reserveNo }</a></td>
											<td>${reservation.reserveDate.substring(0,10) }</td>
											<td>${reservation.reserveMemno }</td>
											<td>${reservation.reserveCheckIn.substring(0,10) }</td>
											<td>${reservation.reserveCheckOut.substring(0,10) }</td>
											<td>${reservation.reservePrice }원</td>
											<td>
												<c:choose>
													<c:when test="${reservation.reserveState==1}">
														<span class="label label-table label-warning">미완료</span>
													</c:when>
													<c:when test="${reservation.reserveState==2 }">
														<span class="label label-table label-success">예약완료</span>
													</c:when>
													<c:when test="${reservation.reserveState==0 }">
														<span class="label label-table label-danger">취소</span>
													</c:when>										
												</c:choose>
											</td>
										</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
						<!--===================================================-->
						<!-- End Foo Table - Filtering -->
					
					</div>
				</div>
				<div id="demo-lft-tab-3" class="tab-pane fade">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">호텔 예약 리스트</h3>
						</div>
					
						<!-- Foo Table - Filtering -->
						<!--===================================================-->
						<div class="panel-body">
							<table id="oldReserve" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th data-toggle="true">예약번호</th>
										<th>예약일자</th>
										<th>예약회원번호</th>
										<th data-hide="phone, tablet">체크인</th>
										<th data-hide="phone, tablet">체크아웃</th>
										<th data-hide="phone, tablet">예약금액</th>
										<th data-hide="phone, tablet">예약상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${cancelReserveList}" var="reservation">
										<tr>
											<td><a href="${pageContext.request.contextPath }/admin/hotel_reservation_detail?reserveNo=${reservation.reserveNo }">${reservation.reserveNo }</a></td>
											<td>${reservation.reserveDate.substring(0,10) }</td>
											<td>${reservation.reserveMemno }</td>
											<td>${reservation.reserveCheckIn.substring(0,10) }</td>
											<td>${reservation.reserveCheckOut.substring(0,10) }</td>
											<td>${reservation.reservePrice }원</td>
											<td>
												<c:choose>
													<c:when test="${reservation.reserveState==1}">
														<span class="label label-table label-warning">미완료</span>
													</c:when>
													<c:when test="${reservation.reserveState==2 }">
														<span class="label label-table label-success">예약완료</span>
													</c:when>
													<c:when test="${reservation.reserveState==0 }">
														<span class="label label-table label-danger">취소</span>
													</c:when>										
												</c:choose>
											</td>
										</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
						<!--===================================================-->
						<!-- End Foo Table - Filtering -->
					
					</div>
				</div>
			</div>
		</div>
		<!--===================================================-->
		<!--End Default Tabs (Left Aligned)-->
		
		

		
		
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