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

<div class="container user-con">
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
            <h2><strong>Q&A</strong></h2>
    </div>
 	 <div class="table-responsive">
    	<table class="table table-striped">
 			<thead>
   				<tr>
  					<th width="11%">글번호</th>
  					<th width="16%">분류</th>
  					<th>제목</th>
  					<th>작성일</th>
				</tr>
 			</thead>
 		<tbody>   	
   			<tr>
      			<td width="11%">1123123</td>
      			<td width="16%">1123123</td>
      			<td><a class="table-a" href="#">휴대폰 입니다ddddddddddddddddd</a></td>
			    <td>2020-01-01</td>
   			</tr>   			
		 </tbody> 
		</table>    
	</div>	 
		
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>분실물 문의</strong></h2>
    </div>
    <div class="table-responsive">
    	<table class="table table-striped" style="margin-bottom: 50px;">
 			<thead>
   				<tr>
  					<th width="27%">글번호</th>
  					<th>물건이름</th>
  					<th>작성일</th>
				</tr>
 			</thead>
 		<tbody>   	
   			<tr>
      			<td width="27%">1123123</td>
      			<td><a class="table-a" href="#">휴대폰 입니다ddddddddddddddddd</a></td>
			    <td>2020-01-01</td>
   			</tr>
		 </tbody> 
		</table>    
	</div>	 
</div>