<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<link rel="stylesheet" href=<c:url value="bluemoon/css/board.css"/>>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>
<style type="text/css">
.writeCon, .viewCon {
	display: none;
}
.table {
	border-bottom: 1px solid #dee2e6;
}

@media screen and (max-width:768px) {
	.write-btn {
		width: 31%;
	}
	.mobile {
		display: none;
	}
	.mobileTitle {
		width:134px;
	}
	.view_reply dl{
		position: inherit !important;
	}
	.text_writer {
    	position: inherit !important;
	}
}

.divi{
	margin-top: 50px;
	font-size: 20px;
	border: 1px solid #dee2e6;
}
.reply {
	border: 1px solid #dee2e6;
	height: 250px;
}
.form-control:focus, .form-control:active {
    border-color: #dee2e6;
}
.replyWrite {
    padding: 5px;
    z-index: 100;
    display: none;
}
.view_reply dl{
	position: relative;
    padding: 5px 20px 20px 20px;
}
.text_writer {
    position: absolute;
    top: 5px;
    right: 20px;
    color: #777;
}
.replyText {
	margin: 13px;
}
.reply-write {
	display:none;
	text-align: right;
}
.replyRemoveBtn{
	cursor: pointer;
	background-color: lightgray;
}
</style>
</head>
<body>
<!-- 게시판목록 -->
<div class="container noticeCon">	
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>Q&A</strong></h2>
    </div>
    <input id="checkSecretUser" hidden="hidden" value="${userInfo.userId }">
    <input id="checkStateUser" hidden="hidden" value="${userInfo.userState }">
    <div class="table-responsive" style="overflow-x: hidden;">
    		<table class="table" style="margin-bottom: 50px;">
 			<thead>
   				<tr>
  					<th class="mobile" width="100">글번호</th>
  					<th class="mobile" width="100">질문유형</th>
  					<th class="mobileTitle" width="500">제목</th>
  					<th width="100">작성자</th>
  					<th width="100">작성일</th>
				</tr>
 			</thead>
    	<tbody id="noticeListDiv">   	
 			 		
		</tbody>  
		</table>
		<div id="noselcet" style="text-align: center;"></div>   
		<c:if test="${userInfo!=null }">
		<div style="margin-bottom: 96px;">
			<button type="button" class="btn noticeBtn" id="noticeWriter">글쓰기</button>
		</div>
		</c:if>
		<c:if test="${userInfo==null }">
		<div style="margin-bottom: 96px; text-align: right;">
			<span>로그인 후 글 작성 이용 가능 하십니다.</span>
		</div>
		</c:if>
		<div class="row mt-5" style="margin-bottom: 20px;">
			<div class="col text-center">
				<div class="block-27" id="pageing">
					
				</div>
			</div>
		</div>
		<div class="searchForm">
			<select name="search" id="search">
				<option value="info_Title" selected="selected">&nbsp;제목&nbsp;</option>
				<option value="info_Content">&nbsp;내용&nbsp;</option>
			</select>	
			<input type="text" name="keyword" id="keyword">
			<button type="button" class="btn noticeBtn" onclick="boardDisplay(1);">검색</button>
			<button type="button" class="btn noticeBtn" onclick="alllist();">전체목록</button>
		</div>
	</div>	 	 	
</div>

<!-- 글쓰기 -->
<div class="container writeCon">
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>Q&A 글쓰기</strong></h2>
    </div>
	<div class="board-border">
		<input id="infoUserName" type="hidden" value="${userInfo.userName }">
		<label for="title" class="cols-sm-2 control-label board-frame" style="margin-top: 50px;">질문유형</label>
	    <select class="board-frame qnaList" id="infoDivi">
	    	<option value="워터파크 관련" selected="selected">워터파크 관련</option>
			<option value="호텔 관련">호텔 관련</option>
			<option value="예약 관련">예약 관련</option>
			<option value="홈페이지 관련">홈페이지 관련</option>
			<option value="기타">기타</option>
	    </select>
	    <label for="title" class="cols-sm-2 control-label board-frame" style="margin-top: 20px;">제목</label>
	    <span class="titleMsg msg board-frame" style="color: red"></span>
	    <input type="text" autocomplete="off" class="form-control board-frame add" name="infoTitle" id="title"/>	 	 
	    <label for="content" class="cols-sm-2 control-label board-frame">내용</label>
	    <span class="contentMsg msg board-frame" style="color: red"></span>
	    <textarea class="form-control board-frame add" id="content" name="infoContent" rows="15"></textarea>
	    <!-- <div>
	    	<input type="file" class="img-input board-frame" id="img-input" accept="image/*">
	    </div> -->
	    <div class="write-div">
	    <div style="margin-right: 158px;">
	    	<input type="checkbox" name="check" id="check"><span>비밀글</span>
	    </div>
	    	<button type="button" class="write-btn btn" id="write-btn" style="margin-bottom: 50px;">글쓰기</button>
	    	<button type="button" class="write-btn btn" id="list-btn" style="margin-bottom: 50px;">목록</button>	    
	    </div>
	</div>
