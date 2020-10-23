<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>

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
					<!--■Static-->
					<div class="form-group" >
						<label class="col-md-3 control-label">회원번호</label>
						<div class="col-md-9"><p class="form-control-static">${user.userNo }</p></div>
					</div>
	
					<div class="form-group">
						<label class="col-md-3 control-label">회원아이디</label>
						<div class="col-md-9"><p class="form-control-static">${user.userId }</p></div>
					</div>
					
					<!--■회원상태-->
					<div class="form-group pad-ver">
						<label class="col-md-3 control-label">회원상태</label>
						<div class="col-md-9">
						
							<div class="radio">
								<c:choose >
									<c:when test="${user.userState eq 1}">
										<label class="form-radio form-normal active"><input type="radio" checked="checked" name="userState" value="1"><b>가입</b> </label>
										<label class="form-radio form-normal"><input type="radio" name="userState" value="4" > 탈퇴</label>
										<label class="form-radio form-normal"><input type="radio" name="userState" value="9"> 관리자</label>
									</c:when>
									
									<c:when test="${user.userState eq 4}">
										<label class="form-radio form-normal active"><input type="radio" name="userState" name="userState" value="1">가입</label>
										<label class="form-radio form-normal"><input type="radio" checked="checked" name="userState" value="4" ><b> 탈퇴</b></label>
										<label class="form-radio form-normal"><input type="radio" name="userState" value="9"> 관리자</label>
									</c:when>
									
									<c:when test="${user.userState eq 9}">
										<label class="form-radio form-normal active"><input type="radio" name="userState" value="1">가입</label>
										<label class="form-radio form-normal"><input type="radio" name="userState" value="4" > 탈퇴</label>
										<label class="form-radio form-normal"><input type="radio" checked="checked" name="userState" value="9"><b> 관리자</b></label>
									</c:when>
								</c:choose>
							</div>
							
						</div>
					</div>
					
					<!--■Name & Password-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">이름</label>
						<div class="col-md-9">
							<input type="text" name="userName" class="form-control" style="width: 300px;" value="${user.userName }">
						</div>
					</div>
					
					<!--■Point-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">포인트</label>
						<div class="col-md-9">
							<input type="text" name="userPoint" class="form-control" style="width: 100px; text-align:right; display: inline-block; color: red" value="${user.userPoint }">&nbsp;point
						</div>
					</div>
					
					<!--■Brithday-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">생년월일</label>
						<div class="col-md-9">
							<input type="text" name="userBirthday" class="form-control" style="width: 300px;" value="${user.userBirthday }">
						</div>
					</div>
					
					<!--■Phone -->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">전화번호</label>
						<div class="col-md-9">
							<input type="text" name="userPhone" class="form-control" style="width: 300px;" value="${user.userPhone }">
						</div>
					</div>
					
					<!--■Emile -->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">이메일</label>
						<div class="col-md-9">
							<input type="text" name="userEmail" class="form-control" style="width: 300px;" value="${user.userEmail }">
						</div>
					</div>
					
					<!--■Gender -->
					<div class="form-group pad-ver">
						<label class="col-md-3 control-label">성별</label>
						<div class="col-md-9">
							<div class="radio">
								<c:choose>
									<c:when test="${user.userSex eq '남자' }">
										<label class="form-radio form-normal active"><input name="userSex" value="남자" type="radio" checked="checked" ><b> 남자</b></label>
										<label class="form-radio form-normal"><input name="userSex" type="radio" value="여자"> 여자</label>
									</c:when>
									
									<c:when test="${user.userSex eq '여자' }">
										<label class="form-radio form-normal active"><input type="radio" name="userSex" value="남자"> 남자</label>
										<label class="form-radio form-normal"><input type="radio" checked="checked" name="userSex" value="여자"><b>여자</b></label>
									</c:when>
								</c:choose>
							</div>
						</div>
					</div>
	
					<!--■Address-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">우편번호</label>
						<div class="col-md-9" data-validate="Userzip is required" >
							<input type="text"  name="userZipcode" id="postZip" class="form-control" readonly="readonly" style="width: 130px; display: inline-block;" value="${user.userZipcode }">
							<button class="btn btn-warning" onclick="execDaumPostcode()" style="width: 80px; display: inline-block;">검색</button>
							<input type="text" id="userAddr1" name="userAddress1" class="form-control" readonly="readonly" style="width: 300px;" value="${user.userAddress1 }">
							<input type="text" name="userAddress2" class="form-control" style="width: 300px;" required="required" value="${user.userAddress2 }">
						</div>
					</div>
					
					<!--■JoinDate-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">가입날짜</label>
						<div class="col-md-9">
							<input type="text" id="joinDate" class="form-control" style="width: 300px;" value="${user.userJoindate }" readonly="readonly">
						</div>
					</div>
					
					<!--■LastLogInDate-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">마지막 로그인 날짜</label>
						<div class="col-md-9">
							<input type="text" id="lastLogin" class="form-control" style="width: 300px;"  value="${user.userLogindate }" readonly="readonly">
						</div>
					</div>
					
					<!--■탈퇴날짜-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">탈퇴날짜</label>
						<div class="col-md-9">
							<input type="text" id="outDate" class="form-control" style="width: 300px;"  value="${user.userWithdrowdate }" readonly="readonly">
						</div>
					</div>
					
					<!--■버튼-->
					<div style="text-align: center;">
						<button id="modifyBtn" class="btn btn-primary" type="reset">수정완료</button>
						<p onclick="userListBtn()" class="btn btn-pink">리스트로 돌아가기</p>
					</div>
				
					<input type="hidden" name="userNo" value="${user.userNo }">
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
	
	//다음 우편번호 검색 창 띄우기
	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수

	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('postZip').value = data.zonecode;
	            document.getElementById("userAddr1").value = roadAddr;

	        }
	    }).open();
	}
	
	function userListBtn() {
		location.href="${pageContext.request.contextPath }/admin/userList";
	}
	
	$("#modifyBtn").click(function() {
		modifyForm.method="post";
		modifyForm.action="${pageContext.request.contextPath }/admin/userModify";
		modifyForm.submit();
	});
	</script>