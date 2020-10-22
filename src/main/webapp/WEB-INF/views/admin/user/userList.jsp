<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
    
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
					<h3 class="panel-title">블루문 회원관리 게시판입니다.</h3>
				</div>
				
				<div class="panel-body">
					<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th style="text-align: center; width: 30px;"><input type="checkbox" id="checkAll"></th>
								<th style="text-align: center; width: 70px;">회원번호</th>
								<th style="text-align: center; width: 80px;">ID</th>
								<th style="text-align: center; width: 80px;">이름</th>
								<th style="text-align: center; width: 110px;" class="min-tablet">휴대전화 번호</th>
								<th style="text-align: center; width: 80px;">생년월일</th>
								<th style="text-align: center; width: 170px;">이메일</th>
								<th style="text-align: center; width: 70px;">포인트</th>
								<th  style="text-align: center ; width: 80px;" class="min-desktop" >가입날짜</th>
								<th style="text-align: center; width: 60px;">회원상태</th>
								<th style="text-align: center;" class="min-desktop">수정</th>
								<th style="text-align: center;" class="min-desktop">탈퇴</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${userList }"  var="user">
								<tr>
									<td style="text-align: center;"><input type="checkbox"> </td>
									<td style="text-align: center;">${user.userNo }</td>
									<td style="text-align: center;">${user.userId }</td>
									<td style="text-align: center;">${user.userName }</td>
									<td style="text-align: center;">${user.userPhone }</td>
									<td style="text-align: center;">${user.userBirthday }</td>
									<td style="text-align: center;">${user.userEmail }</td>
									<td style="text-align: center;">${user.userPoint }	</td>
									<td style="text-align: center;">${user.userJoindate }</td>
									
									<c:choose>
										<c:when test="${user.userState eq 1}">
											<td style="text-align: center; width: 60px;">일반회원</td>
										</c:when>
										
										<c:when test="${user.userState eq 4}">
											<td style="text-align: center; width: 60px; color: red;">탈퇴회원</td>
										</c:when>
										
										<c:when test="${user.userState eq 9}">
											<td style="text-align: center; width: 60px; color:blue">관리자</td>
										</c:when>
									</c:choose>									
									<td style="text-align: center;"><button onclick="userModify(${user.userNo })" class="btn btn-mint">수정</button></td>
									<td style="text-align: center;"><button onclick="userRemove(${user.userNo })" class="btn btn-danger">탈퇴</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			
					<div>
						<button class="btn btn-danger" type="button">선택탈퇴</button>
						<!-- <a href="user/userInsert"><button id="userJoin" class="btn btn-primary">회원등록</button></a> -->
						<button class="btn btn-success" 	style="background: rgb(8,106,48);">회원 액셀다운로드</button>
						<button class="btn btn-success" style="background: rgb(24,74,120);">회원 액셀업로드</button>
					</div>
				</div>
			</div>
		<!--===================================================-->
		<!-- End Striped Table -->
		
		<!--===================================================-->
		<!--End page content-->
		</div>
	</div>
	<!--===================================================-->
	<!--END CONTENT CONTAINER-->

	<script type="text/javascript">
		function userModify(userNo) {
			alert(userNo);
			location.href="userModify/"+newsNo;
		}
			
		function userRemove(userNo) {
			alert(userNo);
		/* 	location.href="userRemove/"+newsNo; */
		}
		
		$("#checkAll").click(function () {
			if($("#checkAll").prop("checked")) {
				$("input[type=checkbox]").prop("checked",true);
			} else {
				$("input[type=checkbox]").prop("checked",false);
			}
		});
		
	</script>