<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
	<style type="text/css">
		.user-style { 
			 margin-top: 60px;
   			 margin-bottom: 60px;
		}
		.title-style {
			margin-top: 50px;
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
			color: black;
		}
		
		.my-page-title {
			font-size: xx-large;
		}
		
		.table-a {
			color: black;
		}
		#message{
			text-align: center;
		}
	</style>
	
<div class="container user-con">	
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>워터파크 예약</strong></h2>
    </div>
 	 <div class="table-responsive">
    	<table class="table table-striped">

 			<thead>
   				<tr>
  					<th width="30%">예약번호</th>
  					<th width="40%">이용권</th>
  					<th>이용날짜</th>
				</tr>
 			</thead>
 		<tbody>   
 		<c:forEach var="oceanList" items="${ocean }"> 		
   			<tr>
      			<td width="30%">${oceanList.rsNo }</td>
      			<td width="40%"><a class="table-a" href="#">${oceanList.rsTicket }</a></td>
			    <td>${fn:substring(oceanList.rsUsedate,0,10) }</td>
   			</tr>
 		</c:forEach>	
		 </tbody> 
		</table>    
 		<div id="message">${message }</div>   	
	</div>	 
		
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>호텔 예약</strong></h2>
    </div>
    <div class="table-responsive">
    	<table class="table table-striped" style="margin-bottom: 50px;">
 			<thead>
   				<tr>
  					<th width="30%">예약번호</th>
  					<th width="40%">객실</th>
  					<th>체크인</th>
  					<th>체크아웃</th>
				</tr>
 			</thead>
 		<tbody>
   			<c:forEach var="hotelList" items="${hotel }"> 		
	   			<tr>
	   				<td width="30%">${hotelList.reserveNo }</td>
	      			<td width="40%"><a class="table-a" href="#">${hotelList.reserveNo }</a></td>
				    <td>${fn:substring(hotelList.reserveCheckIn,0,10)}</td>
				    <td>${fn:substring(hotelList.reserveCheckOut,0,10) }</td>
	   			</tr>
	 		</c:forEach>
		 </tbody>  
		</table>    
 		<div id="message">${message }</div>   	
	</div>	 
</div>