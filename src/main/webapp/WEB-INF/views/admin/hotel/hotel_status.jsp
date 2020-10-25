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
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">호텔 현황 관리</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔 관리</a></li>
		<li class="active">호텔 현황</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
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
						<c:forEach items="${reserveList}" var="reserve">
							<tr>
								<td><a href="${pageContext.request.contextPath }/admin/hotel_reservation_detail?reserveNo=${reserve.reserveNo }">${reserve.reserveNo }</a></td>
								<td>${reserve.reserveDate.substring(0,10) }</td>
								<td>${reserve.reserveMemno }</td>
								<td>${reserve.reserveCheckIn.substring(0,10) }</td>
								<td>${reserve.reserveCheckOut.substring(0,10) }</td>
								<td>${reserve.reservePrice }원</td>
								<td>
									<c:choose>
										<c:when test="${reserve.reserveState==1}">
											<span class="label label-table label-warning">미완료</span>
										</c:when>
										<c:when test="${reserve.reserveState==2 }">
											<span class="label label-table label-success">예약완료</span>
										</c:when>
										<c:when test="${reserve.reserveState==0 }">
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


		<div class="row equal">
		
			<div class="col-md-6">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">호텔 후기 리스트</h3>
					</div>
		
					<!--Hover Rows-->
					<!--===================================================-->
					<div class="panel-body">
						<table class="table table-hover table-vcenter">
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
										<td style="text-align: right;">${comment.commentNo }</td>
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
			
			<div class="col-md-6">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">호텔 예약 그래프</h3>
					</div>
					<div class="panel-body">
		
						<!--Morris Line Chart placeholder-->
						<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
						<div id="demo-morris-line" style="height: 300px;"></div>
						<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
		
					</div>
				</div>
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

	



<script>
var day_data = [
	{"elapsed": "I", "value": 34},
	{"elapsed": "II", "value": 24},
	{"elapsed": "III", "value": 3},
	{"elapsed": "IV", "value": 12},
	{"elapsed": "V", "value": 13},
	{"elapsed": "VI", "value": 22},
	{"elapsed": "VII", "value": 5},
	{"elapsed": "VIII", "value": 26},
	{"elapsed": "IX", "value": 12},
	{"elapsed": "X", "value": 19}
];

new Morris.Line({
	element: 'demo-morris-line',
	data: day_data,
	xkey: 'elapsed',
	ykeys: ['value'],
	labels: ['value'],
	gridEnabled: false,
	gridLineColor: 'transparent',
	lineColors: ['#045d97'],
	lineWidth: 2,
	parseTime: false,
	resize:true,
	hideHover: 'auto'
});
</script>

<!--DataTables [ OPTIONAL ]-->
<script <c:url value="/admin/plugins/datatables/media/js/jquery.dataTables.js"/>></script>
<script <c:url value="/admin/plugins/datatables/media/js/dataTables.bootstrap.js"/>></script>
<script <c:url value="/admin/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"/>></script>

<!--DataTables Sample [ SAMPLE ]-->
<script <c:url value="/admin/js/demo/tables-datatables.js"/>></script>