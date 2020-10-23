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
					
					<form method="post" class="panel-body form-horizontal form-padding" action="${pageContext.request.contextPath }/admin/newsModify">
						<!--■Static-->
						<div class="form-group" >
							<label class="col-md-3 control-label">작성자</label>
							<div class="col-md-9"><p class="form-control-static">${news.userName }&nbsp;(${news.userId })</p></div>
						</div>
						
						<!--■content-->
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">글내용</label>
							<div class="col-md-9">
								<textarea name="newsCont" class="form-control" style="width: 600px; height: 100px; resize: none;">${news.newsCont }</textarea>
							</div>
						</div>
						
						<input type="hidden" name="newsNo" value="${news.newsNo }">
					
					<!--■버튼-->
					<div style="margin-left: 500px; margin-top: 10px;">
						<button type="submit" class="btn btn-primary">수정완료</button>
						<p onclick="newsListBtn()" class="btn btn-pink">리스트로 돌아가기</p>
					</div>
					
					</form>
										
					
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
		function newsListBtn() {
			location.href="${pageContext.request.contextPath }/admin/newsList";
		}
	</script>
