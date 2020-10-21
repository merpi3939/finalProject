<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Bootstrap Table [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/bootstrap-table/bootstrap-table.min.css"/> rel="stylesheet">


<!--X-editable [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/x-editable/css/bootstrap-editable.css"/> rel="stylesheet">



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
					<!--Editable - combination with X-editable-->
					<!--===================================================-->

							<table id="demo-editable"
								   data-search="true"
								   data-show-refresh="true"
								   data-show-toggle="true"
								   data-show-columns="true"
								   data-sort-name="id"
								   data-page-list="[5, 10, 20]"
								   data-page-size="10"
								   data-pagination="true" data-show-pagination-switch="true">
							</table>

				</div>
				<div id="demo-lft-tab-2" class="tab-pane fade">
					<!--Editable - combination with X-editable-->
					<!--===================================================-->
							<!-- 
							<table id="confirmedTable"
								   data-search="true"
								   data-show-refresh="true"
								   data-show-toggle="true"
								   data-show-columns="true"
								   data-sort-name="id"
								   data-page-list="[5, 10, 20]"
								   data-page-size="10"
								   data-pagination="true" data-show-pagination-switch="true">
							</table>
							 -->
							
							<div id="display">
							
							</div>
				</div>
				<div id="demo-lft-tab-3" class="tab-pane fade">
					<!--Editable - combination with X-editable-->
					<!--===================================================-->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">호텔 예약 목록</h3>
						</div>
						<div class="panel-body">
							<div id="display">
							</div>
							<table id="oracleDB"
								data-search="true"
								data-show-refresh="true"
								data-show-toggle="true"
								data-show-columns="true"
								data-sort-name="id"
								data-page-list="[5, 10, 20]"
								data-page-size="10"
								data-pagination="true" data-show-pagination-switch="true">
								<tr>
									<th>예약번호</th>
									<th>예약자</th>
									<th>예약날짜</th>
									<th>예약금액</th>
									<th>예약상태</th>
								</tr>
								<c:forEach var="reservation" items="${reservationList }">
									<tr>
										<td>${reservation.reserveNo}</td>
										<td>${reservation.reserveperson}</td>
										<td>${reservation.reserveDate}</td>
										<td>${reservation.reservePrice}</td>
										<td>${reservation.reserveState}</td>
									</tr>
								</c:forEach>

							
							</table>
						</div>
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


<!-- handler 활용  DB데이터 가져오기 -->
<script id="template" type="text/x-handlebars-template">
<table id="handlertable"
	data-search="true"
	data-show-refresh="true"
	data-show-toggle="true"
	data-show-columns="true"
	data-sort-name="id"
	data-page-list="[5, 10, 20]"
	data-page-size="10"
	data-pagination="true" data-show-pagination-switch="true">

	{{#each .}}
	<tr>예약번호 = {{reserveNo}}</tr>
	<tr>예약자 = {{reserveperson}}</tr>
	<tr>예약날짜 = {{reserveDate}}</tr>
	<tr>예약금액 = {{reservePrice}}</tr>
	<tr>예약상태 = {{reserveState}}</tr>
	{{/each}}

</table>
</script>

<script type="text/javascript">
$.ajax({
	type: "GET",
	url: "hotel_reservation_list",
	dataType: "json",
	success: function(json) {
		//템플릿 코드를 반환받아 저장
		var source=$("#template").html();
		//템플릿 코드를 전달하여 템플릿 객체 생성
		var template=Handlebars.compile(source);
		//템플릿 객체에 JavaScript 객체를 전달하여 HTML 코드로 변환하여 반환받아 응답 처리
		$("#display").html(template(json));
	},
	error: function(xhr) {
		$("#display").text("응답오류 = "+xhr.status);
	}
});
</script>

 
 <%--
 	<script type="text/javascript">
	$('#confirmedTable').bootstrapTable({
		idField: 'id',
		url: '${pageContext.request.contextPath }/admin/data/bs-table.json',
		columns: [{
			field: 'id',
			formatter:'invoiceFormatter',
			title: '예약번호'
		}, {
			field: 'name',
			title: '예약자',
			editable: {
				type: 'text'
			}
		}, {
			field: 'date',
			title: '예약날짜'
		}, {
			field: 'amount',
			title: '예약금액',
			editable: {
				type: 'text'
			}
		}, {
			field: 'status',
			align: 'center',
			title: '예약상태',
			formatter:'statusFormatter'
		}]
	});
	</script>
	
	 --%>