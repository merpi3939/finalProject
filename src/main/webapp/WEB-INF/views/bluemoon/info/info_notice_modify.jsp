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



<div class="container">
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>공지사항 수정</strong></h2>
    </div>
	<div class="board-border">
	    <label for="title" class="cols-sm-2 control-label board-frame" style="margin-top: 50px;">제목</label>
	    <input type="text" autocomplete="off" class="form-control board-frame" name="title" id="title" value=""/>	 	 
	    <label for="content" class="cols-sm-2 control-label board-frame">내용</label>
	    <!-- <textarea class="form-control board-frame" rows="15"></textarea> -->
	    <textarea name="content" id="summernote" class="summernote"></textarea>
	    <!-- <div>
	    	<input type="file" class="img-input board-frame" id="img-input" accept="image/*">
	    </div> -->
	    <div class="write-div">
	    	<button type="submit" class="write-btn btn" id="write-btn" style="margin-bottom: 50px;">변경</button>	    
	    	<button type="submit" class="write-btn btn" id="list-btn" style="margin-bottom: 50px;">목록</button>	    
	    </div>
	</div>
</div>

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
