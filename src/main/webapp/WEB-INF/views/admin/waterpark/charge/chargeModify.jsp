<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
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
					
					<form method="post" action="${pageContext.request.contextPath }/admin/chargeModify" class="panel-body form-horizontal form-padding">
						<!--■subject-->
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">이용권 이름</label>
							<div class="col-md-9">
								<input type="text" name="cgName" value="${charge.cgName }" class="form-control" style="width: 200px;">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">시즌</label>
							<div class="col-md-9">
								<input type="text" name="cgSeason" value="${charge.cgSeason }"  class="form-control" style="width: 200px;" placeholder="성수기/비수기">
							</div>
						</div>
							
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">대인<br>요금</label>
							<div class="col-md-9">
								<input type="text" name="cgPrice" value="${charge.cgPrice }" class="form-control" style="width: 200px;">
							</div>
						</div>
						
						<input type="hidden" name="cgNo" value="${charge.cgNo }">
						
						<!--■버튼-->
						<div style="margin-left: 360px; margin-top: 10px;">
							<button type="submit" class="btn btn-primary">수정완료</button>
							<p class="btn btn-pink" onclick="backChargeList()">리스트로 돌아가기</p>
						</div>
					</form>

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
		function backChargeList() {
			location.href="${pageContext.request.contextPath }/admin/chargeList";
		}
		
	</script>