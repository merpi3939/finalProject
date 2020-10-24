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
							<h3 class="panel-title">블루문 워터파크 현장소식 게시판입니다.</h3>
				</div>
						<div class="panel-body">
							<form name="newsForm">
								<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th style="text-align: center; width: 30px;"><input id="checkAll" type="checkbox"></th>
											<th style="text-align: center; width: 60px;">글번호</th>
											<th style="text-align: center; width: 80px;">작성자<br>(아이디)</th>
											<th style="text-align: center; width: 80px;">작성일자</th>
											<th style="text-align: center; width: 600px;" class="min-tablet">내용</th>
											<th style="text-align: center;" class="min-desktop">수정</th>
											<th style="text-align: center;" class="min-desktop">삭제</th>
										</tr>
									</thead>
									
									<tbody>
										<c:choose>
											<c:when test="${fn:length(newsUserList) ==0 }">
												<tr>
													<td colspan="7">작성된 뉴스가 없습니다.</td>
												</tr>
											</c:when>
											
											<c:otherwise>
												<c:forEach items="${newsUserList}" var="list" >
													<tr>
														<td style="text-align: center;"><input name="checkData" type="checkbox" value="${list.newsNo }"> </td>
														<td style="text-align: center;">${list.newsNo }</td>
														<td style="text-align: center;">${list.userName }<br>(${list.userId })</td>
														
														<c:set var="newsDate1" value="${list.newsDate }"/>
														<c:set var="newsDate" value="${fn:substring(newsDate1, 0, 10) }"/>
														<td style="text-align: center;">${newsDate }</td>
														
														<td style="width: 600px;">${list.newsCont }</td>
														<td style="text-align: center;"><p class="btn btn-mint" onclick="newsModify(${list.newsNo })">수정</p></td>
														<td style="text-align: center;"><p class="btn btn-danger" onclick="newsRemove(${list.newsNo })">삭제</p></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
							
								<div>
									<button id="deleteBtn" class="btn btn-danger" type="button" >선택삭제</button>
									<a href="${pageContext.request.contextPath}/admin/newsInsert"><p class="btn btn-primary">소식등록</p></a>
								</div>
							
							</form>
						</div>
					</div>
					<!--===================================================-->
					<!-- End Striped Table -->
					
				<!--===================================================-->
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★End page content-->
				</div>


			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
	
	<script type="text/javascript">
		function newsModify(newsNo) {
			location.href="newsModify/"+newsNo;
		}
		
		function newsRemove(newsNo) {
			if(confirm("정말로 탈퇴처리 하시겠습니까?")) {
				location.href="newsRemove/"+newsNo;
			}
		}
		
		$("#checkAll").click(function () {
			if($("#checkAll").prop("checked")) {
				$("input[type=checkbox]").prop("checked",true);
			} else {
				$("input[type=checkbox]").prop("checked",false);
			}
		});
		
		$("#deleteBtn").click(function () {
			if(confirm("정말로 삭제 하시겠습니까?")) {
				var checkDataArray=[];
				$("input[name='checkData']:checked").each(function(i) {
					checkDataArray.push($(this).val());
				});
				newsForm.checkData=checkDataArray;
				
				if(checkDataArray.length==0) {
					alert("선택된 값이 없습니다.");
					return;
				}
				newsForm.method="post";
				newsForm.action="deleteCheckNews";
				newsForm.submit();
				
			} else {
				$("input[type=checkbox]").prop("checked",false);
			}
		});
		
	</script>