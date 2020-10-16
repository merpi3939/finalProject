<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	
	<!--■CONTENT CONTAINER-->
	<!--===================================================-->
	<div id="content-container">
		
		<!--■Page Title-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<div id="page-title">
			<h1 class="page-header text-overflow">BlueMoon Members</h1>
		</div>
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End page title-->
		
		
		<!--■Breadcrumb-->
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li><a href="#">Library</a></li>
			<li class="active">Data</li>
		</ol>
		<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
		<!--End breadcrumb-->
		
		<div id="page-content">
		<!--■page content-->
		<!--===================================================-->
		
		<!-- Basic Data Tables -->
		<!--===================================================-->
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">블루문 회원관리 게시판입니다.</h3>
				</div>
				
				<div class="panel-body">
					<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th style="text-align: center; width: 30px;"><input type="checkbox"></th>
								<th style="text-align: center; width: 70px;">회원번호</th>
								<th style="text-align: center; width: 80px;">ID</th>
								<th style="text-align: center; width: 80px;">이름</th>
								<th style="text-align: center; width: 110px;" class="min-tablet">휴대전화 번호</th>
								<th style="text-align: center; width: 80px;">생년월일</th>
								<th style="text-align: center; width: 170px;">이메일</th>
								<th style="text-align: center; width: 70px;">포인트</th>
								<th  style="text-align: center ; width: 80px;" class="min-desktop" >가입날짜</th>
								<th style="text-align: center; width: 60px;">회원상태</th>
								<th style="text-align: center;" class="min-desktop">수정</th>
								<th style="text-align: center;" class="min-desktop">탈퇴</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="text-align: center;"><input type="checkbox"> </td>
								<td style="text-align: center;">10000</td>
								<td style="text-align: center;">abc123</td>
								<td style="text-align: center;">홍길동</td>
								<td style="text-align: center;">010-1111-1111</td>
								<td style="text-align: center;">2011/04/25</td>
								<td style="text-align: center;">abcjakjsdfasdf@email.com</td>
								<td style="text-align: center;">1,000,000</td>
								<td style="text-align: center;">2011/04/25</td>
								<td style="text-align: center; width: 60px;">가입</td>
								<td style="text-align: center;"><button id="modifyMemberBtn" class="btn btn-mint">수정</button></td>
								<td style="text-align: center;"><button id="deleteMemberBtn" class="btn btn-danger">탈퇴</button></td>
							</tr>
						</tbody>
					</table>
			
					<div>
						<button class="btn btn-danger" type="button" data-toggle="modal" data-target="#memberModal">선택탈퇴</button>
						<button id="joinMember" class="btn btn-primary">회원등록</button>
						<button class="btn btn-success" 	style="background: rgb(8,106,48);">회원 액셀다운로드</button>
						<button class="btn btn-success" style="background: rgb(24,74,120);">회원 액셀업로드</button>
			
						<!-- <<선택 삭제 Modal> -->
						<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						 	<div class="modal-dialog" role="document">
								<div class="modal-content">
									    
									<div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">게시물 삭제</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
							       </div>
										      
									<div class="modal-body">
										선택하신 항목을 삭제하시겠습니까?
									</div>
										      
								    <div class="modal-footer">
								     	<button type="button" id="allMemberDelete" class="btn btn-danger">삭제하기</button>
								       	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
								     </div>
							    </div>
						  </div>
						</div>
					</div>
				</div>
			</div>
		<!--===================================================-->
		<!-- End Striped Table -->
		
		<!--===================================================-->
		<!--End page content-->
		</div>
	</div>
	<!--===================================================-->
	<!--END CONTENT CONTAINER-->
	
	<script type="text/javascript">
	//해당 row 의 [수정] 버튼 클릭시
	$("#modifyMemberBtn").click(function() {
		alert("asdf");;
	});
	
	//해당 row 의 [삭제] 버튼 클릭시
	$("#deleteMemberBtn").click(function() {
		alert("asdf");;
	});
	
	//제일 하단 [선택삭제] 버튼 클릭시
	$("#allMemberDelete").click(function() {
		alert("asdf");
	});
	
	//제일 하단 [회원등록] 버튼 클릭시
	$("#joinMember").click(function() {
		$(location).attr('href','memberInsert.jsp');
	});
	
	</script>