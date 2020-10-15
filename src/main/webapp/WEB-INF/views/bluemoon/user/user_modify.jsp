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
					<a class="nav-link my-page" href="#">예약 현황</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">회원정보 변경</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">비밀번호 변경</a>
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
                            <div class="card-header">정보변경</div>
                            <div class="card-body">
                            	<!-- 폼태그시작 -->
                                <form class="form-horizontal" id="joinForm" method="post" action="#">
                                    <div class="form-group">
                                        <label for="id" class="cols-sm-2 control-label">아이디</label> 
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="id" id="id" value="honggildong" readonly="readonly"/>
                                            </div>
                                        </div>
                                    </div>                     
                                    <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label">이름</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="name" id="name" value="홍길동" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="birthDay" class="cols-sm-2 control-label">생년월일</label>                                      
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="birthDay" id="birthDay" value="2020-01-01" readonly="readonly" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sex" class="cols-sm-2 control-label">성별</label>
                                        <span id="sexNullMsg" class="msg sexMsg">성별을 선택 해주세요.</span>
                                        <div class="cols-sm-10">
                                           <input type="text" class="form-control" name="sex" id="sex" value="남성" readonly="readonly" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="phone" class="cols-sm-2 control-label">*전화번호</label>
                                        <span id="phoneNullMsg" class="msg phoneMsg">전화번호는 필수 입력입니다.</span>
                                        <span id="phoneValidMsg" class="msg phoneMsg">숫자로만 입력해주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <select name="phone1" id="phone1" style="width: 33%;">
                                                	<option value="선택" selected="selected">선택</option>
                                                	<option value="010">010</option>
                                                	<option value="011">011</option>
                                                	<option value="017">017</option>
                                                	<option value="019">019</option>
                                                </select>
                                                <input type="text" class="form-control" name="phone2" id="phone2" maxlength="4" value=""/>
                                                <input type="text" class="form-control" name="phone3" id="phone3" maxlength="4" value=""/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="cols-sm-2 control-label">*이메일</label>
                                        <span id="emailNullMsg" class="msg emailMsg">이메일은 필수 입력입니다.</span>
                                        <span id="emailValidMsg" class="msg emailMsg">이메일을 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="email" id="email" placeholder="ex)bluemoon@bluemoon.com" value="" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="zipcode" class="cols-sm-2 control-label">우편번호</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="zipcode" id="zipcode" readonly="readonly" value=""/>
                                                <button type="button" class="btn btn-primary user-btn" onclick="sample4_execDaumPostcode();">검색하기</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="address" class="cols-sm-2 control-label">주소</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="address1" id="address1" readonly="readonly" value=""/>
                                            </div>
                                        </div>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="address2" id="address2" value=""/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block user-btn">정보변경</button>
                                    </div>
                               
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
	</div>	
  <script type="text/javascript">
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
		            document.getElementById('zipcode').value = data.zonecode;
		            document.getElementById("address1").value = roadAddr;
	
		        }
		    }).open();
		}
	 //유효성 검사
	 
	//전화번호
	$("#phone1,#phone2, #phone3").blur(function() {
		$(".phoneMsg").hide();
		var phone1=$("#phone1").val();
		var phone2=$("#phone2").val();
		var phone3=$("#phone3").val();
		var phoneReg=/^[0-9]*$/;
		
		if(phone1=="선택" || phone2=="" || phone3=="") {
			$("#phoneNullMsg").show();
		} else if(!phoneReg.test(phone2) || !phoneReg.test(phone3)) {
			$("#phoneValidMsg").show();			
		}
	});
	
	 //이메일
	 $("#email").blur(function() {
		 $(".emailMsg").hide(); 
		var email=$("#email").val();
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
		
		//전화번호
		var phone1=$("#phone1").val();
		var phone2=$("#phone2").val();
		var phone3=$("#phone3").val();
		var phoneReg=/^[0-9]*$/;
		
		if(phone1=="선택" || phone2=="" || phone3=="") {
			$("#phoneNullMsg").show();
			result=false;
		} else if(!phoneReg.test(phone2) || !phoneReg.test(phone3)) {
			$("#phoneValidMsg").show();
			result=false;
		}
		//이메일
		var email=$("#email").val();
		var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
	 	
		if(email=="") {
			$("#emailNullMsg").show();
			result=false;
		} else if (!emailReg.test(email)) {
			$("#emailValidMsg").show();
			result=false;
		}
		return result;
	});
	  
  </script>
 