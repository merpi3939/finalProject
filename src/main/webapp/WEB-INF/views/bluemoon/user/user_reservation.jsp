<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
	<style type="text/css">
		.user-style { 
			 margin-top: 50px;
   			 margin-bottom: 50px;
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
	</style>
	
<div class="container">
	<div class="row" style="margin-top: 50px">
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
					<a class="nav-link my-page" href="#">내가 쓴 글</a>
				</li>
				<li class="nav-item">
					<a class="nav-link my-page" href="#">회원 탈퇴</a>
				</li>
			</ul>
		</div>
	</div>
	
	
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>워터파크 예약</strong></h2>
    </div>
 	 <div class="table-responsive">
    	<table class="table table-striped">
 			<thead>
   				<tr>
  					<th width="30%">예약번호</th>
  					<th width="40%">이용권</th>
  					<th>예약날짜</th>
				</tr>
 			</thead>
 		<tbody>   	
   			<tr>
      			<td width="30%">1123123</td>
      			<td width="40%"><a class="table-a" href="#">짱좋은 티켓asdasdasd</a></td>
			    <td>2020-01-01</td>
   			</tr>
		 </tbody> 
		</table>    
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
  					<th>예약날짜</th>
				</tr>
 			</thead>
 		<tbody>   	
   			<tr>
      			<td width="30%">1123123</td>
      			<td width="40%"><a class="table-a" href="#">뭐선뭐asdasd선 방</a></td>
			    <td>2020-01-01</td>
   			</tr>
   			
		 </tbody>  
		</table>    
	</div>	 
</div>