<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <head>
  <style type="text/css">
.top-bar ul {
   list-style-type: none;
    margin: 0;
    padding-left: 100px;
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

ul{
   list-style:none;
   }

body {
	text-align: center;
}
.sub_info {padding: 60px 0 70px; text-align: center; letter-spacing: -0.5px;}
.sub_info h3 {font-weight: 400; font-size: 30px; margin-bottom: 35px;}
.sub_info p {font-weight: 100; line-height: 32px; margin-bottom: 35px;}
.sub_info ul {display: inline-block; margin: 0 auto;  overflow: hidden;}
.sub_info ul li {text-align: left; color: #555555; font-weight: 300; margin-bottom: 10px;}
.sub_info ul li span {float:left; word-spacing: 25px; font-weight: 400; color: #0f0f0f;}
.sub_info ul li span:after {content:''; display: inline-block; width: 1px; height: 13px; background: #6b6b6b; vertical-align: middle; margin: 0 10px;}
.sub_info ul li small {font-size: 14px; color: #999;}
.sub_info ul li ul {vertical-align: top;}
.sub_info ul li ul li {margin-bottom: 7px;}
.sub_info ul li ul li.table{display:table}
.sub_info ul li ul li.table em{display:table-cell; padding-right:8px;}


.sub_info dl{padding-left:90px; text-align:left}
.sub_info div.ins{display:inline-block; position:relative; padding-right:90px;}

.sub_info .rsvn_wrap {text-align: center;}
.sub_info .rsvn_wrap span {text-align: center;display: inline-block;border: 2px solid #f85959;;color: #ffffff;font-size: 15px;padding: 10px 88px;margin-top: 40px;background-color: #f85959;}
	img { display: block; margin: 0px auto; }
 

.amenities {padding-top:30px; background: #f6f3f2; overflow: hidden; margin-top: 85px; text-align: left;}
.amenities p {font-size: 19px; color: #525252; font-weight: 700; margin-bottom: 15px;}
.amenities .left {float: left; width: 40%; margin-left: 8%; margin-right: 80px;}
.amenities .left ul {overflow: hidden;}
.amenities .left ul li {float: left; text-align: center; margin-bottom: 20px; margin-right: 2%; letter-spacing:-1px;}
.amenities .left ul li:nth-child(5n) {margin-right: 0;}
.amenities .left ul li img {border: 1px solid #dfd6d2; background: #fff;}
.amenities .left ul li span {display: block; font-size: 14px; color: #101010; letter-spacing: -1px; margin-top: 5px;}

.amenities .right {}
.amenities .right div {background: #fff; border: 1px solid #dfd6d2; overflow: hidden; padding: 20px; min-height: 260px; margin-right: 5%;}
.amenities .right ul li {}
.amenities .right ul.info {margin-bottom: 25px;}
.amenities .right ul.info li {margin-bottom: 8px;}
.amenities .right ul.info li:before {content:'-'; margin-right: 10px;}
.amenities .right ul.notice li {color: #a9113c; font-size: 14.5px; position: relative; padding-left: 20px; margin-bottom: 5px;}
.amenities .right ul.notice li:before {content:'※'; font-size: 14px; position: absolute; left: 0; top: 0;}

  </style>
  </head>
    <div class="top-bar"style="border-bottom: 1px solid #E2E2E2; ">
 <ul>
  <li style="font-weight: bold; padding-right: 30px;"><a>HOTELCATEGORY</a></li>
  <li><a href=<c:url value="hotel"/>>ROOMS</a></li>
  <li><a href=<c:url value="hotel_event"/>>EVENT</a></li>
  <li><a href=<c:url value="hotel_service"/>>CONVENIENCE</a></li>2
  <li><a href=<c:url value="hotelAllList"/>>My</a></li>
</ul>
</div>




  <c:forEach var="HotelCategory" items="${categoryList}" >
        <div class="wrap1200">  
        
        	
            <!-- Standard Twin -->
        	<div class="room_section">
	            <div class="sub_info">
	                <h3>${HotelCategory.hotelCategoryName }</h3>
	                <div class="ins">
		                <ul>
		                    <li><span>이용요금</span> ${HotelCategory.hotelCategoryPrice }</li> 
		                </ul>
	                </div>
	                <div class="rsvn_wrap">
	                	<a href='hotel_single?hotelCategoryNo=${HotelCategory.hotelCategoryNo }' ><span>상세정보</span></a>
	                </div>
	            </div>
	
	          <div class="sub_slide">
	                <div class="bx-wrapper"  >
	                <img src=<c:url value="bluemoon/images/hotel_img/${HotelCategory.hotelCategoryImg1 }"/> style="width: 80%;">
	                </div>
	               
	                 
	                <div class="bx-wrapper" style="width: 80%; margin : 0px auto; border-bottom: 1px solid #E2E2E2; margin-top: 80px;" >
	            </div>
	        </div>
	        
	       
	        
	       </div> 
	       
        </div>   <!-- wrap1200 -->
        
 </c:forEach>          







        <div class="amenities">
            <div class="wrap1200">
                <div class="left">
                    <p>객실 어메니티</p>
                    <ul>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/amenity-wifi.png"/>><span>무료 WiFi</span></li>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/tv-channel.png"/>><span>위성 TV 32개 채널</span></li>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/amenity-TV.png"/>><span>43인치 Full HD TV</span></li>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/amenity-water.png"/>><span>생수 2병</span></li>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/amenity-dryer.png"/>><span>헤어드라이기</span></li>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/amenity-refri.png"/>><span>냉장고</span></li>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/amenity-safe.png"/>><span>금고</span></li>
                    	<li><img src=<c:url value="bluemoon/images/hotel_img/amenity-bath.png"/>><span>욕실 어메니티</span></li>
                    	
                        <!-- <li><img src="/RamadaSokcho_common/images/homepage/acco/amenity-multiplug.png"><span>멀티플러그어댑터</span></li>                        
                        <li><img src="/RamadaSokcho_common/images/homepage/acco/amenity-robe.png"><span>목욕가운 &amp; 슬리퍼</span></li>
                        <li><img src="/RamadaSokcho_common/images/homepage/acco/amenity-aircon.png"><span>에어컨</span></li> -->
                    </ul>
                </div>

                <div class="right">
                    <p>이용안내</p>
                    <div style="width: 37%">
                        <ul class="info">
                            <li>체크인 15:00 / 체크아웃 11:00</li>
                            <li>기준인원 : 2명, 최대인원 : 3명</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
 
