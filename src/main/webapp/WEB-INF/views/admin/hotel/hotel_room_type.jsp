<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<button id="demo-delete-row" class="btn btn-danger btn-labeled fa fa-times" disabled>Delete</button>
					<table id="demo-custom-toolbar" class="demo-add-niftycheck" data-toggle="table"
						   data-url="data/bs-table.json"
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
					</table>
			</div>
		
		</div>
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->