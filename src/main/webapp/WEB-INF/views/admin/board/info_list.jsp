<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">공지사항 & QnA 게시판</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">게시판 관리</a></li>
		<li class="active">공지사항 & QnA 게시판</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
		<div class="rows">
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">검색 방법</h3>
				</div>
				<div class="panel-body">
				<form action="" method="post">
					<table>
						<tr>
							<td>게시글 번호</td>
							<td><input type="text"></td>
							<td>작성자 아이디</td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>
								<select>
									<option>게시글 제목</option>
									<option>게시글 내용</option>
								</select>
							</td>
							<td colspan="3"><input type="text"></td>
							
						</tr>
						<tr>
							<td>게시글 등록일</td>
							<td><input type="text"></td>
							<td>~<td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>게시글 분류</td>
							<td>
								<input type="radio" name="divi" value="공지사항">공지사항&nbsp;&nbsp;
								<input type="radio" name="divi" value="QNA">QnA
							</td>
							<td>게시글 상태</td>
							<td>
								<select>
									<option>게시</option>
									<option>비밀글</option>
									<option>삭제</option>
								</select>
							</td>
						</tr>
					</table>
					<button type="submit">검색</button>
				</form>
				</div>
			</div>
			
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">게시글 리스트</h3>
				</div>
				<div class="panel-body">
					<table id="infoTable" class="table">
						<tr>
							<th><input type="checkbox" id="checkAll"></th>
							<th>글번호</th>
							<th>글제목</th>
							<th>글내용</th>
							<th>작성자</th>
							<!-- <th>조회수</th> -->
							<th>작성일자</th>
							<th>수정</th>
							<th>삭제</th>
							
						</tr>
						<c:forEach var="info" items="${infoList}">
							<tr>
								<td><input type="checkbox" id="check" name="infoNo" value="${info.infoNo }"></td>
								<td>${info.infoNo }</td>
								<td><a href="${pageContext.request.contextPath }/admin/info_detail?infoNo=${info.infoNo }" >${info.infoTitle }</a></td>
								<td>${info.infoContent }</td>
								<td>${info.infoUserName }</td>
								<!-- <td>${info.infoCount }</td> -->
								<td>${info.infoDate.substring(0,10) }</td>
								<td><button class="btn btn-info" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/info_modify?infoNo=${info.infoNo }';">수정</button></td>
								<td><button class="btn btn-danger" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/info_delete?infoNo=${info.infoNo }';">삭제</button></td>
							</tr>
						
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		
		
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->

<script type="text/javascript">
$(document).ready(function() {
	$("#checkAll").click(function() {
		if($("#checkAll").prop("checked")){
			$("#check").prop("checked",true);
		}else{
			$("#check").prop("checked",false);
		}
	});
	
});
</script>