<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container user-con">
<div class="row" style="margin-top: 35px">
		<div class="col-md-12">
			<ul class="nav nav-tabs nav-justified navbar-nav">
				<li class="nav-item">
					<a class="nav-link active my-page-title">Infomation</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="<c:url value="/info"/>">공지사항</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="<c:url value="/qna"/>">Q&A</a>
				</li>
			</ul>
		</div>
</div>
</div>