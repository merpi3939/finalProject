<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>

	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	
			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">
				
				<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">BlueMoon WaterPark</h1>
				</div>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End page title-->


				<!--Breadcrumb-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End breadcrumb-->

				<div id="page-content">
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★page content-->
				<!--===================================================-->
					
				<!-- Basic Data Tables -->
					<!--===================================================-->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">블루문 워터파크 예약&결제 정보입니다. </h3>
						</div>
						<div class="panel-body">
							<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th style="text-align: center; width: 70px;">예약<br>번호</th>
										<th style="text-align: center; width: 70px;">회원<br>번호</th>
										<th style="text-align: center; width: 80px;">이름</th>
										<th style="text-align: center; width: 100px;" class="min-tablet">전화번호</th>
										<th style="text-align: center; width: 80px;">이용날짜</th>
										<th style="text-align: center; width: 90px;">이용권명</th>
										<th  style="text-align: center ; width: 80px;" class="min-desktop" >대인<br>소인</th>
										<th style="text-align: center; width: 70px;">결제금액</th>
										<th style="text-align: center; width: 90px;">예약날짜</th>
										<th style="text-align: center; width: 110px;">결제방법</th>
										<th style="text-align: center; width: 60px;">예약<br>상태</th>
										<th style="text-align: center; width: 70px;" class="min-desktop">수정</th>
										<th style="text-align: center; width: 70px;" class="min-desktop">예약취소</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${prList }"  var="pr">
										<tr>
											<td align="center" >${pr.rsNo }</td>
											<td align="center" >${pr.rsUno }</td>
											<td align="center" >${pr.rsName }</td>
											<td align="center" >${pr.rsPhone }</td>
											
											<c:set var="useDate1" value="${pr.rsUsedate }"/>
											<c:set var="useDate" value="${fn:substring(useDate1, 0, 10) }"/>
											<td align="center" >${useDate }</td>
											
											<td align="center" >${pr.rsTicket }</td>
											<td align="center" >대인: &nbsp;${pr.rsAdult }명 <br>소인: &nbsp;${pr.rsChild }명</td>
											<td align="center" ><fmt:formatNumber value="${pr.rsPrice }" /> </td>
											
											<c:set var="rsDate1" value="${pr.rsDate }"/>
											<c:set var="rsDate" value="${fn:substring(rsDate1, 0, 10) }"/>
											<td style="text-align: center;">${rsDate }</td>
											
											<c:choose>
												<c:when test="${pr.rsOption eq 1}">
													<td align="center" >신용카드</td>
												</c:when>
											
												<c:otherwise>
													<td align="center">무통장입금</td>
												</c:otherwise>
											</c:choose>		
											
											<c:choose>
												<c:when test="${pr.rsState eq 1}">
													<td align="center" >정상</td>
												</c:when>
											
												<c:when test="${pr.rsState eq 0}">
													<td style="text-align: center; color: red;">취소</td>
												</c:when>
											</c:choose>											
											
											<td align="center" ><button onclick="prModify(${pr.rsNo })" type="button" class="btn btn-mint">수정 </button> </td>
											<td align="center" ><button onclick="prCancel(${pr.rsNo })" type="button" class="btn btn-danger">예약취소</button> </td> 
										</tr>
									</c:forEach>
								</tbody>
							</table>
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
		 function prCancel(rsNo) {
			if(confirm("정말로 예약을 취소 하시겠습니까?")) {
				location.href="prRemove/"+rsNo;
			}
		 }
		 
		 function prModify(rsNo) {
			 location.href="prModify/"+rsNo;
		 }
		
	</script>