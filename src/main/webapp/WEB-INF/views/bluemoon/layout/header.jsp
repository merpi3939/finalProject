<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="<c:url value="/"/>"><img alt="Brand" src=<c:url value="bluemoon/images/bluemoonlogo.png"/> style="width: 150px;"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href=<c:url value="/"/> class="nav-link">BlueMoonWaterPark</a></li>
          <li class="nav-item"><a href=# class="nav-link">BlueMoonHotels</a></li>
          <li class="nav-item"><a href=<c:url value="/info"/> class="nav-link">Information</a></li>
         
          <c:set var="choice" value="${userInfo.userState }"/>
          <c:choose>
          	<c:when test="${choice==null }">
          		<li class="nav-item cta"><a href=<c:url value="/login"/> class="nav-link"><span>Login</span></a></li>
          		<li class="nav-item"><a href=<c:url value="/jointerms"/> class="nav-link">Join</a></li>
			</c:when>
          	<c:when test="${choice==1 }">
          		<li class="nav-item cta"><a href="<c:url value="/logout"/>" class="nav-link"><span>Logout</span></a></li>
          		<li class="nav-item"><a href=<c:url value="/myuserreservation"/> class="nav-link">MyPage</a></li>
			</c:when>
          	<c:when test="${choice==9 }">
          		<li class="nav-item cta"><a href=<c:url value="/admin"/> class="nav-link"><span>Admin</span></a></li>
			</c:when>
          </c:choose>
          
        </ul>
      </div>
    </div>
</nav>