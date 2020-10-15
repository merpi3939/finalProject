<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">호텔 예약 상세/변경 페이지</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔관리</a></li>
		<li class="active">호텔 예약 상세/변경 페이지</li>
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
								<input type="text" class="form-control" name="reserveNo" value="reserveNo" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약날짜</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="reserveDate" value="reserveDate">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약상태</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="reserveState" value="reserveState">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">예약금액</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="reservePrice" value="reservePrice">
							</div>
						</div>

					</fieldset>
					<!--===================================================-->

					<hr>
					<h4 class="mar-btm text-thin">회원 정보</h4>
					<hr>

					<!--IDENTICAL VALIDATOR-->
					<!--===================================================-->
					<fieldset>
						<div class="form-group">
							<label class="col-lg-3 control-label">회원 번호</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="reserveMemno" value="reserveMemno">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">휴대폰번호</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="reserveMemphone" value="reserveMemphone">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">이메일</label>
							<div class="col-lg-7">
								<input type="email" class="form-control" name="reserveMememail" value="reserveMememail">
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
								<input type="text" class="form-control" name="reserveRoom" value="reserveRoom">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">체크인 날짜</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="reserveCheckin" value="reserveCheckin">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">체크아웃 날짜</label>
							<div class="col-lg-7">
								<input type="text" class="form-control" name="reserveCheckout" value="reserveCheckout">
							</div>
						</div>
					</fieldset>
					<!--===================================================-->

					

				</div>
				<div class="panel-footer">
					<div class="row">
						<div class="col-sm-7 col-sm-offset-3">
							<button class="btn btn-primary btn-labeled fa fa-send fa-lg" type="submit">Submit</button>
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