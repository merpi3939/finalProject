<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">호텔 예약 상세 페이지</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔관리</a></li>
		<li class="active">호텔 예약 상세 페이지</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">

		
		<div class="panel">


			<form id="demo-bvd-notempty" action="forms-validation.html" class="form-horizontal">
				<div class="panel-body">
					<h4 class="text-thin">기본 정보</h4>
					<hr>

					<!--NOT EMPTY VALIDATOR-->
					<!--===================================================-->
					<fieldset>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약번호</label>
							<div class="col-lg-7">
								<span name="reserveNo" class="form-control" >${reserve.reserveNo }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약날짜</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveDate" >${reserve.reserveDate.substring(0,10) }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약상태</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveState" >
								<c:choose>
									<c:when test="${reserve.reserveState==1 }">미완료</c:when>
									<c:when test="${reserve.reserveState==2 }">예약완료</c:when>
									<c:when test="${reserve.reserveState==0 }">취소</c:when>
								</c:choose>
								
								</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약금액</label>
							<div class="col-lg-7">
								<span class="form-control" name="reservePrice" >${reserve.reservePrice }</span>
							</div>
						</div>

					</fieldset>
					<!--===================================================-->

					<hr>
					<h4 class="mar-btm text-thin">예약자 정보</h4>
					<hr>

					<!--IDENTICAL VALIDATOR-->
					<!--===================================================-->
					<fieldset>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약 회원 번호</label>
							<div class="col-lg-7">
								<span  class="form-control" name="reserveMemno" >${reserve.reserveMemno }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약 회원 이름</label>
							<div class="col-lg-7">
								<span  class="form-control" name="reserveMemno" >${reserve.reserveMemname }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약 인원수</label>
							<div class="col-lg-7">
								<span  class="form-control" name="reserveMemno" >${reserve.reserveperson }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">휴대폰번호</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveMemphone" >${reserve.reserveMemphone }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">이메일</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveMememail" >${reserve.reserveMememail }</span>
							</div>
						</div>
					</fieldset>
					<!--===================================================-->
					<hr>
					<h4 class="mar-btm text-thin">객실 정보</h4>
					<hr>

					<!--IDENTICAL VALIDATOR-->
					<!--===================================================-->
					<fieldset>
						<div class="form-group">
							<label class="col-lg-3 control-label">객실 종류</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveRoom" >${category.hotelCategoryName }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">체크인 날짜</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveCheckin" >${reserve.reserveCheckIn.substring(0,10) }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">체크아웃 날짜</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveCheckout" >${reserve.reserveCheckOut.substring(0,10) }</span>
							</div>
						</div>
					</fieldset>
					<!--===================================================-->
					<hr>
					<h4 class="mar-btm text-thin">결제 정보</h4>
					<hr>
					<!--===================================================-->
					<!--IDENTICAL VALIDATOR-->
					<!--===================================================-->
					<fieldset>
						<div class="form-group">
							<label class="col-lg-3 control-label">결제 번호</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveRoom" >${pay.hotelPayNo }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">결제 방법</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveCheckin" >${pay.hotelPayment }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">결제 상태</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveCheckout" >
									<c:choose>
										<c:when test="${pay.hotelPayState==1 }">미결제</c:when>
										<c:when test="${pay.hotelPayState==2 }">결제</c:when>
										<c:when test="${pay.hotelPayState==0 }">취소</c:when>
									</c:choose>
								
								</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">결제 금액</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveCheckout" >${pay.hotelPayPrice }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">사용 포인트</label>
							<div class="col-lg-7">
								<span class="form-control" name="reserveCheckout" >${pay.hotelMempoint }</span>
							</div>
						</div>
					</fieldset>
					<!--===================================================-->

					

				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-sm-7 col-sm-offset-3">
							<button class="btn btn-primary btn-labeled fa fa-send fa-lg" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/hotel_reservation_update?reserveNo=${reserve.reserveNo }';">수정</button>
							<button class="btn btn-info btn-labeled fa fa-send fa-lg" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/hotel_reservation_list'">목록</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->