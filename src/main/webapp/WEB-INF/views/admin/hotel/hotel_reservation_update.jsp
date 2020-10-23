<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
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


			<form id="hotelReservationUpdateForm" method="post" class="form-horizontal">
				<div class="panel-body">
					<h4 class="text-thin">기본 정보</h4>
					<hr>

					<!--NOT EMPTY VALIDATOR-->
					<!--===================================================-->
					<fieldset>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약번호</label>
							<div class="col-lg-7">
								<span class="form-control" >${reserve.reserveNo }</span>
								<input type="hidden" name="reserveNo" value="${reserve.reserveNo }">
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
								<select name="reserveState" id="reserveState" class="form-control">
									<option value="1" id="notyet">미완료 </option>
									<option value="2" id="done">예약완료 </option>
									<option value="0" id="cancel">취소</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약금액</label>
							<div class="col-lg-7">
								<input class="form-control" name="reservePrice" value="${reserve.reservePrice }">
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
								<input  class="form-control" name="reserveMemno" value="${reserve.reserveMemno }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약자</label>
							<div class="col-lg-7">
								<input  class="form-control" name="reserveMemno" value="${reserve.reserveMemname }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약 인원수</label>
							<div class="col-lg-7">
								<input  class="form-control" name="reserveMemno" value="${reserve.reserveperson }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">휴대폰번호</label>
							<div class="col-lg-7">
								<input class="form-control" name="reserveMemphone" value="${reserve.reserveMemphone }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">이메일</label>
							<div class="col-lg-7">
								<input class="form-control" name="reserveMememail" value="${reserve.reserveMememail }">
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
								<select class="form-control" id="ReserveRoom">
									<c:forEach items="${hotelCategoryList}" var="hotelCategory">
										<option value="${hotelCategory.hotelCategoryNo }">${hotelCategory.hotelCategoryName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">체크인 날짜</label>
							<div class="col-lg-7">
								<input class="form-control" name="reserveCheckin" value="${reserve.reserveCheckIn.substring(0,10) }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">체크아웃 날짜</label>
							<div class="col-lg-7">
								<input class="form-control" name="reserveCheckout" value="${reserve.reserveCheckOut.substring(0,10) }">
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
								<span class="form-control" >${pay.hotelPayNo }</span>
								<input type="hidden" value="${pay.hotelPayNo }" name="hotelPayNo">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">결제 방법</label>
							<div class="col-lg-7">
								<select class="form-control" name="hotelPayment" id="hotelPayment">
									<option value="휴대폰결제">휴대폰결제</option>
									<option value="신용카드결제">신용카드결제</option>
									<option value="계좌이체">계좌이체</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">결제 상태</label>
							<div class="col-lg-7">
								<select class="form-control" name="hotelPayState" id="hotelPayState">
									<option value="1">미결제</option>
									<option value="2">결제</option>
									<option value="0">취소</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">결제 금액</label>
							<div class="col-lg-7">
								<input class="form-control" name="hotelPayPrice" value="${pay.hotelPayPrice }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">사용 포인트</label>
							<div class="col-lg-7">
								<input class="form-control" name="hotelMempoint" value="${pay.hotelMempoint }" id="point">
							</div>
						</div>
					</fieldset>
					<!--===================================================-->

					

				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-sm-7 col-sm-offset-3">
							<button class="btn btn-primary btn-labeled fa fa-send fa-lg" type="submit" >수정</button>
							<button class="btn btn-primary btn-labeled fa fa-send fa-lg" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/hotel_reservation_detail?reserveNo=${reserve.reserveNo }'">취소</button>
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

<script type="text/javascript">
//예약 상태 선택
var reserveStateV = ${reserve.reserveState };
$("#reserveState").val(reserveStateV).prop("selected",true);

/*
//객실 종류 선택
var hotelCategoryNoV = ${category.hotelCategoryNo };
$("#reserveRoom").val(hotelCategoryNoV).prop("selected",true);
*/

//결제 상태 선택
var hotelPayStateV = ${pay.hotelPayState };
alert(hotelPayStateV);
$("#hotelPayState").val(hotelPayStateV).prop("selected",true);



</script>