</div>
<!-- 글수정 및 보기 -->
<div class="container viewCon">
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>Q&A</strong></h2>
    </div>
	<div class="board-border">
		<input type="hidden" name="infoNo" id="viewNum">
		<label for="title" class="cols-sm-2 control-label board-frame" style="margin-top: 50px;">질문유형</label>
		<label for="title" id="diviTitle" class="cols-sm-2 control-label board-frame divi" style="margin-top: 1px;"></label>
		<select class="board-frame qnaList" id="infoDiviView" style="display: none">
	    	<option value="워터파크 관련" selected="selected">워터파크 관련</option>
			<option value="호텔 관련">호텔 관련</option>
			<option value="예약 관련">예약 관련</option>
			<option value="홈페이지 관련">홈페이지 관련</option>
			<option value="기타">기타</option>
	    </select>
	    <label for="title" class="cols-sm-2 control-label board-frame" style="margin-top: 20px; font-size: ">제목</label>
	    <span class="titleMsg msg board-frame" style="color: red"></span>
	    <input type="text" autocomplete="off" class="form-control board-frame view" name="title" id="titleView" readonly="readonly"/>	 	 
	    <label for="content" class="cols-sm-2 control-label board-frame">내용</label>
	    <span class="contentMsg msg board-frame" style="color: red"></span>
	    <textarea name="infoContent" id="contentView" class="form-control board-frame view" rows="15" readonly="readonly"></textarea>
	    <!-- <div>
	    	<input type="file" class="img-input board-frame" id="img-input-view" accept="image/*" style="display: none;">
	    </div> -->
	    <div class="write-div" id="userCheckBtn">
	    </div>
	    <div class="reply-write board-frame">
	    	<textarea id="reply-Text-form" style="width: 100%;"></textarea>
	    <div>
	    	<button type='button' class='write-btn btn' id='replywrite-btn' onclick='replyAdd()' style='margin-bottom: 50px; margin-left: 6px;'>작성</button>;
	    </div>
	    </div>
	    
		<div class="view_reply board-frame"><!-- view_reply -->
		
		</div>
	</div>
