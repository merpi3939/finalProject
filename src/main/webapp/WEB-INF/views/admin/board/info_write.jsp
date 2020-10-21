<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
			<div class="panel-body">
				<table style="width: 80%;">
					<tr>
						<td><h4>게시판 종류</h4></td>
					</tr>
					<tr>
						<td>
							<select>
								<option value="공지사항">공지사항</option>
								<option value="QnA">QnA 답변</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><h4>제목</h4></td>
					</tr>
					<tr>
						<td><input type="text"  class="form-control"></td>
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
							<textarea rows="10" cols="" style="width: 100%">
							
							</textarea>
						</td>
					</tr>
					<tr>
						<td><h4>파일첨부</h4></td>
					</tr>
					<tr>
						<td>
							<input type="file">
						</td>
					</tr>
					<tr>
						<td colspan="2" style="float: right;">
							<button class="btn btn-default btn-info" onclick="">글쓰기</button>
							<button class="btn btn-default btn-info">목록</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->

