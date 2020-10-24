<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">객실 수정 페이지</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔 관리</a></li>
		<li class="active">객실 수정페이지</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		

		<div class="panel">
		<!--Input Size-->
		<!--===================================================-->
		<form class="form-horizontal">
			<div class="panel-body">

				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">카테고리번호</label>
					<div class="col-sm-6">
						<input class="form-control" id="hotelCategoryNo" name="hotelCategoryNo" value="${category.hotelCategoryNo}">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">카테고리이름</label>
					<div class="col-sm-6">
						<input class="form-control" id="hotelCategoryName" name="hotelCategoryName" value="${category.hotelCategoryName}">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">객실 수</label>
					<div class="col-sm-6">
						<input class="form-control" id="hotelCategoryQty" name="hotelCategoryQty" value="${category.hotelCategoryQty}">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지1</label>
					<div class="col-sm-6">
						<input type="file" name="hotelCategoryImg1">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지2</label>
					<div class="col-sm-6">
						<input type="file" name="hotelCategoryImg2">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지3</label>
					<div class="col-sm-6">
						<input type="file" name="hotelCategoryImg3">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지4</label>
					<div class="col-sm-6">
						<input type="file" name="hotelCategoryImg4">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">객실요금</label>
					<div class="col-sm-6">
						<input class="form-control" id="hotelCategoryPrice" name="hotelCategoryPrice" value="${category.hotelCategoryPrice}">
					</div>
				</div>

				
				
			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-9 col-sm-offset-3">
						<button class="btn btn-primary  fa-lg" type="submit" >수정</button>
						<button class="btn btn-danger  fa-lg" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/hotel_room_detail?hotelCategoryNo=${hotelCategory.hotelCategoryNo }';">취소</button>
					</div>
				</div>
			</div>
		</form>
		<!--===================================================-->
		<!--End Input Size-->
		</div>
		
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->