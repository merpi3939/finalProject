<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
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
	<div class="row justify-content-center user-style">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">회원수정( * 필수입력) <span style="color: red">${message }</span></div>
                            <div class="card-body">
                                <form:form action="myusermodify" method="post" id="modifyUserForm" modelAttribute="user">
                                    <div class="form-group">
                                        <label for="id" class="cols-sm-2 control-label">아이디</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                               <form:input path="userId" class="form-control" value="${user.userId }"/>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label for="point" class="cols-sm-2 control-label">포인트</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" name="userPoint" id="userPoint" class="form-control" readonly="readonly" value="${user.userPoint }"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label">비밀번호</label>
                                        <span id="passValidMsg" class="msg passMsg">비밀번호를 형식에 맞게 입력해 주세요.</span>
                                        <span id="passTrimMsg" class="msg passMsg">공백은 사용 할 수 없습니다.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:password path="userPassword" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password-chk" class="cols-sm-2 control-label">비밀번호 확인</label>
                                        <span id="passChkValidMsg" class="msg passChkMsg">입력하신 비밀번호와 맞지 않습니다.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="password-chk" id="password-chk"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label">이름</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userName" class="form-control" readonly="true" value="${user.userName }"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="birthDay" class="cols-sm-2 control-label">생년월일</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="date" class="form-control" name="userBirthday" id="userBirthday" value="${user.userBirthday }" readonly="readonly"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sex" class="cols-sm-2 control-label">*성별</label>
                                        <span id="sexNullMsg" class="msg sexMsg">성별을 선택 해주세요.</span>
                                        <div class="cols-sm-10">
                                           <select name="userSex" id="userSex" style="width: 100%; height: 50px;">
                                                	<option value="선택">선택</option>
                                                	<option value="남자">남자</option>
                                                	<option value="여자">여자</option>                                      
                                           </select>
                                           <input type="text" id="userSexSel" value="${user.userSex }" hidden="hidden">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone" class="cols-sm-2 control-label">*전화번호</label>                         
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <select name="phone1" id="phone1" class="form-control">
                                                	<option value="010">010</option>
                                                	<option value="011">011</option>
                                                	<option value="012">012</option>
                                                	<option value="016">016</option>
                                                	<option value="017">017</option>
                                                	<option value="018">018</option>
                                                	<option value="019">019</option>
                                                </select>
                                                <input type="text" id="phone1s" value="${user.phone1 }" hidden="hidden" class="form-control"/>
                                                <form:input path="phone2" value="" class="form-control" maxlength="4"/>
                                                <form:input path="phone3" value="" class="form-control" maxlength="4"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="cols-sm-2 control-label">*이메일</label>
                                        <span id="emailNullMsg" class="msg emailMsg">이메일은 필수 입력입니다.</span>
                                        <span id="emailValidMsg" class="msg emailMsg">이메일을 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userEmail" class="form-control" value="${user.userEmail }"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="zipcode" class="cols-sm-2 control-label">우편번호</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userZipcode" class="form-control" value="${user.userZipcode }" readonly="true"/>
                                                <button type="button" class="btn btn-primary user-btn" onclick="sample4_execDaumPostcode();">검색하기</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="address" class="cols-sm-2 control-label">주소</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userAddress1" class="form-control" value="${user.userAddress1 }" readonly="true"/>
                                            </div>
                                        </div>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <form:input path="userAddress2" class="form-control" value="${user.userAddress2 }"/>
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="form-group ">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block user-btn">정보수정</button>
                                    </div>
                         		 </form:form>
                            </div>
                        </div>
                    </div>
                </div>	
</div>

<script type="text/javascript">
	var phone1=$("#phone1s").val();	
	$("#phone1").val(phone1).prop("selected",true);

	var selct=$("#userSexSel").val();
	$("#userSex").val(selct).prop("selected",true);

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

	//서브밋 유효성검사
	
	 $("#modifyUserForm").submit(function() {
		var result=true;
		$(".msg").hide();
		
		//비밀번호
	 	var password=$("#userPassword").val();
	 	var passReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	 	var passblank = /[\s]/g;
	 	
	 	if(password=="") {
		 	result=true;
	 	} else if (!passReg.test(password)) {
	 		$("#passValidMsg").show();
	 		result=false;
	 		 $("#userPassword").focus();
	 	} else if(passblank.test(password)) {
	 		$("#passTrimMsg").show();	 	
	 		result=false;
	 		 $("#userPassword").focus();
	 	}
	 	//비밀번호확인
		var passwordChk=$("#password-chk").val();
		if (password!=passwordChk) {
			$("#passChkValidMsg").show();
			result=false;
			$("#password-chk").focus();
		}

		//전화번호
		var phone2=$("#phone2").val();
		var phone3=$("#phone3").val();
		var phoneReg2=/^([0-9]{3,4})$/;
		var phoneReg3=/^([0-9]{4})$/;
		
		if(phone2=="" || phone3=="") {
			$("#phoneNullMsg").show();
			result=false;
		} else if(!phoneReg2.test(phone2) || !phoneReg3.test(phone3)) {
			$("#phoneValidMsg").show();
			result=false;
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
 
