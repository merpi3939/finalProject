<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
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
					
					<form id="newsForm" method="post">
						<!--■Static-->
						<div class="form-group" style="margin-top: 30px;">
							<label class="col-md-3 control-label">작성자</label>
							<div class="col-md-9"><input type="hidden"  name="newsUno" value="${userInfo.userNo}">${userInfo.userName}(${userInfo.userId }) </div>
							<br>
						</div>
						
						<!--■content-->
						<div class="form-group">
							<label class="col-md-3 control-label" for="demo-text-input">글 내용</label>
							<div class="col-md-9">
								<textarea id="form-control" name="newsCont" class="form-control" style="width: 600px; height: 100px; resize: none;" > </textarea>
							</div>
						</div>
					</form>

					<!--■버튼-->
					<div style="margin-left: 560px; margin-top: 50px;">
						<button onclick="enterNews()" class="btn btn-primary" type="reset">소식등록</button>
						<button class="btn btn-pink" id="backNewsList">리스트로 돌아가기</button>
					</div>
					
					<br>
					<br>
					<br>
					
				</div>
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★End page content-->
					</div>
			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
			
	<script type="text/javascript">
		 $("#form-control").focus();
			 
		$("#backNewsList").click(function() {
			location.href='${pageContext.request.contextPath}/admin/newsList';
		});
		
		function enterNews() {
			if($("#form-control").val()=="") {
				alert("글 내용을 입력해 주세요.");
				return;
			}
			$("#newsForm").submit();
		}
	</script>
