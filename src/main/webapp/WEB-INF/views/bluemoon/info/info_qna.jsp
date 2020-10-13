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
	
	<style type="text/css">
		
		.title-style {
			margin-top: 50px;
		}
		.user-btn {
			 border-radius: 0px;
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
		
		#noticeBtn {
			float: right;
		}
		
		.searchForm{
			text-align: center;
			margin-bottom: 50px;
		}
		
		.noticeBtn {
			line-height: 1.1;
			border-radius: 0px;
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
			<ul class="nav nav-tabs nav-justified navbar-nav">
				<li class="nav-item">
					<a class="nav-link active info-title">Infomation</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#">공지사항</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#">Q&A</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#">분실물 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link info-page" href="#">분실물 문의</a>
				</li>
			</ul>
		</div>
	</div>
	
	
	<div class="col-md-7 heading-section ftco-animate title-style">
            <h2><strong>Q&A</strong></h2>
    </div>
    <div class="table-responsive">
    	<table class="table table-striped" style="margin-bottom: 50px;">
 			<thead>
   				<tr>
  					<th width="100">글번호</th>
  					<th width="500">제목</th>
  					<th width="100">작성자</th>
  					<th width="100">작성일</th>
				</tr>
 			</thead>
 		<tbody>   	
   			<tr>
      			<td>1</td>
      			<td><a class="table-a" href="#">QNA</a></td>
			    <td>홍길동</td>
			    <td>2020-01-01</td>
   			</tr>
		 </tbody> 
		</table>   
		<div style="margin-bottom: 150px;">
			<button type="button" class="btn noticeBtn" id="noticeBtn" onclick="location.href=#">Write</button>
		</div>
		<form class="searchForm">
			<select name="search">
				<option value="subject">&nbsp;제목&nbsp;</option>
				<option value="content">&nbsp;내용&nbsp;</option>
			</select>	
			<input type="text" name="keyword">
			<button type="submit" class="btn noticeBtn">Search</button>
		</form>
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

  </script>
  </body>
</html>