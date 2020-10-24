<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
    
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
					<h3 class="panel-title">블루문 회원관리 게시판입니다.</h3>
				</div>
				
				<div class="panel-body">
					<form name="userForm">
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
								<c:choose>
									<c:when test="${fn:length(userList) ==0 }">
										<tr>
											<td colspan="12">가입된 회원이 없습니다.</td>
										</tr>
									</c:when>
								
									<c:otherwise>
										<c:forEach items="${userList }"  var="user">
											<tr>
												<td style="text-align: center;"><input type="checkbox" name="checkData" value="${user.userId }"> </td>
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
												<td style="text-align: center;"><p onclick="userModify(${user.userNo })" class="btn btn-mint">수정</p></td>
												<td style="text-align: center;"><p onclick="userRemove('${user.userId }')" class="btn btn-danger">탈퇴</p></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					
					<div>
						<button id="deleteBtn" class="btn btn-danger" type="button">선택탈퇴</button>
						<%-- <button class="btn btn-success" 	style="background: rgb(8,106,48);">회원 액셀다운로드</button>--%>
						<%--<button class="btn btn-success" style="background: rgb(24,74,120);">회원 액셀업로드</button>--%>
					</div>
					
					</form>
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
			location.href="userModify/"+userNo;
		}
			
		function userRemove(userId) {
			if(confirm("정말로 탈퇴처리 하시겠습니까?")) {
				location.href="userRemove/"+userId;
			} 
		}
		
		$("#checkAll").click(function () {
			if($("#checkAll").prop("checked")) {
				$("input[type=checkbox]").prop("checked",true);
			} else {
				$("input[type=checkbox]").prop("checked",false);
			}
		});
		
		$("#deleteBtn").click(function() {
			if(confirm("정말로 탈퇴처리 하시겠습니까?")) {
				var checkDataArray=[];
				$("input[name='checkData']:checked").each(function() {
					checkDataArray.push($(this).val());
				});
				userForm.checkData=checkDataArray;
				
				if(checkDataArray.length==0) {
					alert("선택된 값이 없습니다.");
					return;
				}
				userForm.method="post";
				userForm.action="deleteCheckUser";
				userForm.submit();
				
			} else {
				$("input[type=checkbox]").prop("checked",false);
			}
		});
	</script>