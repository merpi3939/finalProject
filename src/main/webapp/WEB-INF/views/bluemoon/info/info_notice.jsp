<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<link rel="stylesheet" href=<c:url value="bluemoon/css/board.css"/>>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>
</head>
<body>
<div class="container noticeCon">	
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>공지사항</strong></h2>
    </div>
    <div class="table-responsive" style="overflow-x: hidden;">
    	<div id="noticeListDiv">   	
		</div>  
		<div style="margin-bottom: 96px;">
			<button type="button" class="btn noticeBtn" id="noticeWriter">Write</button>
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
		<div class="searchForm">
			<select name="search">
				<option value="writer" selected="selected">&nbsp;작성자&nbsp;</option>
				<option value="subject">&nbsp;제목&nbsp;</option>
				<option value="content">&nbsp;내용&nbsp;</option>
			</select>	
			<input type="text" name="keyword">
			<button type="button" class="btn noticeBtn">Search</button>
		</div>
	</div>	 	 	
</div>

<!-- 글쓰기 -->
<div class="container writeCon">
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>공지사항 글쓰기</strong></h2>
    </div>
	<div class="board-border">
		<input id="infoUserId" type="hidden" value="${userInfo.userId }">
		<input id="infoUserName" type="hidden" value="${userInfo.userName }">
	    <label for="title" class="cols-sm-2 control-label board-frame" style="margin-top: 50px;">제목</label>
	    <span class="titleMsg msg board-frame" style="color: red"></span>
	    <input type="text" autocomplete="off" class="form-control board-frame add" name="title" id="title" value=""/>	 	 
	    <label for="content" class="cols-sm-2 control-label board-frame">내용</label>
	    <span class="contentMsg msg board-frame" style="color: red"></span>
	    <!-- <textarea class="form-control board-frame" rows="15"></textarea> -->
	    <textarea name="summernote" id="summernote" class="summernote add"></textarea>
	    <!-- <div>
	    	<input type="file" class="img-input board-frame" id="img-input" accept="image/*">
	    </div> -->
	    <div class="write-div">
	    	<button type="button" class="write-btn btn" id="write-btn" style="margin-bottom: 50px;">글쓰기</button>	    
	    	<button type="button" class="write-btn btn" id="list-btn" style="margin-bottom: 50px;">목록</button>	    
	    </div>
	</div>
</div>
<script id="template" type="text/x-handlebars-template">
	<table class="table table-striped" style="margin-bottom: 50px;">
 			<thead>
   				<tr>
  					<th width="100">글번호</th>
  					<th width="500">제목</th>
  					<th width="100">조회수</th>
  					<th width="100">작성일</th>
				</tr>
 			</thead>
		{{#each .}}
 		<tbody>   	
   			<tr>
      			<td>{{noticeNo infoNo}}</td>
      			<td><a class="table-a" href="#">{{infoTitle}}</a></td>
      			<td>{{infoCount}}</td>
			    <td>{{infoDate}}</td>
   			</tr>
		 </tbody>
		{{/each}}
	</table>   
</script>
<script type="text/javascript">
var page=1;
boardDisplay(page);
/* +"&search="+search+"&keyword="+keyword */
function boardDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type: "GET",
		url: "listNotice?pageNum="+pageNum,
		dataType: "json",
		success: function(json) {
			if(json.noticeBoardList.length==0) {
				$("#noticeListDiv").html("검색된 게시글이 존재하지 않습니다.");
				return;
			}
			var no=json.pager.no;
			var source=$("#template").html();
			var template=Handlebars.compile(source);
			
			$("#noticeListDiv").html(template(json.noticeBoardList));
			
			
			Handlebars.registerHelper('noticeNo', function (infoNo) {
				  return infoNo+"야";
			});
				  
			
			/* pageDisplay(json.pager); */
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}

function pageDisplay(pager) {
	var html="<ul>";
	
	for(var i=pager.startPage; i<=pager.endPage; i++) {
		
	}
	
}

$(document).ready(function() {
	$('#summernote').summernote({
		height: 500,                 
		minHeight: null,             
		maxHeight: null,             
		focus: true,
		popover: {
			image: [],
			link: [],
			air: []
		}
	});
});

$("#noticeWriter").click(function() {
	$(".noticeCon").hide();
	$(".writeCon").show();
	$("#title").focus();
});
$("#list-btn").click(function() {
	$(".noticeCon").show();
	$(".writeCon").hide();
});

$("#write-btn").click(function() {
	$(".msg").text("");
	var id=$("#infoUserId").val();	
	var name=$("#infoUserName").val();	
	var title=$("#title").val();	
	var content=$("#summernote").val();
	
	if(title=="") {
		$(".titleMsg").text("제목을 입력해주세요.");
		$("#title").focus();
		return;
	}
	if(content=="") {
		$(".contentMsg").text("내용을 입력해주세요.");
		$("#summernote").focus();
		return;
	}
	
	$.ajax({
		type: "post",
		url: "addNotice",
		headers: {"content-type":"application/json"},
		data: JSON.stringify({"infoUserId":id, "infoUserName":name, "infoTitle":title, "infoContent":content}),
		dataType: "text",
		success: function(text) {
			if(text=="ok") {
				$(".add").val("");
				$(".noticeCon").show();
				$(".writeCon").hide();
			}
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
});
</script>
</body>