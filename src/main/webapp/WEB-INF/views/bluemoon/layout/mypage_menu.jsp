<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<style type="text/css">
#removeUser {
    background-color: #ece5d6cc;
    position: absolute;
    top: 119%;
    left: 52%;
    margin-top: -40px;
    margin-left: -120px;
    padding: 5px;
    z-index: 100;
    display: none;
}

.but {
	cursor: pointer;
}
#userRemove:hover {
	color: red;
}
</style>
</head>

<div class="container user-con">
<div class="row" style="margin-top: 35px">
		<div class="col-md-12">
			<ul class="nav nav-tabs nav-justified navbar-nav">
				<li class="nav-item">
					<a class="nav-link active my-page-title">MyPage</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="<c:url value="/myreservation"/>">예약 현황</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="<c:url value="/myusermodify"/>">회원정보 변경</a>
				</li>
				<li class="nav-item">
					<a id="userRemove" class="nav-link my-page but">회원 탈퇴</a>
				</li>
			</ul>
				<div id="removeUser">
					<input type="password" name="userPassword" id="userPassword" placeholder="현재 비밀번호">
					<span id="errorPass" style="display: grid; color: red; text-align: center;"></span>
					<div style="text-align: center; margin: 2px;">
						<button id="delete" class="but" type="button">삭제</button>
						<button id="cancle" class="but" type="button">취소</button>
					</div>
				</div>
		</div>
</div>
</div>
<body>
<script type="text/javascript">
	$("#userRemove").click(function() {
		$("#removeUser").show(300);
	});

	$("#cancle").click(function() {
		$("#removeUser").hide();
	});
	
	$("#delete").click(function() {
		 $.ajax({
				type: "post",
				url: "myuserremove",
				headers: {"content-type":"application/json"},
				data: $("#userPassword").val(),
				dataType: "text",
				success: function(text) {
					if(text=="ok") {
						alert("회원 탈퇴 되었습니다.");
						location.href="<c:url value="/"/>";
					} else {
						$("#errorPass").text("비밀번호가 틀립니다.");
					}
				},
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			});
	});
	
	
</script>
</body>