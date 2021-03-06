<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <head>
  <style type="text/css">
    .top-bar ul {
   list-style-type: none;
    margin: 0;
    padding-left: 30%;
    overflow: hidden;
}

.top-bar li {
    float: left;
}

.top-bar li a, .dropbtn {
      display: inline-block;
    color: black;
    text-align: center;
    padding: 20px 22px;
    text-decoration: none;
    padding-right: 100px;
    font-weight: bolder;
    font-size: 20px;
}

.top-bar li a:hover, .dropdown:hover .dropbtn {
	color: red;
}
.event{
text-align: center;
font-size: 40px;
margin-top: 30px;
}

  </style>
  </head>

    <div class="top-bar"style="border-bottom: 1px solid #E2E2E2; ">
 <ul>
  <li style="font-weight: bold; padding-right: 30px;"><a>HOTELCATEGORY</a></li>
  <li><a href=<c:url value="hotel"/>>ROOMS</a></li>
  <li><a href=<c:url value="hotel_event"/>>EVENT</a></li>
  <li><a href=<c:url value="hotel_service"/>>CONVENIENCE</a></li>
</ul>
</div>

<h3 class="event">Hotel Event</h3>
    <section class="ftco-section ftco-degree-bg">
      <div class="container" style="max-width: initial; margin-left: 13%; margin-right: 10%;">
          <div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<img  src=<c:url value="bluemoon/images/hotel_img/event.jpg"/> style="width: 100%;"><div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">호텔 조식 패키지</a></h3>
				    						<br>
				    						<p>종료된 이벤트 입니다. </p>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><br><small></small></span>
		    							</div>
		    						</div>
		    						<p>현장 결제시 조식 50% 할인 이벤트 </p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		    							<span class="ml-auto"><a href="#">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<img  src=<c:url value="bluemoon/images/hotel_img/event.jpg"/> style="width: 100%;"><div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">호텔 조식 패키지</a></h3>
				    						<br>
				    						<p>종료된 이벤트 입니다. </p>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><br><small></small></span>
		    							</div>
		    						</div>
		    						<p>현장 결제시 조식 50% 할인 이벤트 </p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		    							<span class="ml-auto"><a href="#">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<img  src=<c:url value="bluemoon/images/hotel_img/event.jpg"/> style="width: 100%;"><div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="#">호텔 조식 패키지</a></h3>
				    						<br>
				    						<p>종료된 이벤트 입니다. </p>
			    						</div>
			    						<div class="two">
			    							<span class="price per-price"><br><small></small></span>
		    							</div>
		    						</div>
		    						<p>현장 결제시 조식 50% 할인 이벤트 </p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i> Miami, Fl</span> 
		    							<span class="ml-auto"><a href="#">Book Now</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
          
          </div> <!-- .col-md-8 -->
        </div>
    </section> <!-- .section -->

