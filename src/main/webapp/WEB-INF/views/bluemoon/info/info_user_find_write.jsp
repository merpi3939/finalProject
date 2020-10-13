<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
  <head>
    <title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../css/animate.css">
    
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">

    <link rel="stylesheet" href="../css/aos.css">

    <link rel="stylesheet" href="../css/ionicons.min.css">

    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../css/icomoon.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
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
    		margin-top: 10px;
		}
		
		.board-border {
			margin-top: 8px;
			margin-bottom: 50px;
			border: 1px solid #dee2e6;
		}
		.img-input, .img-div {
			border: 1px solid #dee2e6;
		}
		
		.findTable {
			margin-top: 50px;
			border: 1px solid #ced4da;
		}
		.inputTd {
			width: 100%;
			border: 1px solid #ced4da;
		}
		.inputName{
			width: 8%;
    		padding-bottom: 2%;
    		padding-right: 0%;
    		border: 1px solid #ced4da;
		}
		
		.input {
			width: 100%;
			border: hidden;
		}
		
		.img-div {
			height: 97px;
			margin-top: 10px;
			margin-bottom: 10px;
		}
		.cancleIcon {
			cursor: pointer;
		}
		ul{
   			list-style:none;
   			text-align: center;
   			padding-inline-start: 0px;
   		}
	</style>
	
  </head>
<body>
  <!-- startnav -->  
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="../index.html"><img alt="Brand" src="../images/bluemoon/bluemoonlogo.png" style="width: 150px;"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a href="../index.html" class="nav-link">BlueMoonWaterPark</a></li>
          <li class="nav-item"><a href="../hotel.html" class="nav-link">BlueMoonHotels</a></li>
          <li class="nav-item"><a href="../contact.html" class="nav-link">Information</a></li>
          <li class="nav-item cta"><a href="../login.html" class="nav-link"><span>Login</span></a></li>
          <li class="nav-item cta"><a href="../contact.html" class="nav-link"><span>Logout</span></a></li>
          <li class="nav-item cta"><a href="../contact.html" class="nav-link"><span>Admin</span></a></li>
          <li class="nav-item"><a href="../contact.html" class="nav-link">Join</a></li>
          <li class="nav-item"><a href="../contact.html" class="nav-link">MyPage</a></li>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->

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
            <h2><strong>습득물 글쓰기</strong></h2>
   	</div>
	<div class="board-border">
		<table class="board-frame findTable">
			<tr>
				<td class="inputName">아이디</td>
				<td class="inputTd"><input type="text" class="input" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="inputName">이름</td>
				<td class="inputTd"><input type="text" class="input" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="inputName">연락처</td>
				<td class="inputTd"><input type="text" class="input" readonly="readonly"></td>
			</tr>
			<tr>
				<td class="inputName">분실장소</td>
				<td class="inputTd"><input type="text" class="input"></td>
			</tr>
			<tr>
				<td class="inputName">분실 물건명</td>
				<td class="inputTd"><input type="text" class="input"></td>
			</tr>
			<tr>
				<td class="inputName">물건 종류</td>
				<td class="inputTd">
					<select name="lostDivi" id="lostDivi" class="input" style="height: 50px;">
                    	<option value="선택" selected="selected">선택</option>
                        <option value="지갑">지갑</option>
                        <option value="신분증/면허증/여권/시즌권">신분증/면허증/여권/시즌권</option>
                        <option value="가방/배낭">가방/배낭</option>
                        <option value="쇼핑백/보따리/박스/짐">쇼핑백/보따리/박스/짐</option>
                        <option value="책/노트/수첩/파일류">책/노트/수첩/파일류</option>
                        <option value="휴대폰외 무선통신기기">휴대폰외 무선통신기기</option>
                        <option value="카메라/mp3/전자수첩">카메라/mp3/전자수첩</option>
                        <option value="기타 휴대용 전자제품">기타 휴대용 전자제품</option>
                        <option value="시계/반지/악세사리">시계/반지/악세사리</option>
                        <option value="옷/모자/안경/우산">옷/모자/안경/우산</option>
                        <option value="물건/기타">물건/기타</option>
                    </select>
				</td>
			</tr>
			<tr>
				<td class="inputName">분실 날짜</td>
				<td class="inputTd" ><input type="date" class="input" name="birthDay" id="birthDate"></td>
			</tr>
			<tr>
				<td class="inputName">내용</td>
				<td class="inputTd"><textarea class="form-control" rows="15"></textarea></td>
			</tr>
		</table>
	    <div class="board-frame img-div">
	    	<div id="preview" style="padding: 2px">
	    		<img id="img" style="width: 90px; height: 90px"/>
	    		<span class="cancleSpan"><i class="fas fa-times-circle cancleIcon"></i></span>
	    	</div>
	    </div>
	    <div>
	    	<input type="file" class="img-input board-frame" id="img-input" accept="image/*">
	    </div>
	    <div class="write-div">
	    	<button type="submit" class="write-btn btn" id="write-btn" style="margin-bottom: 50px;">글쓰기</button>	    
	    	<button type="submit" class="write-btn btn" id="list-btn" style="margin-bottom: 50px;">목록</button>	    
	    </div>
	</div>
</div>

	<!-- FootStart -->	
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
 
        <div class="row">
          <div class="col-md-12 text-center">
            <p>(주)소노호텔앤리조트    강원도 홍천군 서면 한치골길 262    대표이사 : 최주영   개인정보관리 책임자: 김태흥
				사업자등록번호 : 223-81-08341    통신판매업신고 : 2004-강원홍천-00008    통신판매사업자 정보
				CONTACT CENTER 1588-4888    운영시간 09:00 ~ 18:00 (연중무휴)    이메일 webmaster@daemyung.com</p>
          </div>
         </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    <!-- endFoot -->
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="../js/jquery.min.js"></script>
  <script src="../js/jquery-migrate-3.0.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/jquery.easing.1.3.js"></script>
  <script src="../js/jquery.waypoints.min.js"></script>
  <script src="../js/jquery.stellar.min.js"></script>
  <script src="../js/owl.carousel.min.js"></script>
  <script src="../js/jquery.magnific-popup.min.js"></script>
  <script src="../js/aos.js"></script>
  <script src="../js/jquery.animateNumber.min.js"></script>
  <script src="../js/bootstrap-datepicker.js"></script>
  <script src="../js/jquery.timepicker.min.js"></script>
  <script src="../js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="../js/google-map.js"></script>
  <script src="../js/main.js"></script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  <script type="text/javascript">
	 
  var sel_file;
	  
	  $(document).ready(function() {
		$("#img-input").on("change",handleImgFileSelect);
	  });
	  
	  function handleImgFileSelect(e) {
		var files=e.target.files;
		var filesArr=Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				$(".msg").css("display","block");
				return;
			}
			
			self_file=f;
			
			var reader=new FileReader();
			reader.onload=function(e) {
				$("#img").attr("src",e.target.result);
				$(".msg").css("display","none");
			}
			reader.readAsDataURL(f);
		});
	  }
	  $(".cancleIcon").click(function() {
	  	$("#img-input").val("");
	  	$("#img").removeAttr("src");
	  });
  
  </script>
   
  </body>
</html>