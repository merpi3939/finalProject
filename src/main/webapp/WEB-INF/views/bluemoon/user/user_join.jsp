<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
  <head>
    <title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">

    <link rel="stylesheet" href="../css/aos.css">

    <link rel="stylesheet" href="../css/ionicons.min.css">

    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/icomoon.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	
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
	</style>
	
  </head>
<body>
  <!-- startnav -->  
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="../index.html"><img alt="Brand" src="../images/bluemoon/bluemoonlogo.png" style="width: 150px;"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="../index.html" class="nav-link">BlueMoonWaterPark</a></li>
          <li class="nav-item"><a href="../hotel.html" class="nav-link">BlueMoonHotels</a></li>
          <li class="nav-item"><a href="../contact.html" class="nav-link">Information</a></li>
          <li class="nav-item cta"><a href="../login.html" class="nav-link"><span>Login</span></a></li>
          <li class="nav-item cta"><a href="../contact.html" class="nav-link"><span>Logout</span></a></li>
          <li class="nav-item cta"><a href="../contact.html" class="nav-link"><span>Admin</span></a></li>
          <li class="nav-item"><a href="../contact.html" class="nav-link">Join</a></li>
          <li class="nav-item"><a href="../contact.html" class="nav-link">MyPage</a></li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->

<div class="container">
	<div class="row justify-content-center user-style">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">회원가입( * 필수입력)</div>
                            <div class="card-body">
                                <form class="form-horizontal" id="joinForm" method="post" action="#">
                                    <div class="form-group">
                                        <label for="id" class="cols-sm-2 control-label">*아이디</label> 
                                        <span id="idNullMsg" class="msg idMsg">아이디는 필수 입력입니다.</span>
                                        <span id="idValidMsg" class="msg idMsg">아이디를 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="id" id="id" placeholder="영문자로 시작하는 6~20자" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label">*비밀번호</label>
                                        <span id="passNullMsg" class="msg passMsg">비밀번호는 필수 입력입니다.</span>
                                        <span id="passValidMsg" class="msg passMsg">비밀번호를 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="password" class="form-control" name="password" id="password" placeholder="영문자,숫자,특수문자 조합 7~21자" />
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
                                        <span id="nameNullMsg" class="msg nameMsg">이름은 필수 입력입니다.</span>
                                        <span id="nameValidMsg" class="msg nameMsg">이름을 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="name" id="name" placeholder="한글로 입력해주세요." />
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
                                                <input type="date" class="form-control" name="birthDay" id="birthDate" placeholder="yyyy-mm-dd" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="sex" class="cols-sm-2 control-label">*성별</label>
                                        <span id="sexNullMsg" class="msg sexMsg">성별을 선택 해주세요.</span>
                                        <div class="cols-sm-10">
                                           <select name="sex" id="sex" style="width: 100%; height: 50px;">
                                                	<option value="성별" selected="selected">성별</option>
                                                	<option value="남성">남성</option>
                                                	<option value="여성">여성</option>
                                           </select>
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
                                                <input type="text" class="form-control" name="phone2" id="phone2" maxlength="4"/>
                                                <input type="text" class="form-control" name="phone3" id="phone3" maxlength="4"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="cols-sm-2 control-label">*이메일</label>
                                        <span id="emailNullMsg" class="msg emailMsg">이메일은 필수 입력입니다.</span>
                                        <span id="emailValidMsg" class="msg emailMsg">이메일을 형식에 맞게 입력해 주세요.</span>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="email" id="email" placeholder="ex)bluemoon@bluemoon.com" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="zipcode" class="cols-sm-2 control-label">우편번호</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="zipcode" id="zipcode" readonly="readonly"/>
                                                <button type="button" class="btn btn-primary user-btn" onclick="sample4_execDaumPostcode();">검색하기</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="address" class="cols-sm-2 control-label">주소</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="address1" id="address1" readonly="readonly"/>
                                            </div>
                                        </div>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="address2" id="address2" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block user-btn">회원가입</button>
                                    </div>
                               
                                </form>
                            </div>
                        </div>
                    </div>
                </div>	
