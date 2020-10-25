<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">객실 상세 페이지</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔 관리</a></li>
		<li class="active">객실 상세페이지</li>
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
						<span class="form-control" >${category.hotelCategoryNo}</span>
						<input type="hidden" id="hotelCategoryNo" name="hotelCategoryNo" value="${category.hotelCategoryNo}">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">카테고리이름</label>
					<div class="col-sm-6">
						<span class="form-control" id="hotelCategoryName">${category.hotelCategoryName}</span>
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">객실 수</label>
					<div class="col-sm-6">
						<span class="form-control" id="hotelCategoryQty">${category.hotelCategoryQty}</span>
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지1</label>
					<div class="col-sm-6">
						<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg1 }"/> style="width: 100%;">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지2</label>
					<div class="col-sm-6">
						<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg2 }"/> style="width: 100%;">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지3</label>
					<div class="col-sm-6">
						<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg3 }"/> style="width: 100%;">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">이미지4</label>
					<div class="col-sm-6">
						<img src=<c:url value="/bluemoon/images/hotel_img/${category.hotelCategoryImg4 }"/> style="width: 100%;">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">객실요금</label>
					<div class="col-sm-6">
						<span class="form-control" id="hotelCategoryPrice">${category.hotelCategoryPrice}원</span>
					</div>
				</div>

				
				
			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-9 col-sm-offset-3">
						<button class="btn btn-primary  fa-lg" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/hotel_room_update?hotelCategoryNo=${category.hotelCategoryNo }';">수정</button>
						<button class="btn btn-info  fa-lg" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/hotel_room_type';">목록</button>
						<button class="btn btn-danger  fa-lg" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/hotel_room_delete?hotelCategoryNo=${category.hotelCategoryNo }';">삭제</button>
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