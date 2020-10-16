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
				<<div class="panel-heading">
							<h3 class="panel-title">블루문 워터파크 현장소식 게시판입니다.</h3>
						</div>
						<div class="panel-body">
							<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
								
								<thead>
									<tr>
										<th style="text-align: center; width: 30px;"><input type="checkbox"></th>
										<th style="text-align: center; width: 40px;">글번호</th>
										<th style="text-align: center; width: 80px;">작성자</th>
										<th style="text-align: center; width: 80px;">작성일자</th>
										<th style="text-align: center; width: 100px;">제목</th>
										<th style="text-align: center; width: 700px;" class="min-tablet">내용</th>
										<th style="text-align: center;" class="min-desktop">수정</th>
										<th style="text-align: center;" class="min-desktop">삭제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="text-align: center;"><input type="checkbox"> </td>
										<td style="text-align: center;">10000</td>
										<td style="text-align: center;">홍길동(abc123)</td>
										<td style="text-align: center;">2011/04/25</td>
										<td style="width: 150px;">※ 오션월드 클린데이 운영안내</td>
										<td style="width: 600px;">
												오션월드는 직원과 이용객의 안전을 위해
												8/31부터 매주 수요일, 목요일 2일간 휴장을 실시하여
												전 구역 방역을 시행합니다</td>
										<td style="text-align: center;"><button class="btn btn-mint">수정</button></td>
										<td style="text-align: center;"><button class="btn btn-danger">삭제</button></td>
									</tr>
									<tr>
										<td style="text-align: center;"><input type="checkbox"> </td>
										<td style="text-align: center;">10000</td>
										<td style="text-align: center;">홍길동(abc123)</td>
										<td style="text-align: center;">2011/04/25</td>
										<td style="text-align: center;">2011/04/25</td>
										<td style="text-align: center; width: 60px;">탈퇴</td>
										<td style="text-align: center;"><button class="btn btn-mint">수정</button></td>
										<td style="text-align: center;"><button class="btn btn-danger">삭제</button></td>
									</tr>
									<tr>
										<td style="text-align: center;"><input type="checkbox"> </td>
										<td style="text-align: center;">10000</td>
										<td style="text-align: center;">홍길동(abc123)</td>
										<td style="text-align: center;">2011/04/25</td>
										<td style="text-align: center;">2011/04/25</td>
										<td style="text-align: center; width: 60px;">탈퇴</td>
										<td style="text-align: center;"><button class="btn btn-mint">수정</button></td>
										<td style="text-align: center;"><button class="btn btn-danger">삭제</button></td>
									</tr>
								</tbody>
							</table>
							
							<div>
								<button class="btn btn-danger" type="button" data-toggle="modal" data-target="#newsModal">선택삭제</button>
								<button class="btn btn-primary">소식등록</button>
								
									<!-- <<선택 삭제 Modal> -->
									<div class="modal fade" id="newsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
									      	<button type="button" class="btn btn-danger">삭제하기</button>
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
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★End page content-->
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