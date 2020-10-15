<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">호텔 리뷰 상세페이지</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">호텔 관리</a></li>
		<li class="active">호텔 리뷰 상세 정보</li>
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
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">글번호</label>
					<div class="col-sm-6">
						<input type="text" placeholder="Normal" class="form-control" id="commentNo">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">객실</label>
					<div class="col-sm-6">
						<input type="text" placeholder="Normal" class="form-control" id="commentRoom">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">작성자</label>
					<div class="col-sm-6">
						<input type="text" placeholder="Normal" class="form-control" id="commentMemno">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">작성날짜</label>
					<div class="col-sm-6">
						<input type="text" placeholder="Normal" class="form-control" id="commentDate">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">글상태</label>
					<div class="col-sm-6">
						<input type="text" placeholder="Normal" class="form-control" id="commentState">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">글제목</label>
					<div class="col-sm-6">
						<input type="text" placeholder="Normal" class="form-control" id="commentTitle">
					</div>
				</div>
				<div class="form-group">
					<label for="demo-is-inputnormal" class="col-sm-3 control-label">글내용</label>
					<div class="col-sm-6">
						<textarea placeholder="Message" rows="13" class="form-control" id="commentContent"></textarea>
					</div>
				</div>
				
				
			</div>
			<div class="panel-footer">
				<div class="row">
					<div class="col-sm-9 col-sm-offset-3">
						<button class="btn btn-primary btn-rounded fa-lg" type="submit">수정</button>
						<button class="btn btn-info btn-rounded fa-lg" type="reset">리셋</button>
						<button class="btn btn-danger btn-rounded fa-lg" type="reset">삭제</button>
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