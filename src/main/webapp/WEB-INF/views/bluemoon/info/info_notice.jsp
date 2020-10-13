<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <head>
	<style type="text/css">
		
		.title-style {
			margin-top: 50px;
		}
		.user-btn {
			 border-radius: 0px;
		}
		
		.info-page {
			color: black;
		}
		
		.info-title {
			font-size: xx-large;
		}
		
		.table-a {
			color: black;
		}
		
		.info-table {
			margin-bottom: 50px;
		}
		
		#noticeBtn {
			float: right;
		}
		
		.searchForm{
			text-align: center;
			margin-bottom: 50px;
		}
		
		.noticeBtn {
			line-height: 1.1;
			border-radius: 0px;
		}
		
		ul{
   			list-style:none;
   			text-align: center;
   			padding-inline-start: 0px;
   		}
   		
		.block-27 ul li a {
			color: #241515;
    		border: 1px solid #d1d1d1;
		}
		
		.block-27 ul li.active span {
		    background: #e3e3e3;
		    color: #000000;
		    border: 1px solid transparent;
		}	
	</style>
	
  </head>
<div class="container">
	<div class="row" style="margin-top: 50px">
		<div class="col-md-12">
			<ul>
				<li class="nav-item">
					<a class="nav-link active info-title" style="border-bottom: 1px solid black;">Infomation</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#" >공지사항</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#">Q&A</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#">분실물 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#" style="border-bottom: 1px solid #d1d1d1;">분실물 문의</a>
				</li>
			</ul>
		</div>
	</div>
	
	
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>공지사항</strong></h2>
    </div>
    <div class="table-responsive" style="overflow-x: hidden;">
    	<table class="table table-striped" style="margin-bottom: 50px;">
 			<thead>
   				<tr>
  					<th width="100">글번호</th>
  					<th width="500">제목</th>
  					<th width="100">조회수</th>
  					<th width="100">작성일</th>
				</tr>
 			</thead>
 		<tbody>   	
   			<tr>
      			<td>1</td>
      			<td><a class="table-a" href="#">공지사항ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</a></td>
      			<td>10</td>
			    <td>2020-01-01</td>
   			</tr>
		 </tbody> 
		</table>   
		<div style="margin-bottom: 96px;">
			<button type="button" class="btn noticeBtn" id="noticeBtn" onclick="location.href='#'">Write</button>
		</div>
		<div class="row mt-5" style="margin-bottom: 20px;">
			<div class="col text-center">
				<div class="block-27">
					<ul>
						<li><a href="#">&lt;</a></li>
						<li class="active"><span>1</span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
		<form class="searchForm">
			<select name="search">
				<option value="writer" selected="selected">&nbsp;작성자&nbsp;</option>
				<option value="subject">&nbsp;제목&nbsp;</option>
				<option value="content">&nbsp;내용&nbsp;</option>
			</select>	
			<input type="text" name="keyword">
			<button type="submit" class="btn noticeBtn">Search</button>
		</form>
	</div>	 	 	
</div>