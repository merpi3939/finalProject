<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- morris chart -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>


 
<!--Bootstrap Table [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/datatables/media/css/dataTables.bootstrap.css" /> rel="stylesheet">
<link href=<c:url value="/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css"/>  rel="stylesheet">



<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">

	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
		<%-- <h3 class="text-thin">Your content...</h3> --%>
		<%--<jsp:include page="<%=contentPath %>"></jsp:include> --%>
		
		
		<div class="row">
		
		<!-- chart start -->
		<div class="col-lg-8 col-md-12">
			<div class="row">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">Blue Moon 매출</h3>
						</div>
						<div class="no-padding height-8 panel-body">
							<div class="row text-center">
								<div class="col-lg-3 col-md-3 col-sm-3">
									<h4 class="margin-0"> 150,000 원 </h4>
									<p class="text-muted"> Today's Income</p>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<h4 class="margin-0"> 9,380,000 원 </h4>
									<p class="text-muted">This Week's Income</p>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<h4 class="margin-0"> 19,100,000 원 </h4>
									<p class="text-muted">This Month's Income</p>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
									<h4 class="margin-0"> 320,900,000 원 </h4>
									<p class="text-muted">This Year's Income</p>
								</div>
							</div>
							<div class="row ">
								<div id="area_line_chart" class="width-100"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Chart end -->
		
		<div class="col-lg-4">
		<div class="row">

									
			<!--Large tile (Visit Today)-->
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<div class="col-sm-6 col-md-6">
				<div class="panel panel-dark panel-colorful">
					<div class="panel-body text-center">
						<p class="text-uppercase mar-btm text-sm">Join Today</p>
						<i class="fa fa-users fa-5x"></i>
						<hr>
						<p class="h2 text-thin">${joinQty.joinCount }</p>
					</div>
				</div>
			</div> 
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<!--End large tile (Visit Today)-->


			<!--Large tile (Comments)-->
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<div class="col-sm-6 col-md-6">
				<div class="panel panel-danger panel-colorful">
					<div class="panel-body text-center">
						<p class="text-uppercase mar-btm text-sm">New QnA</p>
						<i class="fa fa-comment fa-5x"></i>
						<hr>
						<p class="h2 text-thin">${newQna }</p>
					</div>
				</div>
			</div>
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<!--Large tile (Comments)-->

			
			<!--Large tile (New orders)-->
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<div class="col-sm-6 col-md-6">
				<div class="panel panel-primary panel-colorful">
					<div class="panel-body text-center">
						<p class="text-uppercase mar-btm text-sm">New Waterpark Reservation</p>
						<i class="fa fa-shopping-cart fa-5x"></i>
						<hr>
						<p class="h2 text-thin">2,423</p>
					</div>
				</div>
			</div>
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<!--End Large tile (New orders)-->

			<!--Large tile (New orders)-->
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<div class="col-sm-6 col-md-6">
				<div class="panel panel-info panel-colorful">
					<div class="panel-body text-center">
						<p class="text-uppercase mar-btm text-sm">New Hotel Reservation</p>
						<i class="fa fa-shopping-cart fa-5x"></i>
						<hr>
						<p class="h2 text-thin">${newReservation }</p>
					</div>
				</div>
			</div>
			<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
			<!--End Large tile (New orders)-->

		</div>
		</div>
		
		</div>
		
		<!-- Table Start -->
		<!-- Row selection and deletion (multiple rows) -->
		<!--===================================================-->
		<div class="panel col-md-12">
			<div class="panel-heading">
				<h3 class="panel-title">호텔 예약 리스트</h3>
			</div>

			<div class="panel-body">

				
				<table id="demo-dt-delete" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>예약번호</th>
										<th>예약일자</th>
										<th class="min-tablet">예약회원번호</th>
										<th class="min-tablet">체크인</th>
										<th class="min-desktop">체크아웃</th>
										<th class="min-desktop">예약금액</th>
										<th class="min-desktop">예약상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${reservationList }" var="reservation">
										<tr>
											<td><a href="${pageContext.request.contextPath }/admin/hotel_reservation_detail?reserveNo=${reservation.reserveNo }">${reservation.reserveNo }</a></td>
											<td>${reservation.reserveDate }</td>
											<td>${reservation.reserveCheckIn }</td>
											<td>${reservation.reserveCheckOut }</td>
											<td>${reservation.reserveMemno }</td>
											<td>${reservation.reservePrice }</td>
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
		</div>
		<!--===================================================-->
		<!-- End Row selection and deletion (multiple rows) -->
		
		
		<!-- Table End -->
		

		
		
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->


<script>
new Morris.Area({
	element: "area_line_chart",
	behaveLikeLine: true,
	data: [
	       {w: '2019 Q1', x: 2, y: 0, z: 0},
	       {w: '2019 Q2', x: 50, y: 15, z: 5},
	       {w: '2019 Q3', x: 15, y: 50, z: 23},
	       {w: '2019 Q4', x: 45, y: 12, z: 7},
	       {w: '2019 Q5', x: 20, y: 32, z: 55},
	       {w: '2019 Q6', x: 39, y: 67, z: 20},
	       {w: '2019 Q7', x: 20, y: 9, z: 5}
	       ],
	       xkey: 'w',
	       ykeys: ['x', 'y', 'z'],
	       labels: ['X', 'Y', 'Z'],
	       pointSize: 0,
	       lineWidth: 0,
	       resize: true,
	       fillOpacity: 0.8,
	       behaveLikeLine: true,
	       gridLineColor: '#e0e0e0',
	       hideHover: 'auto',
	       lineColors: ['rgb(97, 97, 97)', 'rgb(0, 206, 209)', 'rgb(255, 117, 142)']
});
</script>
<!-- Table Chart script -->


 
<!--DataTables [ OPTIONAL ]-->
<script <c:url value="/admin/plugins/datatables/media/js/jquery.dataTables.js"/>></script>
<script <c:url value="/admin/plugins/datatables/media/js/dataTables.bootstrap.js"/>></script>
<script <c:url value="/admin/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"/>></script>

<!--DataTables Sample [ SAMPLE ]-->
<script <c:url value="/admin/js/demo/tables-datatables.js"/>></script>