<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style type="text/css">
.user-style { 
 	margin-top: 50px;
 	margin-bottom: 50px;
}
.user-btn {
 	border-radius: 0px;
}

.error{
	color: red;
}

.msg, .jungbokmsg {
	display: none;
	color: red;
}

select {
	border-color: #ced4da;
}
</style>

<div class="container user-con">
	<div class="row justify-content-center user-style">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">회원가입( * 필수입력)</div>
                            <div class="card-body">
                                <form:form action="userjoin" method="post" id="joinForm" modelAttribute="user">
                                    <div class="form-group">
                                        <label for="id" class="cols-sm-2 control-label">*아이디</label>
                                        <form:errors path="userId" class="error errorId"/> 
                                        <span id="idNullMsg" class="msg idMsg">아이디는 필수 입력입니다.</span>
                                        <span id="idValidMsg" class="msg idMsg">아이디를 형식에 맞게 입력해 주세요.</span>
                                        <span id="noIdMsg" class="jungbokmsg">사용 불가능 한 아이디 입니다.</span>
                                        <span id="okIdMsg" class="jungbokmsg">사용 가능 한 아이디 입니다.</span>
                                        <span style="color: red;">${message }</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userId" class="form-control" placeholder="영문자로 시작하는 6~20자"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label">*비밀번호</label>
                                        <form:errors path="userPassword" class="error errorPasswd"/>
                                        <span id="passNullMsg" class="msg passMsg">비밀번호는 필수 입력입니다.</span>
                                        <span id="passValidMsg" class="msg passMsg">비밀번호를 형식에 맞게 입력해 주세요.</span>
                                        <span id="passTrimMsg" class="msg passMsg">공백은 사용 할 수 없습니다.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:password path="userPassword" class="form-control" placeholder="영문자,숫자,특수문자 조합 7~21자"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password-chk" class="cols-sm-2 control-label">*비밀번호 확인</label>
                                        <span id="passChkNullMsg" class="msg passChkMsg">비밀번호 확인은 필수 입력입니다.</span>
                                        <span id="passChkValidMsg" class="msg passChkMsg">입력하신 비밀번호와 맞지 않습니다.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="password-chk" id="password-chk"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label">*이름</label>
                                        <form:errors path="userName" class="error errorName"/>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userName" class="form-control" value="${userName }" readonly="true"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="birthDay" class="cols-sm-2 control-label">*생년월일</label>
                                        <span id="birthDayNullMsg" class="msg birthDayMsg">생년월일은 필수 입력입니다.</span>
                                        <span id="birthDayRegMsg" class="msg birthDayMsg">미래에서 오셨나요?</span>
                                        <span id="birthDayRegOldMsg" class="msg birthDayMsg">과거에서 오셨나요?</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="userBirthday" id="userBirthday" value="${user.userBirthday }" placeholder="yyyy-mm-dd" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sex" class="cols-sm-2 control-label">*성별</label>
                                        <span id="sexNullMsg" class="msg sexMsg">성별을 선택 해주세요.</span>
                                        <div class="cols-sm-10">
                                           <div class="input-group">
                                                <select name="userSex" id="userSex" style="width: 100%; height: 50px;">
                                                	<option value="선택">선택</option>
                                                	<option value="남자">남자</option>
                                                	<option value="여자">여자</option>                                      
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone" class="cols-sm-2 control-label">*전화번호</label>
                                        <form:errors path="userPhone" class="error errorPhone"/>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="phone1" value="${phone1 }" class="form-control" readonly="true"/>
                                                <form:input path="phone2" value="${phone2 }" class="form-control" readonly="true"/>
                                                <form:input path="phone3" value="${phone3 }" class="form-control" readonly="true"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="cols-sm-2 control-label">*이메일</label>
                                        <form:errors path="userEmail" class="error errorEmail"/>
                                        <span id="emailNullMsg" class="msg emailMsg">이메일은 필수 입력입니다.</span>
                                        <span id="emailValidMsg" class="msg emailMsg">이메일을 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userEmail" class="form-control" placeholder="ex)bluemoon@bluemoon.com"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="zipcode" class="cols-sm-2 control-label">우편번호</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userZipcode" class="form-control" readonly="true"/>
                                                <button type="button" class="btn btn-primary user-btn" onclick="sample4_execDaumPostcode();">검색하기</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="address" class="cols-sm-2 control-label">주소</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userAddress1" class="form-control" readonly="true" />
                                            </div>
                                        </div>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userAddress2" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="color: red;">${message }</div>
                                    <div class="form-group ">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block user-btn">회원가입</button>
                                    </div>
                         		 </form:form>
                            </div>
                        </div>
                    </div>
                </div>	
</div>

