<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">블루문 회원등록 페이지입니다.</h3>
				</div>
				
				<form id="memberModify" method="post" class="panel-body form-horizontal form-padding" action="">
					<!--■Static-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">회원아이디</label>
						<div class="col-md-9">
							<input type="text" id="name" class="form-control" style="width: 300px;">
						</div>
					</div>
					
					<!--■Name & Password-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">이름</label>
						<div class="col-md-9">
							<input type="text" id="name" class="form-control" style="width: 300px;">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">비밀번호</label>
						<div class="col-md-9">
							<input type="password" id="password" class="form-control" style="width: 300px;">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">비밀번호 확인</label>
						<div class="col-md-9">
							<input type="password" id="passwordCheck" class="form-control" style="width: 300px;">
							<span id="checkPassword_collection_error" style="color: red;"></span>
						</div>
					</div>
					
					<!--■Brithday-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">생년월일</label>
						<div class="col-md-9">
							<input type="text" id="birthday" class="form-control" style="width: 300px;">
						</div>
					</div>
					
					<!--■Phone -->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">전화번호</label>
						<div class="col-md-9">
							<input type="text" id="phone" class="form-control" style="width: 300px;">
						</div>
					</div>
					
					<!--■Emile -->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">이메일</label>
						<div class="col-md-9">
							<input type="text" id="email" class="form-control" style="width: 300px;">
						</div>
					</div>
					
					<!--■Gender -->
					<div class="form-group pad-ver">
						<label class="col-md-3 control-label">성별</label>
						<div class="col-md-9">
							<div class="radio">
								<label class="form-radio form-normal active"><input type="radio" name="def-w-label"> 남자</label>
								<label class="form-radio form-normal"><input type="radio" name="def-w-label"> 여자</label>
							</div>
						</div>
					</div>
	
					<!--■Address-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="demo-text-input">우편번호</label>
						<div class="col-md-9" data-validate="Userzip is required" >
							<input type="text" id="postZip" class="form-control" readonly="readonly" style="width: 130px; display: inline-block;">
							<button class="btn btn-warning" onclick="execDaumPostcode()" style="width: 80px; display: inline-block;">검색</button>
							<input type="text" id="userAddr1" class="form-control" readonly="readonly" style="width: 300px;">
							<input type="text" class="form-control" style="width: 300px;" required="required">
						</div>
					</div>
				</form>
									
				<!--■버튼-->
				<div style="margin-left: 330px; margin-top: 10px;">
					<button class="btn btn-primary" type="reset">회원등록</button>
					<button class="btn btn-pink">리스트로 돌아가기</button>
				</div>
				
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>
			<!--===================================================-->
			<!--End page content-->
		</div>
	</div>
	<!--===================================================-->
	<!--END CONTENT CONTAINER-->
	
	<script type="text/javascript">
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
	
	</script>