<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('resources/bluemoon/images/loginimage.jpg');
background-size: auto;
background-repeat: inherit;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
height: 88%;
align-content: center;
}

.card{
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 10px;
margin-right: 10px;
color: white;
}
.msg {
color: red;
display: none;
text-align: center;
}

.idFind, .passwdFind {
display: none;	
}
a:hover {
cursor: pointer;
}
</style>

<body>
<div class="container loginhide login2 login1">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>LOGIN</h3>
			</div>
			<div class="card-body">
				<form id="loginForm" action=<c:url value="/login"/> method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="userId" id="userId" class="form-control" value="${userId }" placeholder="아이디">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="userPassword" id="userPassword" class="form-control" placeholder="비밀번호">
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-lg btn-block user-btn" type="submit">Login</button>
					</div>
					<div id="message" style="text-align: center; color: #ff0000;">${message }</div>
					<span id="passNullMsg" class="msg passMsg">비밀번호를 입력해주세요.</span>
					<span id="idNullMsg" class="msg idMsg">아이디를 입력해주세요.</span>
				</form>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					<a class="aaa" id="idFind">아이디 찾기</a><a class="aaa" id="passwdFind">비밀번호 찾기</a>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>

<div class="container loginhide idFind idFind2 ">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>아이디 찾기</h3>
			</div>			
			<div class="card-body">
					<div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
						<input type="text" name="userName" id="userName" class="form-control" value="" placeholder="이름">
						
					</div>
					<div class="input-group form-group">
						<input type="text" name="userPhone" id="userPhone" class="form-control" placeholder="휴대폰 번호 (-)포함">
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-lg btn-block user-btn" type="button" id="findIdBtn">아이디 찾기</button>
					</div>
					<span id="nameNullMsg" class="msg nameMsg">이름을 입력해주세요.</span>
					<span id="phoneNullMsg" class="msg phoneMsg">휴대폰 번호를 입력해주세요.</span>
					<span id="fineIdMsg" class="fineMsg msg" style="text-align: center; color: red;"></span>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					<a class="aaa" id="login1">로그인</a><a class="aaa" id="passwdFind1">비밀번호 찾기</a>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>			

<div class="container loginhide passwdFind passwdFind1">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>비밀번호 찾기</h3>
			</div>		
			<div class="card-body">
				<form id="passfindForm" action=<c:url value="/passfind"/> method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
						</div>
						<input type="text" name="userId" id="passFindId" class="form-control" value="" placeholder="아이디">
						
					</div>
					<div class="input-group form-group">
						<input type="text" name="userEmail" id="passFindEmail" class="form-control" placeholder="이메일">
					</div>
					<div class="form-group">
						<button id="findPasswdFind" class="btn btn-primary btn-lg btn-block user-btn" type="button">비밀번호 찾기</button>
					</div>
					<span id="findIdNullMsg" class="msg findIdMsg">비밀번호를 입력해주세요.</span>
					<span id="findEmailNullMsg" class="msg findEmailMsg">아이디를 입력해주세요.</span>
					<span id="finePassMsg" class="fineMsg msg" style="text-align: center; color: red;"></span>
				</form>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					<a class="aaa" id="login2">로그인</a><a class="aaa" id="idFind2">아이디 찾기</a>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(".aaa").click(function() {
		$(".msg").hide();
		$(".fineMsg").hide();
		var aId="."+$(this).attr("id");
		$(".loginhide").hide();
		$(aId).css("display","block");
	});

	$("#loginForm").submit(function() {
		$(".msg").hide();
		$("#message").text("");
		
		var result=true;
		var id=$("#userId").val();
		var Passwd=$("#userPassword").val();
		
	 	if(id=="") {
	 		$("#idNullMsg").css("display","block");
	 		$("#userId").focus();
	 		result=false;
		} else if(Passwd=="") {
			$("#passNullMsg").css("display","block");
	 		$("#userPassword").focus();
	 		result=false;
		}
	 	
	 	return result;
	});
	
	$("#findIdBtn").click(function() {
		$(".msg").hide();
		var userName=$("#userName").val();
		var userPhone=$("#userPhone").val();
		
	 	if(userName=="") {
	 		$("#nameNullMsg").css("display","block");
	 		$("#userName").focus();
	 		return
		} else if(userPhone=="") {
			$("#phoneNullMsg").css("display","block");
	 		$("#userPhone").focus();
			return
		}
		
		 $.ajax({
				type: "post",
				url: "idFind",
				headers: {"content-type":"application/json"},
				data:  JSON.stringify({"userName":userName, "userPhone":userPhone}),
				dataType: "text",
				success: function(text) {
						$("#fineIdMsg").css("display","block");
						$("#userName").val("");
						$("#userPhone").val("");
						$("#fineIdMsg").text(text);		
				},
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			});
	});

	$("#findPasswdFind").click(function() {
		$(".msg").hide();
		var userId=$("#passFindId").val();
		var userEmail=$("#passFindEmail").val();
		
	 	if(userId=="") {
	 		$("#findIdNullMsg").css("display","block");
	 		$("#passFindId").focus();
	 		return
		} else if(userEmail=="") {
			$("#findEmailNullMsg").css("display","block");
	 		$("#passFindEmail").focus();
			return
		}
		
		 $.ajax({
				type: "post",
				url: "passwdFind",
				headers: {"content-type":"application/json"},
				data:  JSON.stringify({"userId":userId, "userEmail":userEmail}),
				dataType: "text",
				success: function(text) {
						$("#finePassMsg").css("display","block");
						$("#passFindId").val("");
						$("#passFindEmail").val("");
						$("#finePassMsg").text(text);
				},
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			});
	});
	
	$(document).ready(function() {
		const URLSearch = new URLSearchParams(location.search);
		var result=URLSearch.get('result');
		if(result=="congratulations"){
			alert("회원 가입을 축하드립니다. 회원 가입 기념 3000point 적립 해드렸습니다.");
		}
	});
	
</script>
</body>
