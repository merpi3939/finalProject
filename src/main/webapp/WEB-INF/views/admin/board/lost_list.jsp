<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--CONTENT CONTAINER-->
<!--===================================================-->
<div id="content-container">
	
	<!--Page Title-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<div id="page-title">
		<h1 class="page-header text-overflow">공지사항 & QnA 게시판</h1>
	</div>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End page title-->


	<!--Breadcrumb-->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<ol class="breadcrumb">
		<li><a href="#">게시판 관리</a></li>
		<li class="active">공지사항 & QnA 게시판</li>
	</ol>
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<!--End breadcrumb-->




	<!--Page content-->
	<!--===================================================-->
	<div id="page-content">
		
		<div class="rows">
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">검색 방법</h3>
				</div>
				<div class="panel-body">
				<form action="" method="post">
					<table>
						<tr>
							<td>게시글 번호</td>
							<td><input type="text"></td>
							<td>작성자 아이디</td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>
								<select>
									<option>게시글 제목</option>
									<option>게시글 내용</option>
								</select>
							</td>
							<td colspan="3"><input type="text"></td>
							
						</tr>
						<tr>
							<td>게시글 등록일</td>
							<td><input type="text"></td>
							<td>~<td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>게시글 분류</td>
							<td>
								<input type="radio" name="divi" value="공지사항">공지사항&nbsp;&nbsp;
								<input type="radio" name="divi" value="QNA">QnA
							</td>
							<td>게시글 상태</td>
							<td>
								<select>
									<option>게시</option>
									<option>비밀글</option>
									<option>삭제</option>
								</select>
							</td>
						</tr>
					</table>
					<button type="submit">검색</button>
				</form>
				</div>
			</div>
			
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">게시글 리스트</h3>
				</div>
				<div class="panel-body">
					<table id="confirmedTable"
								   data-search="true"
								   data-show-refresh="true"
								   data-show-toggle="true"
								   data-show-columns="true"
								   data-sort-name="id"
								   data-page-list="[5, 10, 20]"
								   data-page-size="10"
								   data-pagination="true" data-show-pagination-switch="true">
						<tr>
							<th>글번호</th>
							<th>글제목</th>
							<th>글내용</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>답변여부</th>
						</tr>
						<tr>
							<td>글번호</td>
							<td>글제목</td>
							<td>글내용</td>
							<td>작성자</td>
							<td>조회수</td>
							<td>답변여부</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		
		
		
	</div>
	<!--===================================================-->
	<!--End page content-->


</div>
<!--===================================================-->
<!--END CONTENT CONTAINER-->