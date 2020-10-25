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
					<h3 class="panel-title">블루문 예약 수정페이지 입니다.</h3>
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
						<label class="col-md-3 control-label">회원이름</label>
						<div class="col-md-9"><p class="form-control-static">${pr.rsName }</p></div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">전화번호</label>
						<input type="text" class="form-control" style="width: 300px;" value="${pr.rsPhone }" name="rsPhone">
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">이용날짜</label>
						
						<c:set var="useDate1" value="${pr.rsUsedate }"/>
						<c:set var="useDate" value="${fn:substring(useDate1, 0, 10) }"/>
						<input type="text" class="form-control" style="width: 300px;" value="${useDate }" name="rsUsedate">
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label">이용권명</label>
						<div class="col-md-9">
							<div id="before">
								<span id="beforeTicketName" class="form-control-static" name="rsTicket">${pr.rsTicket }</span>&nbsp;&nbsp;
								<span id="beforeTicketPrice" class="form-control-static" >${pr.cgPrice }</span>&nbsp;&nbsp;
								<button id="ticketModifyBtn" type="button" style="width: 90px; height: 30px; background: white;">이용권 변경</button>
							</div>
						</div>
					</div>
					
					<div id="prTicketSelectBox" class="form-group" style="display: none;">
						<label class="col-md-3 control-label" ></label>
						<select name="prTicket" id="prTicket" style="height: 30px; width: 200px;" class="form-control"  onchange="selectTicket(this.value)">
							<c:forEach	items="${chargeNameList }" var="cnl">
								<option value="${cnl.cgName}" value2="${cnl.cgPrice}">${cnl.cgName}: 대인 <fmt:formatNumber value="${cnl.cgPrice}" />원</option>
							</c:forEach>
						</select>
					</div>
											
					<div class="form-group">
						<label class="col-md-3 control-label">인원</label>
						대인: <span id="adultQty" name="rsAdult">${pr.rsAdult }</span>&nbsp;명/&nbsp;
						소인: <span id="childQty" name="rsChild">${pr.rsChild }</span>&nbsp;명
						<button id="qtyBtn" type="button" style="width: 70px; height: 30px; background: white;">인원 변경</button>
						<br>
						<br>
						<span id="aa" style=" display: none; margin-left: 350px; ">대인: <input type="text" class="form-control"  id="rsAdult" onchange="rsAdultQty()" style="width: 50px; display: inline-block; text-align: right;">&nbsp;명 / </span>
						<span id="cc" style=" display: none;">소인: <input type="text" class="form-control"  id="rsChild" onchange="rsChildQty()" style="width: 50px; display: inline-block; text-align: right;">&nbsp;명</span>
					</div>

					<div class="form-group" id="resultDiv" style="display: none;">
						<label class="col-md-3 control-label"><button id="calc" type="button" style="width: 70px; height: 30px; background: white; margin-left: 260px;">요금계산</button></label>
						<span id="result" style="color: red; " ></span>
						<span id="totalCharge" style="cursor:pointer;"></span>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">결제금액</label>
						<span id="beforePrice" ><fmt:formatNumber value="${pr.rsPrice}"/>&nbsp;원</span>&nbsp;&nbsp;
						<span id="afterPrice" style="color: red; font-weight: bold;">&nbsp;</span>
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
					
					<input type="hidden" name="rsNo" value="${pr.rsNo }">
					<input type="hidden" name="rsPrice" id="rsPrice">
					
					
					<div style="text-align: center;">
						<button id="modifyBtn" class="btn btn-primary" type="reset">수정완료</button>
						<p onclick="prListBtn()" class="btn btn-pink">리스트로 돌아가기</p>
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
	
	function prListBtn() {
		location.href="${pageContext.request.contextPath }/admin/prList";
	}
	
	$("#modifyBtn").click(function() {
		modifyForm.method="post";
		modifyForm.action="${pageContext.request.contextPath }/admin/prModify";
		var rsPrice = $("#beforePrice").text();
		$("#rsPrice").val(rsPrice);
		modifyForm.submit();
	});

	$("#ticketModifyBtn").click(function() {
		$("#prTicketSelectBox").css('display','block');
	});
	
	$("#ticketModifyBtn").click(function() {
		$("#resultDiv").css("display","block");
	});	
	
	$("#qtyBtn").click(function() {
		$("#resultDiv").css("display","block");
	});	
	
	
	function selectTicket(ticketName) {
		var tName=document.getElementById("beforeTicketName");
		tName.innerHTML=ticketName;
		tName.style.color="red";
		
		var tPrice=document.getElementById("beforeTicketPrice");
		tPrice.innerHTML=$("#prTicket option:selected").attr('value2');
		tPrice	.style.color="red";
	}	
	
	$("#qtyBtn").click(function() {
		$("#aa").css("display","inline-block");
		$("#cc").css("display","inline-block");
	}); 
	
	function rsAdultQty() {
		var aq=$("#rsAdult").val();
		$("#adultQty").text(aq);
	}
	
	function rsChildQty() {
		var cq=$("#rsChild").val();
		$("#childQty").text(cq);
	}
	
	$("#calc").click(function() {
		//alert();
		var tAdult=$("#adultQty").text();
		var tChild=$("#childQty").text();
		var tAmount=$("#before span:nth-child(2)").text();
		var total=(tAmount*tAdult)+((tAmount-10000)*tChild);
		$("#result").text(total+" 원");
		$("#totalCharge").text("[결제금액 반영]");
		$("#beforePrice").text(total);
	});

	$("#totalCharge").click(function() {
		$("#beforePrice").text($("#result").text());
	});
	</script>