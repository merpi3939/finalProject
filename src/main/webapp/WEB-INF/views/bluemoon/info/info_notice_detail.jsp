<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<style type="text/css">
		
		.title-style {
			margin-top: 50px;
		}
		.write-btn {
			 border-radius: 0px;
			 width: 70px;
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
		
		.board-frame, .note-frame {
			width: 90%;
   			margin: 0 auto;
    		display: block;
    		
		}
		
		.write-div {
			text-align: right;
    		margin-right: 5%;
    		margin-top: 10px
		}
		
		.board-border {
			margin-top: 8px;
			margin-bottom: 50px;
			border: 1px solid #dee2e6;
		}
		.img-input {
			border: 1px solid #dee2e6;
		}
		ul{
   			list-style:none;
   			text-align: center;
   			padding-inline-start: 0px;
   		}
	</style>
	
  </head>
<body>
<div class="container">

	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>공지사항</strong></h2>
    </div>
	<div class="board-border">
	    <label for="title" class="cols-sm-2 control-label board-frame" style="margin-top: 50px;">제목</label>
	    <input type="text" autocomplete="off" class="form-control board-frame" name="title" id="title" readonly="readonly" value=""/> 	 
	    <label for="content" class="cols-sm-2 control-label board-frame">내용</label>
	    <textarea class="form-control board-frame" rows="15" readonly="readonly">
	    
	    </textarea>
	   
	    <!-- <div>
	    	<input type="file" class="img-input board-frame" id="img-input" accept="image/*">
	    </div> -->
	    <div class="write-div">
	    	<button type="submit" class="write-btn btn" id="modify-btn" style="margin-bottom: 50px;">수정</button>	    
	    	<button type="submit" class="write-btn btn" id="delete-btn" style="margin-bottom: 50px;">삭제</button>	    
	    	<button type="submit" class="write-btn btn" id="list-btn" style="margin-bottom: 50px;">목록</button>	    
	    </div>
	</div>
</div>


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
  
  <script type="text/javascript">
	  $(document).ready(function() {
		  $('#summernote').summernote({
				 height: 500,                 
	             minHeight: null,             
	             maxHeight: null,             
	             focus: true  
		  });
		});
  </script>
 