<script type="text/javascript">
  	  //우편번호
	  function sample4_execDaumPostcode() {
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
		            document.getElementById('userZipcode').value = data.zonecode;
		            document.getElementById("userAddress1").value = roadAddr;
	
		        }
		    }).open();
		}
	  
	 //blur 유효성 검사
	 $("#userId").focus();
	  
	 //아이디
	 $("#userId").blur(function() {
	 	$(".idMsg").hide();
	 	$(".errorId").hide();
	 	
	 	var id=$("#userId").val();
	 	var idReg=/^[a-zA-Z]\w{5,19}$/g;
	 	
	 	if(id=="") {
	 		$("#idNullMsg").show();
	 		$(".jungbokmsg").hide();
	 		$("#userId").focus();
	 	} else if(!idReg.test(id)) {
	 		$("#idValidMsg").show();
	 		$(".jungbokmsg").hide();
	 		$("#userId").focus();
	 	} else {
	 	 $.ajax({
				type: "get",
				url: "useridcheck",
				data: "userId="+$("#userId").val(),
				success: function(result) {
					if(result=="no") {
		 				$("#noIdMsg").show();
		 				$("#okIdMsg").hide();
		 				$("#userId").focus();
					} else {
		 				$("#okIdMsg").show();
		 				$("#noIdMsg").hide();
		 				
					}
				},
				eroor: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			 });	 		
	 	}
	 	
	 });
 
	 //비밀번호
	 $("#userPassword").blur(function() {
	 	$(".passMsg").hide();
	 	$(".errorPasswd").hide();
	 	
	 	var password=$("#userPassword").val();
	 	var passReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
		var passblank = /[\s]/g;
	 	
	 	if(password=="") {
	 		$("#passNullMsg").show();
	 	} else if (!passReg.test(password)) {
	 		$("#passValidMsg").show();
	 	} else if(passblank.test(password)) {
	 		$("#passTrimMsg").show();	 		
	 	}
	 });
	 
	 //비밀번호확인
	 $("#password-chk").blur(function() {
		 $(".passChkMsg").hide(); 
		var password=$("#userPassword").val();
		var passwordChk=$("#password-chk").val();
		
		if(passwordChk=="") {
			$("#passChkNullMsg").show();
		} else if (password!=passwordChk) {
			$("#passChkValidMsg").show();
		}
	});
	 
	 //생일
	 $("#userBirthday").blur(function() {
		 $(".birthDayMsg").hide(); 
		var now=new Date();
		var birthDay=$("#userBirthday").val();
		
		var birthRegArry=birthDay.split("-");
		var birthRegDate=new Date(birthRegArry[0],birthRegArry[1]-1,birthRegArry[2]);
		var birthRegOld=new Date(1920,01-1,01);
		
		if(birthDay=="") {
			$("#birthDayNullMsg").show();
		} else if(now.getTime() < birthRegDate.getTime()) {			
			$("#birthDayRegMsg").show();
		} else if(birthRegOld.getTime() > birthRegDate.getTime()){
			$("#birthDayRegOldMsg").show();			
		}
	});
	 
	 //성별
	$("#userSex").blur(function() {
		$(".sexMsg").hide();
		
		var sex=$("#userSex").val();
		if(sex=="선택") {
			$("#sexNullMsg").show();
		}		
	});
	  
	//이메일
	 $("#userEmail").blur(function() {
		 $(".emailMsg").hide(); 
		 $(".errorEmail").hide();
		var email=$("#userEmail").val();
		var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
	 	
		if(email=="") {
			$("#emailNullMsg").show();
		} else if (!emailReg.test(email)) {
			$("#emailValidMsg").show();
		}
	});
	
	//서브밋 유효성검사
	
	 $("#joinForm").submit(function() {
		var result=true;
		$(".msg").hide();
		
		//아이디
		var id=$("#userId").val();
	 	var idReg=/^[a-zA-Z]\w{5,19}$/g;
	 	
	 	if(id=="") {
	 		$("#idNullMsg").show();
	 		result=false;
	 		 $("#userId").focus();
	 	} else if(!idReg.test(id)) {
	 		$("#idValidMsg").show();
	 		result=false;
	 		 $("#userId").focus();
	 	}
	 	//비밀번호
	 	var password=$("#userPassword").val();
	 	var passReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	 	var passblank = /[\s]/g;
	 	
	 	if(password=="") {
	 		$("#passNullMsg").show();
	 		result=false;
	 		 $("#userPassword").focus();
	 	} else if (!passReg.test(password)) {
	 		$("#passValidMsg").show();
	 		result=false;
	 		 $("#userPassword").focus();
	 	} else if(passblank.test(password)) {
	 		 $("#userPassword").focus();
	 		$("#passTrimMsg").show();	 		
	 		result=false;
	 	}
	 	
	 	//비밀번호확인
	 	var password=$("#userPassword").val();
		var passwordChk=$("#password-chk").val();
		
		if(passwordChk=="") {
			$("#passChkNullMsg").show();
			result=false;
			$("#password-chk").focus();
		} else if (password!=passwordChk) {
			$("#passChkValidMsg").show();
			result=false;
			$("#password-chk").focus();
		}
		
		//생년월일
		var now=new Date();
		var birthDay=$("#userBirthday").val();
		
		var birthRegArry=birthDay.split("-");
		var birthRegDate=new Date(birthRegArry[0],birthRegArry[1]-1,birthRegArry[2]);
		var birthRegOld=new Date(1920,01-1,01);
		
		if(birthDay=="") {
			$("#birthDayNullMsg").show();
			result=false;
			$("#userBirthday").focus();
		} else if(now.getTime() < birthRegDate.getTime()) {			
			$("#birthDayRegMsg").show();
			result=false;
			$("#userBirthday").focus();
		} else if(birthRegOld.getTime() > birthRegDate.getTime()){
			$("#birthDayRegOldMsg").show();
			result=false;
			$("#userBirthday").focus();
		}
		
		//성별
		var sex=$("#userSex").val();
		
		if(sex=="선택") {
			$("#sexNullMsg").show();
			result=false;
			$("#userSex").focus();
		}
			
		//이메일
		var email=$("#userEmail").val();
		var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
	 	
		if(email=="") {
			$("#emailNullMsg").show();
			result=false;
			$("#userEmail").focus();
		} else if (!emailReg.test(email)) {
			$("#emailValidMsg").show();
			result=false;
			$("#userEmail").focus();
		}
		return result;
	});
  </script>
 
