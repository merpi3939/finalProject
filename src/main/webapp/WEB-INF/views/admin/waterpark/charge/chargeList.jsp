<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
    
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
							<h3 class="panel-title">블루문 워터파크 이용요금입니다.</h3>
						</div>
						
							<div class="panel-body">
							<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
								
								<thead>
									<tr>
										<th style="text-align: center; width: 70px;">글번호</th>
										<th style="text-align: center;">시즌</th>
										<th style="text-align: center;">이용권 이름</th>
										<th style="text-align: center;" class="min-tablet">이용가격</th>
										<th style="text-align: center;" class="min-desktop">수정</th>
										<th style="text-align: center;" class="min-desktop">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${chargeList }" var="cl">
										<tr>
											<td style="text-align: center;">${cl.cgNo }</td>
											<td style="text-align: center;">${cl.cgSeason }</td>
											<td style="text-align: center;">${cl.cgName }</td>
											<td style="text-align: center;">대인: <fmt:formatNumber value="${cl.cgPrice }"  type="number" />원<br>소인: <fmt:formatNumber value="${cl.cgPrice-10000 }"  type="number" />원</td>
											<td style="text-align: center;"><button onclick="modifyBtn(${cl.cgNo })" class="btn btn-mint">수정</button></td>
											<td style="text-align: center;"><button onclick="removeBtn(${cl.cgNo })" class="btn btn-danger">삭제</button></td>
										</tr>
									</c:forEach>
							</table>
							
							<div>
								<a href="${pageContext.request.contextPath}/admin/chargeInsert" ><button class="btn btn-primary" >요금등록</button></a>
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
		function modifyBtn(cgNo) {
			location.href="${pageContext.request.contextPath}/admin/chargeModify/"+cgNo;
		};
		
		function removeBtn(cgNo) {
			if(confirm("삭제하시겠습니까?")) {
				location.href="${pageContext.request.contextPath}/admin/chargeRemove/"+cgNo;
			}
		}
	</script>