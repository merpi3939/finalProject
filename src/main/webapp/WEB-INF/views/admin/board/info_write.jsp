<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<!--Summernote [ OPTIONAL ]-->
<link href=<c:url value ="/admin/plugins/summernote/summernote.min.css"/> rel="stylesheet">
    
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">게시판 작성하기</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">게시판관리</a></li>
		<li class="active">게시글작성</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
		<div class="panel">
		<form action="" method="post" enctype="multipart/form-data">
			<div class="panel-body">
				<input id="infoUserId" type="hidden" value="${userInfo.userId }" name="infoUserId">
				<input id="infoUserName" type="hidden" value="${userInfo.userName }" name="infoUserName">
				<input id="infoState" type="hidden" value=1 name="infoState">
				<input id="infoRemove" type="hidden" value=1 name="infoRemove">
				<input id="infoCount" type="hidden" value=0 name="infoCount">
				<table style="width: 80%;">
					<tr>
						<td><h4>게시판 종류</h4></td>
					</tr>
					<tr>
						<td>
							<select name="infoName" id="infoName">
								<option value="공지사항">공지사항</option>
								<!-- <option value="QnA">QnA 답변</option> -->
							</select>
						</td>
					</tr>
					<tr>
						<td><h4 class="divi">게시글 분류</h4></td>
					</tr>
					<tr>
						<td>
							<select name="infoDivi" class="divi">
								<option value="예약관련">예약관련</option>
								<option value="워터파크관련">워터파크관련</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><h4>제목</h4></td>
					</tr>
					<tr>
						<td><input type="text"  class="form-control" name="infoTitle"></td>
					</tr>
					<tr>
						<td><h4>내용</h4></td>
					</tr>
					<tr>
						<td>
							<!--Summernote-->
							<!--===================================================-->
							<!-- <div id="demo-summernote"></div> -->
							<!--===================================================-->
							<!-- End Summernote -->
							<textarea rows="10" cols="" style="width: 100%" name="infoContent">
							
							</textarea>
						</td>
					</tr>
					<tr>
						<td><h4>이미지첨부</h4></td>
					</tr>
					<tr>
						<td>
							<input type="file" name="img">
						</td>
					</tr>
					<tr>
						<td colspan="2" style="float: right;">
							<button class="btn btn-default btn-info" type="submit">글쓰기</button>
							<button class="btn btn-default btn-info" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/info_list'">목록</button>
						</td>
					</tr>
				</table>
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
$(".divi").hide();
$(function(){
	$("#infoName").change(function() {
		if($("#infoName option:selected").val()=="공지사항"){
			$(".divi").hide();
		} else {
			$(".divi").show();
		}
	});
});


</script>