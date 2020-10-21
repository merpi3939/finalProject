<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">공지사항/QnA 게시글 상세정보</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">게시판 관리</a></li>
		<li class="active">게시글 정보</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">
						게시글 정보
					</h3>
				</div>
	
				<!--No Label Form-->
				<!--===================================================-->
				<form class="form-horizontal" name="form">
					<div class="panel-body">
						<div>
							<div class="col-md-4 mar-btm">
								<span style="font: bold;">글번호</span>
								<input type="text" value="${info.infoNo }" disabled="disabled" class="form-control">
							</div>
							<div class="col-md-4 mar-btm">
								<span style="font: bold;">작성자</span>
								<input type="text" value="${info.infoUserName }" disabled="disabled" class="form-control">
							</div>
							<div class="col-md-4 mar-btm">
								<span style="font: bold;">작성일자</span>
								<input type="text" value="${info.infoDate }" disabled="disabled" class="form-control">
							</div>
						</div>
												
						<div>
							<div class="col-md-8 mar-btm">
								<span style="font: bold;">제목</span>
								<input name="infoTitle" type="text" class="form-control" value="${info.infoTitle }" disabled="disabled">
							</div>
							<div class="col-md-2 mar-btm">
								<span style="font: bold;">게시글분류</span>
								<input name="infoTitle" type="text" class="form-control" value="${info.infoName }" disabled="disabled">
							</div>
							<div class="col-md-2 mar-btm">
								<span style="font: bold;">조회수</span>
								<input name="infoTitle" type="text" class="form-control" value="${info.infoCount }" disabled="disabled">
							</div>
						</div>
						
						<div>
							<div class="col-md-12 mar-btm">
								<span style="font: bold;">이미지</span>
								<img alt="" src="${pageContext.request.contextPath }/bluemoon/images/bluemoonlogo.png" style="height: 100px;">
							</div>
						</div>
						
						<div>
							<div class="col-md-12 mar-btm">
								<span style="font: bold;">글 내용</span>
								<textarea name="infoContent" rows="13" class="form-control" disabled="disabled">${info.infoContent }</textarea>
							</div>
						</div>
					</div>
					<div class="panel-footer text-right">
						<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath }/admin/info_modify?infoNo=${info.infoNo }';">modify</button>
						<button type="button" class="btn btn-info" onclick="location.href='${pageContext.request.contextPath }/admin/info_list'">list</button>
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

