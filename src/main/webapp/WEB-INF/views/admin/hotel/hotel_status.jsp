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
				<table id="demo-foo-filtering" class="table table-bordered table-hover toggle-circle" data-page-size="7">
					<thead>
						<tr>
							<th data-toggle="true">First Name</th>
							<th>Last Name</th>
							<th data-hide="phone, tablet">Job Title</th>
							<th data-hide="phone, tablet">DOB</th>
							<th data-hide="phone, tablet">Status</th>
						</tr>
					</thead>
					<div class="pad-btm form-inline">
						<div class="row">
							<div class="col-sm-6 text-xs-center">
								<div class="form-group">
									<label class="control-label">Status</label>
									<select id="demo-foo-filter-status" class="form-control">
										<option value="">Show all</option>
										<option value="active">Active</option>
										<option value="disabled">Disabled</option>
										<option value="suspended">Suspended</option>
									</select>
								</div>
							</div>
							<div class="col-sm-6 text-xs-center text-right">
								<div class="form-group">
									<input id="demo-foo-search" type="text" placeholder="Search" class="form-control" autocomplete="off">
								</div>
							</div>
						</div>
					</div>
					<tbody>
						<tr>
							<td>Isidra</td>
							<td>Boudreaux</td>
							<td>Traffic Court Referee</td>
							<td>22 Jun 1972</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Shona</td>
							<td>Woldt</td>
							<td>Airline Transport Pilot</td>
							<td>3 Oct 1981</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Granville</td>
							<td>Leonardo</td>
							<td>Business Services Sales Representative</td>
							<td>19 Apr 1969</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Easer</td>
							<td>Dragoo</td>
							<td>Drywall Stripper</td>
							<td>13 Dec 1977</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Maple</td>
							<td>Halladay</td>
							<td>Aviation Tactical Readiness Officer</td>
							<td>30 Dec 1991</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Maxine</td>
							<td><a href="#">Woldt</a></td>
							<td><a href="#">Business Services Sales Representative</a></td>
							<td>17 Oct 1987</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Lorraine</td>
							<td>Mcgaughy</td>
							<td>Hemodialysis Technician</td>
							<td>11 Nov 1983</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Lizzee</td>
							<td><a href="#">Goodlow</a></td>
							<td>Technical Services Librarian</td>
							<td>1 Nov 1961</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Judi</td>
							<td>Badgett</td>
							<td>Electrical Lineworker</td>
							<td>23 Jun 1981</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Lauri</td>
							<td>Hyland</td>
							<td>Blackjack Supervisor</td>
							<td>15 Nov 1985</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Isidra</td>
							<td>Boudreaux</td>
							<td>Traffic Court Referee</td>
							<td>22 Jun 1972</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Shona</td>
							<td>Woldt</td>
							<td>Airline Transport Pilot</td>
							<td>3 Oct 1981</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Granville</td>
							<td>Leonardo</td>
							<td>Business Services Sales Representative</td>
							<td>19 Apr 1969</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Easer</td>
							<td>Dragoo</td>
							<td>Drywall Stripper</td>
							<td>13 Dec 1977</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Maple</td>
							<td>Halladay</td>
							<td>Aviation Tactical Readiness Officer</td>
							<td>30 Dec 1991</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Maxine</td>
							<td><a href="#">Woldt</a></td>
							<td><a href="#">Business Services Sales Representative</a></td>
							<td>17 Oct 1987</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Lorraine</td>
							<td>Mcgaughy</td>
							<td>Hemodialysis Technician</td>
							<td>11 Nov 1983</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Lizzee</td>
							<td><a href="#">Goodlow</a></td>
							<td>Technical Services Librarian</td>
							<td>1 Nov 1961</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Judi</td>
							<td>Badgett</td>
							<td>Electrical Lineworker</td>
							<td>23 Jun 1981</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Lauri</td>
							<td>Hyland</td>
							<td>Blackjack Supervisor</td>
							<td>15 Nov 1985</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Isidra</td>
							<td>Boudreaux</td>
							<td>Traffic Court Referee</td>
							<td>22 Jun 1972</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Shona</td>
							<td>Woldt</td>
							<td>Airline Transport Pilot</td>
							<td>3 Oct 1981</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Granville</td>
							<td>Leonardo</td>
							<td>Business Services Sales Representative</td>
							<td>19 Apr 1969</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Easer</td>
							<td>Dragoo</td>
							<td>Drywall Stripper</td>
							<td>13 Dec 1977</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Maple</td>
							<td>Halladay</td>
							<td>Aviation Tactical Readiness Officer</td>
							<td>30 Dec 1991</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Maxine</td>
							<td><a href="#">Woldt</a></td>
							<td><a href="#">Business Services Sales Representative</a></td>
							<td>17 Oct 1987</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Lorraine</td>
							<td>Mcgaughy</td>
							<td>Hemodialysis Technician</td>
							<td>11 Nov 1983</td>
							<td><span class="label label-table label-dark">Disabled</span></td>
						</tr>
						<tr>
							<td>Lizzee</td>
							<td><a href="#">Goodlow</a></td>
							<td>Technical Services Librarian</td>
							<td>1 Nov 1961</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
						<tr>
							<td>Judi</td>
							<td>Badgett</td>
							<td>Electrical Lineworker</td>
							<td>23 Jun 1981</td>
							<td><span class="label label-table label-success">Active</span></td>
						</tr>
						<tr>
							<td>Lauri</td>
							<td>Hyland</td>
							<td>Blackjack Supervisor</td>
							<td>15 Nov 1985</td>
							<td><span class="label label-table label-danger">Suspended</span></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="5">
								<div class="text-right">
									<ul class="pagination"></ul>
								</div>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			<!--===================================================-->
			<!-- End Foo Table - Filtering -->
		
		</div>


		<!--Custom Toolbar-->
		<!--===================================================-->
		<!--
		<div class="panel">
			<div class="panel-heading">
				<h3 class="panel-title">호텔 예약 리스트</h3>
			</div>
			<div class="panel-body">
				<button id="demo-delete-row" class="btn btn-danger btn-labeled fa fa-times" disabled>Delete</button>
				<table id="demo-custom-toolbar" class="demo-add-niftycheck" data-toggle="table"
					   data-url="${pageContext.request.contextPath }/admin/data/bs-table.json"
					   data-toolbar="#demo-delete-row"
					   data-search="true"
					   data-show-refresh="true"
					   data-show-toggle="true"
					   data-show-columns="true"
					   data-sort-name="id"
					   data-page-list="[5, 10, 20]"
					   data-page-size="5"
					   data-pagination="true" data-show-pagination-switch="true">
					<thead>
						<tr>
							<th data-field="state" data-checkbox="true">ID</th>
							<th data-field="id" data-sortable="true" data-formatter="invoiceFormatter">ID</th>
							<th data-field="name" data-sortable="true">Name</th>
							<th data-field="date" data-sortable="true" data-formatter="dateFormatter">Order date</th>
							<th data-field="amount" data-align="center" data-sortable="true" data-sorter="priceSorter">Balance</th>
							<th data-field="status" data-align="center" data-sortable="true" data-formatter="statusFormatter">Status</th>
							<th data-field="track" data-align="center" data-sortable="true" data-formatter="trackFormatter">Tracking Number</th>
						</tr>
					</thead>
					<%--
					<tbody>
						<tr>
							<td data-field="state" data-checkbox="true">ID</td>
							<td data-field="id" data-sortable="true" data-formatter="invoiceFormatter">abc123</td>
							<td data-field="name" data-sortable="true">김말이</td>
							<td data-field="date" data-sortable="true" data-formatter="dateFormatter">Today 01:25 PM</td>
							<td data-field="amount" data-align="center" data-sortable="true" data-sorter="priceSorter">$132.20</td>
							<td data-field="status" data-align="center" data-sortable="true" data-formatter="statusFormatter">Active</td>
							<td data-field="track" data-align="center" data-sortable="true" data-formatter="trackFormatter">sdifj234</td>
						</tr>
					</tbody>
					 --%>
				</table>
			</div>
		</div>
		 -->
		<!--===================================================-->

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
									<th class="min-width">Device</th>
									<th>Name</th>
									<th class="text-center">Value</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center"><span class="icon-wrap icon-wrap-sm icon-circle bg-purple"><i class="fa fa-desktop fa-lg"></i></span></td>
									<td>
										<span class="text-semibold">Desktop</span>
										<br>
										<small class="text-muted">Last 7 days : 4,234k</small>
									</td>
									<td class="text-center"><span class="text-danger text-semibold">- 28.76%</span></td>
								</tr>
								<tr>
									<td class="text-center"><span class="icon-wrap icon-wrap-sm icon-circle bg-info"><i class="fa fa-laptop fa-lg"></i></span></td>
									<td>
										<span class="text-semibold">Laptop</span>
										<br>
										<small class="text-muted">Last 7 days : 3,876k</small>
									</td>
									<td class="text-center"><span class="text-warning text-semibold">- 8.55%</span></td>
								</tr>
								<tr>
									<td class="text-center"><span class="icon-wrap icon-wrap-sm icon-circle bg-danger"><i class="fa fa-tablet fa-lg"></i></span></td>
									<td>
										<span class="text-semibold">Tablet</span>
										<br>
										<small class="text-muted">Last 7 days : 45,678k</small>
									</td>
									<td class="text-center"><span class="text-success text-semibold">+ 58.56%</span></td>
								</tr>
								<tr>
									<td class="text-center"><span class="icon-wrap icon-wrap-sm icon-circle bg-mint"><i class="fa fa-mobile fa-lg"></i></span></td>
									<td>
										<span class="text-semibold">Smartphone</span>
										<br>
										<small class="text-muted">Last 7 days : 34,553k</small>
									</td>
									<td class="text-center"><span class="text-success text-semibold">+ 35.76%</span></td>
								</tr>
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
						<h3 class="panel-title">Line Chart 호텔 예약 그래프</h3>
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