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
	
	<!--X-editable [ OPTIONAL ]-->
	<script src=<c:url value="/admin/plugins/x-editable/js/bootstrap-editable.min.js"/>></script>
	
	
	<!--Bootstrap Table [ OPTIONAL ]-->
	<script src=<c:url value="/admin/plugins/bootstrap-table/bootstrap-table.min.js"/>></script>
	
	
	<!--Bootstrap Table Extension [ OPTIONAL ]-->
	<script src=<c:url value="/admin/plugins/bootstrap-table/extensions/editable/bootstrap-table-editable.js"/>></script>
	
	
	<!--Demo script [ DEMONSTRATION ]-->
	<script src=<c:url value="/admin/js/demo/nifty-demo.min.js"/>></script>
	
	
	<!--Bootstrap Table Sample [ SAMPLE ]-->
	<script src=<c:url value="/admin/js/demo/tables-bs-table.js"/>></script>
	
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

	<script type="text/javascript">

	// BOOTSTRAP TABLE - CUSTOM TOOLBAR
	// =================================================================
	// Require Bootstrap Table
	// http://bootstrap-table.wenzhixin.net.cn/
	// =================================================================
	var $table = $('#hotelRoomTypeTable'),	$remove = $('#demo-delete-row');

	$table.on('check.bs.table uncheck.bs.table check-all.bs.table uncheck-all.bs.table', function () {
		$remove.prop('disabled', !$table.bootstrapTable('getSelections').length);
	});

	$remove.click(function () {
		var ids = $.map($table.bootstrapTable('getSelections'), function (row) {
			return row.id
		});
		$table.bootstrapTable('remove', {
			field: 'id',
			values: ids
		});
		$remove.prop('disabled', true);
	});
	</script>
	
	
</body>
</html>

    