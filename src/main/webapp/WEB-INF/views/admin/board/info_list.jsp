<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--Bootstrap Tags Input [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"/> rel="stylesheet">


<!--Chosen [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/chosen/chosen.min.css"/> rel="stylesheet">


<!--noUiSlider [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/noUiSlider/jquery.nouislider.min.css"/> rel="stylesheet">
<link href=<c:url value="/admin/plugins/noUiSlider/jquery.nouislider.pips.min.css"/> rel="stylesheet">


<!--Bootstrap Timepicker [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/bootstrap-timepicker/bootstrap-timepicker.min.css"/> rel="stylesheet">


<!--Bootstrap Datepicker [ OPTIONAL ]-->
<link href=<c:url value="/admin/plugins/bootstrap-datepicker/bootstrap-datepicker.css"/> rel="stylesheet">

<style type="text/css">
#searchTable td{
	padding-left: 10px;
}

</style>

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
				<form action="" method="post" id="infoForm" name="infoForm" onsubmit= "return infoSubmit()">
					<table style="width: 90%;" id="searchTable">
						<tr>
							<td>게시글 번호</td>
							<td><input type="text" class="form-control" name="infoNo" value="0"></td>
							<td>작성자 이름</td>
							<td><input type="text" class="form-control" name="infoUserName"></td>
						</tr>
						<tr>
							<td>
								<select class="selectpicker pad-top" name="search">
									<option value="infoTitle">게시글 제목</option>
									<option value="infoContent">게시글 내용</option>
								</select>
							</td>
							<td colspan="3"><input type="text" class="form-control" name="keyword"></td>
							
						</tr>
						<tr>
							<td>게시글 등록일</td>
							<!-- 
							<td><input type="text" class="form-control"></td>
							<td>~<td>
							<td><input type="text" class="form-control"></td>
							-->
							<td colspan="3">
								<!--Bootstrap Datepicker : Range-->
								<!--===================================================-->
								<div id="demo-dp-range">
									<div class="input-daterange input-group" id="datepicker">
										<input type="date" class="form-control" name="start" id="start" placeholder="YYYY-MM-DD"/>
										<span class="input-group-addon">to</span>
										<input type="date" class="form-control" name="end" id="end" placeholder="YYYY-MM-DD"/>
									</div>
								</div>
								<!--===================================================-->
							</td>
						</tr>
						<tr>
							<td>게시글 분류</td>
							<td>
								<!-- 
								<input type="radio" name="divi" value="공지사항" class="form-control">공지사항&nbsp;&nbsp;
								<input type="radio" name="divi" value="QNA" class="form-control">QnA
								 -->
								<!--Radio buttons with label-->
								<!--===================================================-->
								<label class="form-radio form-normal active"><input type="radio" name="infoName" value="공지사항" checked>공지사항</label>
								<label class="form-radio form-normal"><input type="radio" name="infoName" value="QNA">QNA</label>
								<!--===================================================-->
					
							</td>
							<td>게시글 상태</td>
							<td>
								<select class="selectpicker pad-top" name="infoState" >
									<option value="1">게시</option>
									<option value="2">비밀글</option>
									<option value="4">삭제</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<div style="float: right;">
									<button type="submit" class="btn btn-default" >검색</button>
								</div>
							</td>
						</tr>
					</table>
				</form>
				</div>
			</div>
			
			<div class="panel">
				<div class="panel-heading">
					<h3 class="panel-title">게시글 리스트</h3>
				</div>
				<div class="panel-body">
					<table id="infoTable" class="table">
						<tr>
							<th><input type="checkbox" id="checkAll"></th>
							<th>글번호</th>
							<th>글제목</th>
							<th>글내용</th>
							<th>작성자</th>
							<!-- <th>조회수</th> -->
							<th>작성일자</th>
							<th>수정</th>
							<th>삭제</th>
							
						</tr>
						<c:forEach var="info" items="${infoList}">
							<tr>
								<td><input type="checkbox" id="check" name="infoNo" value="${info.infoNo }"></td>
								<td>${info.infoNo }</td>
								<td><a href="${pageContext.request.contextPath }/admin/info_detail?infoNo=${info.infoNo }" >${info.infoTitle }</a></td>
								<td>${info.infoContent }</td>
								<td>${info.infoUserName }</td>
								<!-- <td>${info.infoCount }</td> -->
								<td>${info.infoDate.substring(0,10) }</td>
								<td><button class="btn btn-info" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/info_modify?infoNo=${info.infoNo }';">수정</button></td>
								<td><button class="btn btn-danger" type="button" onclick="location.href='${pageContext.request.contextPath }/admin/info_delete?infoNo=${info.infoNo }';">삭제</button></td>
							</tr>
						
						</c:forEach>
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

<script type="text/javascript">
$(document).ready(function() {
	$("#checkAll").click(function() {
		if($("#checkAll").prop("checked")){
			$("#check").prop("checked",true);
		}else{
			$("#check").prop("checked",false);
		}
	});
	
});

function infoSubmit() {
	var start = infoForm.start.value;
	var end = infoForm.end.value;
	//alert(start);
	//infoForm.submit();
	var check=true;
	if(start!=null && start!=''&& end!=null && end!=''){
		var checkStart=Date.parse(start);
		var checkEnd=Date.parse(end);
		
	    if (isNaN(checkStart)==false && isNaN(checkEnd)==false) {
	        //var d=new Date(chkdate);
	        check= true;
	        //alert("성공");
	    } else {
	    	alert("게시글 등록일을 'YYYY-MM-DD' 양식에 맞게 입력해주세요.");
	    	infoForm.start.focus();
	    	check= false;
	        //alert("실패");
	    };
		
	}
	return check;
}

</script>