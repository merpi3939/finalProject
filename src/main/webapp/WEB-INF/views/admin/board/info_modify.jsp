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
		<h1 class="page-header text-overflow">공지사항/QnA 게시글 변경</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">게시판 관리</a></li>
		<li class="active">게시글 변경</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">
						게시글 정보 변경
					</h3>
				</div>
	
				<!--No Label Form-->
				<!--===================================================-->
				<form class="form-horizontal" method="post" enctype="multipart/form-data">
				<input type="hidden" name="infoUserId" value="${userInfo.userId }">
				<input id="infoUserName" type="hidden" value="${userInfo.userName }">
					<div class="panel-body">
						<div>
							<div class="col-md-4 mar-btm">
								<span style="font: bold;">글번호</span>
								<input type="text" value="${info.infoNo }" disabled="disabled" class="form-control">
							</div>
							<div class="col-md-4 mar-btm">
								<span style="font: bold;">작성자</span>
								<input type="text" value="${info.infoUserName }" class="form-control" disabled="disabled" >
							</div>
							<div class="col-md-4 mar-btm">
								<span style="font: bold;">작성일자</span>
								<input type="text" value="${info.infoDate }" disabled="disabled" class="form-control">
							</div>
						</div>
												
						<div>
							<div class="col-md-6 mar-btm">
								<span style="font: bold;">제목</span>
								<input name="infoTitle" type="text" class="form-control" value="${info.infoTitle }" >
							</div>
							<div class="col-md-2 mar-btm">
								<span style="font: bold;">게시판이름</span>
								<!-- <input name="infoName" type="text" class="form-control" value="${info.infoName }" disabled="disabled"> -->
								
								<select name="infoName" id="infoName">
									<option value="공지사항" id="notice">공지사항</option>
									<option value="QNA" id="qna">QnA</option>
								</select>
							</div>
							<div class="col-md-2 mar-btm" id="divi">
								<span style="font: bold;">게시글분류</span>
								<select name="infoDivi" id="infoDivi">
									<option value="예약관련">예약관련</option>
									<option value="워터파크관련">워터파크관련</option>
								</select>
							</div>
							<div class="col-md-2 mar-btm">
								<span style="font: bold;">조회수</span>
								<input name="infoTitle" type="text" class="form-control" value="${info.infoCount }" disabled="disabled">
							</div>
						</div>
						
						<div>
							<div class="col-md-12 mar-btm">
								<span style="font: bold;">이미지</span>
								<!-- <img alt="" src="${pageContext.request.contextPath }/bluemoon/images/board_img/${info.infoImg}" style="height: 100px;"> -->
								<input type="file" name="img">
							</div>
						</div>
						
						<div>
							<div class="col-md-12 mar-btm">
								<span style="font: bold;">글 내용</span>
								<textarea name="infoContent" rows="13" class="form-control" >${info.infoContent }</textarea>
							</div>
						</div>
					</div>
					<div class="panel-footer text-right">
						<button type="submit" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath }/admin/info_modify'">submit</button>
						<button type="button" class="btn btn-info" onclick="location.href='${pageContext.request.contextPath }/admin/info_list'">cancel</button>
					</div>
				</form>
				<!--===================================================-->
				<!--End No Label Form-->
	
			</div>
		
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->

<!-- 
<script type="text/javascript">
selectInfoName();

function selectInfoName() {
	if(${info.infoName}=="QNA"){
		$("#qna").attr("selected","selected");
	} else {
		$("#notice").attr("selected","selected");
		alert("공지사항 입니다.");
	}
}
</script>
 -->
