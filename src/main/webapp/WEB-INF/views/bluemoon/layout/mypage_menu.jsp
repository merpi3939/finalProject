<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<a class="nav-link my-page" href="<c:url value="/mypasswdmodify"/>">비밀번호 변경</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="/login">회원 탈퇴</a>
				</li>
			</ul>
		</div>
</div>
</div>