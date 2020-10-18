<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	
			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">
				
				<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">BlueMoon Members</h1>
				</div>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End page title-->


				<!--Breadcrumb-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End breadcrumb-->


		

				<div id="page-content">
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★page content-->
				<!--===================================================-->
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">블루문 워터파크 현장소식 등록 페이지입니다.</h3>
					</div>
					
					<form id="memberModify" class="panel-body form-horizontal form-padding" action="">
						<!--■Static-->
						<div class="form-group" >
							<label class="col-md-3 control-label">작성자</label>
							<div class="col-md-9"><p class="form-control-static">${news.newsNo }</p></div>
						</div>
						
						<!--■content-->
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">글내용</label>
							<div class="col-md-9">
								<textarea type="text" id="birthday" class="form-control" style="width: 600px; height: 100px; resize: none;">${news.newsCont }</textarea>
							</div>
						</div>
					</form>
										
					<!--■버튼-->
					<div style="margin-left: 660px; margin-top: 10px;">
						<button id  class="btn btn-primary" type="reset">수정완료</button>
					</div>
					
					<br>
					<br>
					<br>
					<br>
					<br>
				</div>
				<!--===================================================-->
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★End page content-->
				</div>
			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
	
	<script type="text/javascript">
	
	</script>