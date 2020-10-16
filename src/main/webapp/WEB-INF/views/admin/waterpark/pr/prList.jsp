<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
	
			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">
				
				<!--Page Title-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<div id="page-title">
					<h1 class="page-header text-overflow">BlueMoon WaterPark</h1>
				</div>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End page title-->


				<!--Breadcrumb-->
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Library</a></li>
					<li class="active">Data</li>
				</ol>
				<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
				<!--End breadcrumb-->

				<div id="page-content">
				<!--★★★★★★★★★★★★★★★★★★★★★★★★★★page content-->
				<!--===================================================-->
					
				<!-- Basic Data Tables -->
					<!--===================================================-->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">블루문 워터파크 예약&결제 정보입니다. </h3>
						</div>
						<div class="panel-body">
							<table id="demo-dt-selection" class="table table-striped table-bordered" cellspacing="0" width="100%">
								
								<thead>
									<tr>
										<th style="text-align: center; width: 70px;">예약번호</th>
										<th style="text-align: center; width: 70px;">회원번호<br>(아이디)</th>
										<th style="text-align: center; width: 80px;">이름</th>
										<th style="text-align: center; width: 110px;" class="min-tablet">전화번호</th>
										<th style="text-align: center; width: 80px;">이용날짜</th>
										<th style="text-align: center; width: 90px;">이용권명</th>
										<th  style="text-align: center ; width: 80px;" class="min-desktop" >대인/소인</th>
										<th style="text-align: center; width: 70px;">결제금액</th>
										<th style="text-align: center; width: 90px;">예약날짜</th>
										<th style="text-align: center; width: 100px;">결제방법<br>(카드/무통장)</th>
										<th style="text-align: center; width: 60px;">예약상태</th>
										<th style="text-align: center; width: 70px;" class="min-desktop">수정</th>
										<th style="text-align: center; width: 70px;" class="min-desktop">예약취소</th>
									</tr>
								</thead>
								<tbody>
									<tr id="prList_1"  class="aa" >
										<td style="text-align: center;">1</td>
										<td style="text-align: center;">1<br>(abc123)</td>
										<td style="text-align: center;">홍길동</td>
										<td id="prMemberPhone" style="text-align: center;">010-1111-1111</td>
										<td id="prUserDate" style="text-align: center;">2020-01-01</td>
										<td style="text-align: center;"><span id="prSeason">성수기</span> <br><span id="prTimeInOut">종일권실내</span></td>
										<td>대인: &nbsp;<span id="prAdultQty">4</span>명 <br>소인: &nbsp;<span id="prChildQty">2</span>명</td>
										<td id="prAmount" style="text-align: center; width: 60px;"><fmt:formatNumber value="200000"/></td>
										<td style="text-align: center;">2020-04-04</td>
										<td id="prPayment" style="text-align: center; width: 60px;">신용카드</td>
										<td id="prStatus" style="text-align: center; width: 60px;">정상</td>
										
										<td style="text-align: center;"><input type="button" id="modifyPRBtn" onclick="modifyPRBtn(1, $(this))" class="btn btn-mint" value="수정" data-status="off"></td>
										<td style="text-align: center;"><input type="button" id="cancelPRBtn" onclick="deletePRBtn()" class="btn btn-danger"  value="예약취소"></td>
									<!-- 	
										
										<td style="text-align: center;"><button type="button" id="modifyPRBtn" onclick="modifyPRBtn(1)" class="btn btn-mint">수정 </button> </td>
										<td style="text-align: center;"><button type="button" id="cancelPRBtn" onclick="deletePRBtn()" class="btn btn-danger">예약취소</button> </td> -->
									</tr>

								</tbody>
							</table>
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
		 
			var prMemberPhone=$("#prMemberPhone").text();
			var prUserDate=$("#prUserDate").text();
			var prSeason=$("#prSeason").text();
			var prAdultQty=$("#prAdultQty").text();
			var prChildQty=$("#prChildQty").text();
			var prTimeInOut=$("#prTimeInOut").text();
			var prPayment=$("#prPayment").text();
			var prStatus=$("#prStatus").text();
			
		//<수정>버튼을 누르면
		function modifyPRBtn(seq, mi) {
			if(mi.attr('data-status') == 'off') {
				
				$("#prMemberPhone").html("<input type='text' value='"+prMemberPhone+"' style='width: 110px;'>");
				$("#prUserDate").html("<input type='text' value='"+prUserDate+"' style='width: 80px;'>");
				$("#prSeason").html("<select><option>성수기</option><option>비수기</option></select>");
				$("#prTimeInOut").html("<select><option>종일권실내</option><option>종일권실외</option><option>야간권실내</option><option>야간권실외</option></select>");
				$("#prAdultQty").html("<input type='text' value='"+prAdultQty+"' style='width: 30px;'>"); 
				$("#prChildQty").html("<input type='text' value='"+prChildQty+"' style='width: 30px;'>"); 
				$("#prPayment").html("<select><option>신용카드</option><option>무통장입금</option></select>");
				$("#prStatus").html("<select><option>정상</option><option>취소</option></select>");
	
				$("#modifyPRBtn").attr('data-status', 'on');	
				$("#modifyPRBtn").attr("value", "수정완료");
				$("#modifyPRBtn").after("<button type='button' id='cancelBtn' class='btn btn-warning'>수정취소</button>");
				
			} else {
				$("#modifyPRBtn").attr('data-status', 'off');
				
			}			
		}

		

		//해당 row 의 [예약취소] 버튼 클릭시
		function deletePRBtn() {
			$(".prListClass").remove();
		}
		
	</script>