<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <head>
<style>
img{
 margin : 0px auto;
}
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

ul{
   list-style:none;
}
.gr-total h5 {
    color: #f85959;!important;
}
.custom-checkbox .custom-control-input:checked ~ .custom-control-label::after {
background-color: red;
}
 .cover-slides .container > .row {
     -webkit-box-align: center;
     -ms-flex-align: center;
     align-items: center;
}
 .cover-slides .container > .row {
     height: 100%;
}
 .cart-box-main{
     padding: 70px 0px;
}
 .title-left{
     font-size: 16px;
     border-bottom: 3px solid #000000;
     margin-bottom: 20px;
}
 .title-left h3{
     font-weight: 700;
}
.ml-auto btn hvr-hover{
color: white;!important;
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


    <div class="cart-box-main">
        <div class="container">
            <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="order-box">
                                <div class="title-left">
                                    <h3>예약/결제 완료</h3>
                                </div>
                                <div class="d-flex">
                                    <div class="font-weight-bold">예약/결제정보</div>
                                    <div class="ml-auto font-weight-bold">합계</div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <h4>예약번호</h4>
                                    <div class="ml-auto font-weight-bold">${reserveList.reserveNo } </div>
                                </div>
                                <div class="d-flex">
                                    <h4>예약자 성함</h4>
                                    <div class="ml-auto font-weight-bold">${reserveList.reserveMemname } </div>
                                </div>
                                <div class="d-flex">
                                    <h4>예약자 전화번호</h4>
                                    <div class="ml-auto font-weight-bold">${reserveList.reserveMemphone } </div>
                                </div>
                                <div class="d-flex">
                                    <h4>예약자 이메일</h4>
                                    <div class="ml-auto font-weight-bold">${reserveList.reserveMememail } </div>
                                </div>
                                
                                <div class="d-flex">
                                    <h4>인원</h4>
                                    <div class="ml-auto font-weight-bold">${reserveList.reserveperson } 명</div>
                                </div>
                                <div class="d-flex">
                                    <h4>예약룸</h4>
                                    <div class="ml-auto font-weight-bold">${hotelCategoryNo.hotelCategoryName } </div>
                                </div>
                                
                                <hr class="my-1">
                                
                                <div class="d-flex gr-total">
                                    <h5>결제금액</h5>
                                    <div class="ml-auto h5">${reserveList.reservePrice } Won</div>
                                </div>
                                <hr> </div>
                                <div class="col-12 d-flex shopping-box"> <a href='Hotelcansle?reserveNo=${reserveList.reserveNo }' type="button" class="ml-auto btn hvr-hover" style="background-color: red !important; color: white !important;">예약취소</a> </div>
                 
				
			</div>
                        </div>
                    </div>
                </div>
            