</div>
<script type="text/javascript">
var page=1;
boardDisplay(page);
function boardDisplay(pageNum) {
	var search=$("#search").val();
	var keyword=$("#keyword").val();
	var checkSecretUser=$("#checkSecretUser").val();
	var admin=$("#checkStateUser").val();
	page=pageNum;
	$.ajax({
		type: "GET",
		url: "listQna?pageNum="+pageNum+"&search="+search+"&keyword="+keyword,
		dataType: "json",
		success: function(json) {
			if(json.noticeBoardList.length==0) {
				$("#noticeListDiv").html("");
				$("#noselcet").html("검색된 게시글이 존재하지 않습니다.");
				$("#keyword").val("");
				pageDisplay(json.pager);
				return;
			} 
			$("#noselcet").html("");
			var leng=json.noticeBoardList.length;
			var num=json.pager.no;
			var html="";
			for(var i=0; i<=leng-1; i++) {
				var no=Number(num)-Number(i);
				html+="<tr>";
				html+="<td class='mobile'>"+no+"</td>";
				html+="<td class='mobile'>"+json.noticeBoardList[i].infoDivi+"</td>";
				if(json.noticeBoardList[i].infoState==1 || admin=='9'){
					html+="<td><a class=table-a href='javascript:viewDisplay("+json.noticeBoardList[i].infoNo+");'>"+json.noticeBoardList[i].infoTitle+"</a></td>";
				} else if(checkSecretUser==json.noticeBoardList[i].infoUserId) {
					html+="<td><a class=table-a href='javascript:viewDisplay("+json.noticeBoardList[i].infoNo+");'>"+json.noticeBoardList[i].infoTitle+"</a></td>";
				} else {
					html+="<td><a class=table-a>작성자 본인만 확인 가능 한 글입니다.</a></td>";
				}
				html+="<td>"+json.noticeBoardList[i].infoUserName+"</td>";
				html+="<td>"+json.noticeBoardList[i].infoDate+"</td>";		
				html+="</tr>";
	
			}
			$("#noticeListDiv").html(html);
			pageDisplay(json.pager);
			
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}

function pageDisplay(pager) {
	var html="<ul>";
	
	if(pager.startPage>pager.blockSize) {
		html+="<li><a href='javascript:boardDisplay("+pager.prevPage+")'>&&lt</a></li>";
	} else {
		html+="<li><a>&lt;</a></li>";
	}
	
	for(var i=pager.startPage; i<=pager.endPage; i++) {
		if(pager.pageNum!=i) {
			html+="<li><a href='javascript:boardDisplay("+i+")'>"+i+"</a></li>"
		} else {
			html+="<li><a>"+i+"</a></li>";
		}
	}
	if(pager.endPage!=pager.totalPage) {
		html+="<li><a href='javascript:boardDisplay("+pager.nextPage+")'>&gt;</a></li>";
	} else {
		html+="<li><a>&gt;</a></li>";
	}
	
	html+="</ul>"
	$("#pageing").html(html);
}
function alllist() {
	$("#keyword").val("");
	boardDisplay(1);
}

function viewDisplay(num) {
	$(".viewCon").show();
	$(".noticeCon").hide();
	$(".view").val("");
	var checkUser=$("#checkSecretUser").val();
	var admin=$("#checkStateUser").val();
	var html="";
	var htmlReply="";
	$.ajax({
		type: "GET",
		url: "viewQna/"+num,
		dataType: "json",
		success: function(json) {
			$("#viewNum").val(json.qna.infoNo);
			$("#titleView").val(json.qna.infoTitle);
			$("#contentView").val(json.qna.infoContent);
			$("#diviTitle").text(json.qna.infoDivi);
			 if(checkUser==json.qna.infoUserId) {
				html+="<button type='button' class='write-btn btn' id='updateView-btn' onclick='updateViewNotice();' style='margin-bottom: 50px; margin-left: 6px;'>수정</button>";
				html+="<button type='button' class='write-btn btn' id='remove-btn' onclick='removeNotice();' style='margin-bottom: 50px; margin-left: 6px;'>삭제하기</button>";
				html+="<button type='button' class='write-btn btn' id='update-btn' onclick='updateNotice();' style='margin-bottom: 50px; margin-left: 6px; display: none;'>수정하기</button>";
				html+="<button type='button' class='write-btn btn' id='list-btn2' onclick='listView()' style='margin-left: 6px; margin-bottom: 50px;'>목록</button>";
		    	
			} else if(admin=='9') {
				html="";
				html+="<button type='button' class='write-btn btn' id='reply-write-viewbtn' onclick='replyWrite();' style='margin-bottom: 50px; margin-left: 6px;'>리플작성</button>";
				html+="<button type='button' class='write-btn btn' id='updateView-btn' onclick='updateViewNotice();' style='margin-bottom: 50px; margin-left: 6px;'>수정</button>";
				html+="<button type='button' class='write-btn btn' id='remove-btn' onclick='removeNotice();' style='margin-bottom: 50px; margin-left: 6px;'>삭제하기</button>";
				html+="<button type='button' class='write-btn btn' id='update-btn' onclick='updateNotice();' style='margin-bottom: 50px; margin-left: 6px; display: none;'>수정하기</button>";
				html+="<button type='button' class='write-btn btn' id='list-btn2' onclick='listView()' style='margin-left: 6px; margin-bottom: 50px;'>목록</button>";							
			} else {
				html+="<button type='button' class='write-btn btn' id='list-btn2' onclick='listView()' style='margin-bottom: 50px;'>목록</button>";				
			}
		
			$("#userCheckBtn").html(html);
			if(json.qnaReply.length==0) {
				htmlReply="";
			} 
			for(var i=0; i<=json.qnaReply.length-1; i++) {
				htmlReply+="<dl>"
				htmlReply+="<dt style='border-bottom: 1px solid'>Re:안녕하세요 블루문 입니다.</dt>"
				htmlReply+="<dd class='text_writer'>관리자 <span>"+json.qnaReply[i].qnaRpDate+"</span></dd>"
				htmlReply+="<p>"
				htmlReply+=json.qnaReply[i].qnaRpCont
				htmlReply+="</p>"
				htmlReply+="</dd>"
				htmlReply+="<div style='text-align: right;'>"
				htmlReply+="<c:if test='${userInfo.userState==9 }'>";
				htmlReply+="<span class='replyRemoveBtn' style='text-align: right' onclick='removeReply("+json.qnaReply[i].qnaQpNo+")'>삭제</span>";
				htmlReply+="</c:if>";
				htmlReply+="</div>"
				htmlReply+="</dl>"
			} 
			$(".view_reply").html(htmlReply);
			
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}
function replyWrite() {
	$(".reply-write").show(300);
	$("#reply-Text-form").val("");
}

function replyAdd() {
	var replyText=$("#reply-Text-form").val();
	var num=$("#viewNum").val();
	if(replyText==""){
		alert("리플을 입력해주세요");
		return;
	}
	
	$.ajax({
		type: "post",
		url: "addQnaReply",
		headers: {"content-type":"application/json"},
		data: JSON.stringify({"qnaBdNo":num, "qnaRpCont":replyText}),
		dataType: "text",
		success: function(text) {
			if(text=="ok") {
				$(".reply-write").hide(300);
				viewDisplay(num);
				
			}
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
}

function removeReply(num) {
	var viewNum=$("#viewNum").val();
	
		$.ajax({
			type: "DELETE",
			url: "qnaReplyRemove/"+num,
			headers: {"X-HTTP-Method-override":"DELETE"},
			dataType: "text",
			success: function(text) {
				if(text=="ok") {
					viewDisplay(viewNum);
				}
			}, 
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
	
}


function updateViewNotice() {
	$(".msg").text("");
	$("#titleView").attr("readonly",false);
	$("#contentView").attr("readonly",false);
	$("#titleView").focus();
	$("#updateView-btn").hide();
	$("#remove-btn").hide();
	$("#img-input-view").show();
	$("#update-btn").show();
	$("#infoDiviView").show();
	$("#diviTitle").hide();
	var divititle=$("#diviTitle").text();
	$("#infoDiviView").val(divititle).prop("selected",true);

}

function updateCancleNotice() {
	$(".msg").text("");
	$("#titleView").attr("readonly",true);
	$("#contentView").attr("readonly",true);
	$("#updateView-btn").show();
	$("#update-btn").hide();
	$("#img-input-view").hide();
	$("#remove-btn").show();
	$("#infoDiviView").hide();
	$("#diviTitle").show();
	$("#diviTitle").text($("#infoDiviView").val());
}

function updateNotice() {
	var num=$("#viewNum").val();
	var divi=$("#infoDiviView").val();
	var title=$("#titleView").val();
	var content=$("#contentView").val();
	
	if(title=="") {
		$(".titleMsg").text("제목을 입력해주세요.");
		$("#titleView").focus();
		return;
	}
	if(content=="") {
		$(".contentMsg").text("내용을 입력해주세요.");
		$("#contentView").focus();
		return;
	}
	if(confirm("게시글을 수정 하겠습니까?")) {
		$.ajax({
			type: "PUT",
			url: "modifyQna",
			headers: {"content-type":"application/json","X-HTTP-Method-override":"PUT"},
			data: JSON.stringify({"infoNo":num,"infoTitle":title, "infoContent":content, "infoDivi":divi}),
			dataType: "text",
			success: function(text) {
				if(text=="ok") {
					updateCancleNotice();
					boardDisplay(page);
				}
			}, 
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
	}
}

function removeNotice() {
	if(confirm("게시글을 삭제 하겠습니까?")) {	
		var num=$("#viewNum").val();
		$.ajax({
			type: "PUT",
			url: "removeQna",
			headers: {"content-type":"application/json","X-HTTP-Method-override":"PUT"},
			data: JSON.stringify({"infoNo":num}),
			dataType: "text",
			success: function(text) {
				if(text=="ok") {
					boardDisplay(page);
					$(".viewCon").hide();
					$(".noticeCon").show();
				}
			}, 
			error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
		});
	}
}

$("#write-btn").click(function() {
	$(".msg").text("");
	var id=$("#checkSecretUser").val();	
	var name=$("#infoUserName").val();
	var divi=$("#infoDivi").val();	
	var title=$("#title").val();	
	var content=$("#content").val();
	var state=1;
	
	var check=$("#check").is(":checked");
	if(check==true) {
		state=2;
	} 
	
	if(title=="") {
		$(".titleMsg").text("제목을 입력해주세요.");
		$("#title").focus();
		return;
	}
	if(content=="") {
		$(".contentMsg").text("내용을 입력해주세요.");
		$("#noticeAdd").focus();
		return;
	}
	
	$.ajax({
		type: "post",
		url: "addQna",
		headers: {"content-type":"application/json"},
		data: JSON.stringify({"infoUserId":id, "infoUserName":name, "infoTitle":title, "infoContent":content, "infoDivi":divi, "infoState":state}),
		dataType: "text",
		success: function(text) {
			if(text=="ok") {
				$(".writeCon").hide();
				$(".noticeCon").show();
				boardDisplay(1);
			}
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
});

$("#noticeWriter").click(function() {
	$(".add").val("");
	$(".noticeCon").hide();
	$(".writeCon").show();
	$("#title").focus();
});
$("#list-btn").click(function() {
	$(".noticeCon").show();
	$(".writeCon").hide();
});

function listView() {
	$(".noticeCon").show();
	$(".viewCon").hide();
	updateCancleNotice();
	boardDisplay(1);
}


</script>
</body>