<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>

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
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">블루문 회원 수정페이지 입니다.</h3>
				</div>
				
					
				<form name="modifyForm" class="panel-body form-horizontal form-padding">
				
					<div class="form-group pad-ver">
							<label class="col-md-3 control-label">예약상태</label>
							<div class="col-md-9">
								<div class="radio">
									<c:choose>
										<c:when test="${pr.rsState eq 1}">
											<label class="form-radio form-normal active"><input type="radio" name="rsState" value="1" checked="checked"><b>정상</b></label>
											<label class="form-radio form-normal"><input type="radio" name="rsState" value="0"> 취소</label>
										</c:when>
										
										<c:when test="${pr.rsState eq 0}">
											<label class="form-radio form-normal active"><input type="radio" name="rsState" value="1" ><b>정상</b></label>
											<label class="form-radio form-normal"><input type="radio" name="rsState" value="0" checked="checked"> <b>취소</b></label>
										</c:when>
									</c:choose>
								</div>
							</div>
					</div>
					
					<div class="form-group" >
						<label class="col-md-3 control-label">예약번호</label>
						<div class="col-md-9"><p class="form-control-static">${pr.rsNo }</p></div>
					</div>
					
					<div class="form-group" >
						<label class="col-md-3 control-label">회원번호</label>
						<div class="col-md-9"><p class="form-control-static">${pr.rsUno }</p></div>
					</div>
	
					<div class="form-group">
						<label class="col-md-3 control-label">회원이름<br>(아이디)</label>
						<div class="col-md-9"><p class="form-control-static">${pr.rsName }<br>(abc123)</p></div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">전화번호</label>
						<input type="text" class="form-control" style="width: 300px;" value="${pr.rsPhone }">
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">이용날짜</label>
						
						<c:set var="useDate1" value="${pr.rsUsedate }"/>
						<c:set var="useDate" value="${fn:substring(useDate1, 0, 10) }"/>
						<input type="text" class="form-control" style="width: 300px;" value="${useDate }">
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">이용권명</label>
						<div class="col-md-9">
							<div>
								<span id="beforeTicket" class="form-control-static">${pr.rsTicket }</span>&nbsp;&nbsp;
								<button id="ticketModifyBtn" type="button" style="width: 90px; height: 30px; background: white;">이용권 변경</button>
							</div>
						</div>
					</div>
					
					<div id="prTicketSelectBox" class="form-group" style="display: none;">
						<label class="col-md-3 control-label" ></label>
						<select name="prTicket" style="height: 30px; width: 200px;" class="form-control" onchange="changePrice(this.value)">
							<c:forEach	items="${chargeNameList }" var="cnl">
								<option value="${cnl.cgPrice}">${cnl.cgName}: 대인 <fmt:formatNumber value="${cnl.cgPrice}" />원</option>
							</c:forEach>
						</select>
					</div>
											
					<div class="form-group">
						<label class="col-md-3 control-label">인원</label>
						<span>대인: <input type="text" class="form-control" style="width: 50px; display: inline-block; text-align: right;" value="${pr.rsAdult }">&nbsp;명 / </span>
						<span>소인: <input type="text" class="form-control" style="width: 50px; display: inline-block; text-align: right;" value="${pr.rsChild }">&nbsp;명</span>
						<button id="qtyModifyBtn" type="button" style="width: 70px; height: 30px; background: white;">변경완료</button>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">결제금액</label>
						<span id="beforePrice"><fmt:formatNumber value="${pr.rsPrice}"/>&nbsp;원</span>&nbsp;&nbsp;
						<span name="" id="afterPrice" style="color: red; font-weight: bold;">&nbsp;</span>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">예약날짜</label>
						
						<c:set var="rsDate1" value="${pr.rsDate }"/>
						<c:set var="rsDate" value="${fn:substring(rsDate1, 0, 10) }"/>
						<div class="col-md-9"><p class="form-control-static">${rsDate }</p></div>
					</div>
					
					<div class="form-group pad-ver">
							<label class="col-md-3 control-label">결제방법</label>
							<div class="col-md-9">
								<div class="radio">
									<c:choose>
										<c:when test="${pr.rsOption eq 0}">
											<label class="form-radio form-normal active"><input type="radio" name="rsOption" value="1" checked="checked"><b>신용카드</b></label>
											<label class="form-radio form-normal"><input type="radio" name="rsOption" value="2"> 무통장입금</label>
										</c:when>
										<c:when test="${pr.rsOption eq 1}">
											<label class="form-radio form-normal active"><input type="radio" name="rsOption" value="1" >신용카드</label>
											<label class="form-radio form-normal"><input type="radio" name="rsOption" value="2" checked="checked"> <b>무통장입금</b></label>
										</c:when>
									</c:choose>
								</div>
							</div>
					</div>
					
					<input type="hidden" name="rsNo" value="${pr.rsNo }}">
					
					<div style="text-align: center;">
						<button id="modifyBtn" class="btn btn-primary" type="reset">수정완료</button>
						<p onclick="userListBtn()" class="btn btn-pink">리스트로 돌아가기</p>
					</div>
				</form>
									
					
				<br>
				<br>
				<br>
				<br>
				<br>
			<!--===================================================-->
			<!--End page content-->
			</div>
		</div>
	</div>
	<!--===================================================-->
	<!--END CONTENT CONTAINER-->
	
	<script type="text/javascript">
	function userListBtn() {
	 	location.href="admin/userList"; 
	}
	
	function userListBtn() {
		location.href="${pageContext.request.contextPath }/admin/userList";
	}
	
	$("#modifyBtn").click(function() {
		modifyForm.method="post";
		modifyForm.action="${pageContext.request.contextPath }/admin/userModify";
		modifyForm.submit();
	});

	$("#ticketModifyBtn").click(function() {
		$("#prTicketSelectBox").css('display','block');
		$("#beforeTicket").css('text-decoration','line-through');
		$("#beforePrice").css('text-decoration','line-through');
	});
	
	function changePrice(ticketPrice) {
		 $("#afterPrice").text((${pr.rsAdult }*ticketPrice)+(${pr.rsChild }*ticketPrice-10000)+" 원");
	};
	
	$("#qtyModifyBtn").click(function() {
		 $("#afterPrice").text()
	});
	</script>