<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	
	<!--■CONTENT CONTAINER-->
	<!--===================================================-->
	<div id="content-container">
		
		<!--■Page Title-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<div id="page-title">
			<h1 class="page-header text-overflow">BlueMoon Members</h1>
		</div>
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End page title-->
		
		
		<!--■Breadcrumb-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li><a href="#">Library</a></li>
			<li class="active">Data</li>
		</ol>
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End breadcrumb-->
		
		<div id="page-content">
		<!--■page content-->
		<!--===================================================-->
		
				<!-- Basic Data Tables -->
					<!--===================================================-->
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">블루문 워터파크 이용요금 등록 페이지입니다.</h3>
					</div>
					
					<form id="memberModify" class="panel-body form-horizontal form-padding" action="">
						<!--■subject-->
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">이용권 이름</label>
							<div class="col-md-9">
								<input type="text" id="name" class="form-control" style="width: 200px;">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">시즌</label>
							<div class="col-md-9">
								<input type="text" id="name" class="form-control" style="width: 200px;">
							</div>
						</div>
							
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">대인</label>
							<div class="col-md-9">
								<input type="text" id="name" class="form-control" style="width: 200px;">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">소인</label>
							<div class="col-md-9">
								<input type="text" id="name" class="form-control" style="width: 200px;">
							</div>
						</div>
					</form>

					<!--■버튼-->
					<div style="margin-left: 360px; margin-top: 10px;">
						<button class="btn btn-primary" type="reset">요금등록</button>
						<button class="btn btn-pink">리스트로 돌아가기</button>
					</div>
					<br>
					<br>
					<br>
					
				</div>
					<!--===================================================-->
					<!-- End Striped Table -->
					
				<!--===================================================-->
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★End page content-->
				</div>


			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
	
	<script type="text/javascript">
	//해당 row 의 [수정] 버튼 클릭시
	$("#modifyMemberBtn").click(function() {
		alert("asdf");;
	});
	
	//해당 row 의 [삭제] 버튼 클릭시
	$("#deleteMemberBtn").click(function() {
		alert("asdf");;
	});
	
	//제일 하단 [선택삭제] 버튼 클릭시
	$("#allMemberDelete").click(function() {
		alert("asdf");
	});
	
	//제일 하단 [회원등록] 버튼 클릭시
	$("#joinMember").click(function() {
		$(location).attr('href','memberInsert.jsp');
	});
	
	</script>