</div>

	<!-- FootStart -->	
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
 
        <div class="row">
          <div class="col-md-12 text-center">
            <p>(주)소노호텔앤리조트    강원도 홍천군 서면 한치골길 262    대표이사 : 최주영   개인정보관리 책임자: 김태흥
				사업자등록번호 : 223-81-08341    통신판매업신고 : 2004-강원홍천-00008    통신판매사업자 정보
				CONTACT CENTER 1588-4888    운영시간 09:00 ~ 18:00 (연중무휴)    이메일 webmaster@daemyung.com</p>
          </div>
         </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    <!-- endFoot -->
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="../js/jquery.min.js"></script>
  <script src="../js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/jquery.waypoints.min.js"></script>
  <script src="../js/jquery.stellar.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.magnific-popup.min.js"></script>
  <script src="../js/aos.js"></script>
  <script src="../js/jquery.animateNumber.min.js"></script>
  <script src="../js/bootstrap-datepicker.js"></script>
  <script src="../js/jquery.timepicker.min.js"></script>
  <script src="../js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="../js/google-map.js"></script>
  <script src="../js/main.js"></script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
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
		            document.getElementById('zipcode').value = data.zonecode;
		            document.getElementById("address1").value = roadAddr;
	
		        }
		    }).open();
		}
	  
	 //blur 유효성 검사
	 $("#id").focus();
	  
	 //아이디
	 $("#id").blur(function() {
	 	$(".idMsg").hide();
	 	
	 	var id=$("#id").val();
	 	var idReg=/^[a-zA-Z]\w{5,19}$/g;
	 	
	 	if(id=="") {
	 		$("#idNullMsg").show();
	 	} else if(!idReg.test(id)) {
	 		$("#idValidMsg").show();
	 	}
	 });
	 
	 //비밀번호
	 $("#password").blur(function() {
	 	$(".passMsg").hide();
	 	
	 	var password=$("#password").val();
	 	var passReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	 	
	 	if(password=="") {
	 		$("#passNullMsg").show();
	 	} else if (!passReg.test(password)) {
	 		$("#passValidMsg").show();
	 	}
	 });
	 
	 //비밀번호확인
	 $("#password-chk").blur(function() {
		 $(".passChkMsg").hide(); 
		var password=$("#password").val();
		var passwordChk=$("#password-chk").val();
		
		if(passwordChk=="") {
			$("#passChkNullMsg").show();
		} else if (password!=passwordChk) {
			$("#passChkValidMsg").show();
		}
	});
	 
	 //이름
	 $("#name").blur(function() {
		 $(".nameMsg").hide(); 
		var name=$("#name").val();
		var nameReg=/^[가-힣]{2,10}$/g;
	 	
		if(name=="") {
			$("#nameNullMsg").show();
		} else if (!nameReg.test(name)) {
			$("#nameValidMsg").show();
		}
	});
	
	 //생일
	 $("#birthDate").blur(function() {
		 $(".birthDayMsg").hide(); 
		var now=new Date();
		var birthDay=$("#birthDate").val();
		
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
	$("#sex").blur(function() {
		$(".sexMsg").hide();
		
		var sex=$("#sex").val();
		
		if(sex=="성별") {
			$("#sexNullMsg").show();
		}		
	});
	 
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
		
		//아이디
		var id=$("#id").val();
	 	var idReg=/^[a-zA-Z]\w{5,19}$/g;
	 	
	 	if(id=="") {
	 		$("#idNullMsg").show();
	 		result=false;
	 	} else if(!idReg.test(id)) {
	 		$("#idValidMsg").show();
	 		result=false;
	 	}
	 	//비밀번호
	 	var password=$("#password").val();
	 	var passReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	 	
	 	if(password=="") {
	 		$("#passNullMsg").show();
	 		result=false;
	 	} else if (!passReg.test(password)) {
	 		$("#passValidMsg").show();
	 		result=false;
	 	}
	 	//비밀번호확인
	 	var password=$("#password").val();
		var passwordChk=$("#password-chk").val();
		
		if(passwordChk=="") {
			$("#passChkNullMsg").show();
			result=false;
		} else if (password!=passwordChk) {
			$("#passChkValidMsg").show();
			result=false;
		}
		//이름
		var name=$("#name").val();
		var nameReg=/^[가-힣]{2,10}$/g;
	 	
		if(name=="") {
			$("#nameNullMsg").show();
			result=false;
		} else if (!nameReg.test(name)) {
			$("#nameValidMsg").show();
			result=false;
		}
		//생년월일
		var now=new Date();
		var birthDay=$("#birthDate").val();
		
		var birthRegArry=birthDay.split("-");
		var birthRegDate=new Date(birthRegArry[0],birthRegArry[1]-1,birthRegArry[2]);
		var birthRegOld=new Date(1920,01-1,01);
		
		if(birthDay=="") {
			$("#birthDayNullMsg").show();
			result=false;
		} else if(now.getTime() < birthRegDate.getTime()) {			
			$("#birthDayRegMsg").show();
			result=false;
		} else if(birthRegOld.getTime() > birthRegDate.getTime()){
			$("#birthDayRegOldMsg").show();
			result=false;
		}
		
		//성별
		var sex=$("#sex").val();
		
		if(sex=="성별") {
			$("#sexNullMsg").show();
		}
			
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
  </body>
</html>