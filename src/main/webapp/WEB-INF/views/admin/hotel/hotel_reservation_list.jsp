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

				</div>
				<div id="demo-lft-tab-3" class="tab-pane fade">
					<!--Editable - combination with X-editable-->
					<!--===================================================-->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">호텔 예약 목록</h3>
						</div>
						<div class="panel-body">
							<table id="demo-editable3"
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

