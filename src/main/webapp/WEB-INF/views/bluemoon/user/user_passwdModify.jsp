<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<style type="text/css">
		.user-style { 
			 margin-top: 50px;
   			 margin-bottom: 50px;
		}
		.user-btn {
			 border-radius: 0px;
		}
		
		.msg {
			display: none;
			color: red;
		}
		
		select {
			border-color: #ced4da;
		}
		
		.my-page {
			color: black !important;
		}
		
		.my-page-title {
			font-size: xx-large;
		}
	</style>
	
<div class="container user-con">
	<div class="row" style="margin-top: 35px">
		<div class="col-md-12">
			<ul class="nav nav-tabs nav-justified navbar-nav">
				<li class="nav-item">
					<a class="nav-link active my-page-title">MyPage</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">회원정보 변경</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">비밀번호 변경</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">내가 쓴 글</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">회원 탈퇴</a>
				</li>
			</ul>
		</div>
	</div>

	<div class="row justify-content-center user-style">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">비밀번호 변경</div>
                            <div class="card-body">
                                <form class="form-horizontal" id="joinForm" method="post" action="#">
                                    <div class="form-group">
                                        <label for="oldPassword" class="cols-sm-2 control-label">비밀번호</label> 
                                        <span id="oldPassNullMsg" class="msg oldPassMsg">비밀번호를 입력해주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="oldPassword" id="oldPassword" placeholder="비밀번호를 입력해주세요." />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="newPassword" class="cols-sm-2 control-label">새 비밀번호</label>
                                        <span id="newPassNullMsg" class="msg newPassMsg">새 비밀번호를 입력해주세요.</span>
                                        <span id="newPassValidMsg" class="msg newPassMsg">비밀번호를 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="newPassword" id="newPassword" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="newPassword-chk" class="cols-sm-2 control-label">새 비밀번호 확인</label>
                                        <span id="newPassChkNullMsg" class="msg newPassChkMsg">비밀번호 확인은 필수 입력입니다.</span>
                                        <span id="newPassChkValidMsg" class="msg newPassChkMsg">입력하신 비밀번호와 맞지 않습니다.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="newPassword-chk" id="newPassword-chk"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                       	<button type="submit" class="btn btn-primary btn-lg btn-block user-btn">비밀번호 변경</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>	
</div>

  <script type="text/javascript">
	 //blur 유효성 검사
	 $("#oldPassword").focus();
	  
	 //아이디
	 $("#oldPassword").blur(function() {
	 	$(".oldPassMsg").hide();
	 	
	 	var id=$("#oldPassword").val();
	 	
	 	if(id=="") {
	 		$("#oldPassNullMsg").show();
	 		$("#oldPassword").focus();
	 	} 
	 });
	 
	 //비밀번호
	 $("#newPassword").blur(function() {
	 	$(".newPassMsg").hide();
	 	
	 	var password=$("#newPassword").val();
	 	var passReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	 	
	 	if(password=="") {
	 		$("#newPassNullMsg").show();
	 	} else if (!passReg.test(password)) {
	 		$("#newPassValidMsg").show();
	 	}
	 });
	 
	 //비밀번호확인
	 $("#newPassword-chk").blur(function() {
		 $(".newPassChkMsg").hide(); 
		var password=$("#newPassword").val();
		var passwordChk=$("#newPassword-chk").val();
		
		if(passwordChk=="") {
			$("#newPassChkNullMsg").show();
		} else if (password!=passwordChk) {
			$("#newPassChkValidMsg").show();
		}
	});
	 
	//서브밋 유효성검사
	
	$("#joinForm").submit(function() {
		var result=true;
		$(".msg").hide();
		
	 	//비밀번호
	 	var password=$("#newPassword").val();
	 	var passReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	 	
	 	if(password=="") {
	 		$("#newPassNullMsg").show();
	 		result=false;
	 	} else if (!passReg.test(password)) {
	 		$("#newPassValidMsg").show();
	 		result=false;
	 	}
	 	//비밀번호확인
	 	var password=$("#newPassword").val();
		var passwordChk=$("#newPassword-chk").val();
		
		if(passwordChk=="") {
			$("#newPassChkNullMsg").show();
			result=false;
		} else if (password!=passwordChk) {
			$("#newPassChkValidMsg").show();
			result=false;
		}
		
		return result;
	});
	  
  </script>
  