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
							<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th style="text-align: center; width: 30px;"><input id="checkAll" type="checkbox"></th>
										<th style="text-align: center; width: 40px;">글번호</th>
										<th style="text-align: center; width: 80px;">작성자<br>(회원번호)</th>
										<th style="text-align: center; width: 80px;">작성일자</th>
										<th style="text-align: center; width: 700px;" class="min-tablet">내용</th>
										<th style="text-align: center;" class="min-desktop">수정</th>
										<th style="text-align: center;" class="min-desktop">삭제</th>
									</tr>
								</thead>
								
								<tbody>
									<c:choose>
										<c:when test="${fn:length(newsList) ==0 }">
											<tr>
												<td colspan="7">작성된 뉴스가 없습니다.</td>
											</tr>
										</c:when>
										
										<c:otherwise>
											<c:forEach items="${newsList}" var="list" >
												<tr>
													<td style="text-align: center;"><input name="checkData" type="checkbox" value="${list.newsNo }"> </td>
													<td style="text-align: center;">${list.newsNo }</td>
													<td style="text-align: center;">${list.newsUno }</td>
													<td style="text-align: center;">${list.newsDate }</td>
													<td style="width: 600px;">${list.newsCont }</td>
													<td style="text-align: center;"><button class="btn btn-mint"  onclick="newsModify(${list.newsNo })">수정</button></td>
													<td style="text-align: center;"><button class="btn btn-danger"   onclick="newsRemove(${list.newsNo })">삭제</button></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
								
							</table>
							<div>
								<button id="checkDelete" class="btn btn-danger" type="submit" >선택삭제</button>
								<a href="${pageContext.request.contextPath}/admin/newsInsert"><button class="btn btn-primary">소식등록</button></a>
							</div>
							
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
			location.href="newsRemove/"+newsNo;
		}
		
		$("#checkAll").click(function () {
			if($("#checkAll").prop("checked")) {
				$("input[type=checkbox]").prop("checked",true);
			} else {
				$("input[type=checkbox]").prop("checked",false);
			}
		});
		
	////////////////////////////////////////////////////////////////////////////////////////////////////	
		
		
		
		
	</script>