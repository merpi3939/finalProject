<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>

<style type="text/css">
.align-items-end {
	-webkit-box-align: center !important;
	-ms-flex-align: center !important;
	align-items: flex-end !important;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
	text-align: center;
}

table {
	display: table;
	border-collapse: separate;
	box-sizing: border-box;
	border-spacing: 2px;
	border-color: grey;
	overflow: auto;
	margin-top: 20px;
}

th, td {
	line-height: 1.4 !important;
}

tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: inherit;
}

table.res01 {
	width: 100%;
	text-align: center;
	border-top: 3px solid #black;
}

table.res01 th {
	padding: 10px 0 10px 15px;
	text-align: left;
	font-weight: normal;
	color: #fff;
	vertical-align: top;
	background: #ffc321;
	text-align: center;
}

table.res01 td {
	padding: 10px 10px;
	text-align: left;
	line-height: 1.4;
	text-align: center;
}
</style>

</head>
<body>
	<div class="hero-wrap js-fullheight"
		style="background-image: url('resources/bluemoon/images/ocean_img/mainimage.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start"
				data-scrollax-parent="true" style="padding-bottom: 100px;">
				<div class="col-md-9 ftco-animate"
					data-scrollax=" properties: { translateY: '70%' }">

					<p class="browse d-md-flex" style="float: right">
						<span
							class="d-flex justify-content-md-center align-items-md-center"><a
							href=<c:url value="/ocean_charge"/>>예약하기</a></span>
				</div>
			</div>
		</div>
	</div>
	<!-- ëì´ê¸°êµ¬ -->
	<section class="ftco-section ftco-destination">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<h2 class="mb-4">
						<strong>놀이기구</strong>
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="destination-slider owl-carousel ftco-animate">
						<div class="item">
							<div class="destination">
								<a href=<c:url value="/attraction1"/> class="img d-flex justify-content-center align-items-center"
									style="background-image: url(resources/bluemoon/images/ocean_img/moon08.jpg);">
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">익스트림 러버</a>
									</h3>
									<span class="listing">익스트림존</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(resources/bluemoon/images/ocean_img/moon09.jpg);">
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">슈퍼 익스트림 러버</a>
									</h3>
									<span class="listing">익스트림존</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(resources/bluemoon/images/ocean_img/moon10.jpg);">
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">키즈존</a>
									</h3>
									<span class="listing">익스트림존</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(resources/bluemoon/images/ocean_img/moon07.jpg);">
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">서핑마운트</a>
									</h3>
									<span class="listing">익스트림존</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(resources/bluemoon/images/ocean_img/moon04.jpg);">
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">파도풀</a>
									</h3>
									<span class="listing">아쿠아존</span>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="destination">
								<a href="#"
									class="img d-flex justify-content-center align-items-center"
									style="background-image: url(resources/bluemoon/images/ocean_img/moon14.jpg);">
								</a>
								<div class="text p-3">
									<h3>
										<a href="#">실내유수풀</a>
									</h3>
									<span class="listing">ì아쿠아존</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section testimony-section bg-light">
		<div class="container">
			<div class="row justify-content-start">
				<div class="col-md-1"></div>
				<div class="carousel-testimony owl-carousel">
					<div class="heading-section ftco-animate">
						<h2 class="mb-4 pb-3">
							<strong>생생 정보</strong>
						</h2>
						<div>
							<table class="res01">
								<colgroup>
									<col width="30%">
								</colgroup>
								<c:forEach items="${newsUserList}" var="list" >
									<tbody>
										<tr colspan="2" rowspan="2">
											<th rowspan="2">생생정보 News</th>
											<td>${list.newsCont }</td>
										</tr>
										<tr>
											<td
												style="font-weight: bold; border-bottom: 1px solid #e1e1e1;">${list.newsDate }</td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<h2>
						<strong>이벤트 / 할인</strong>
					</h2>
				</div>
			</div>
			<div class="row d-flex">
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href=<c:url value="/event2"/> class="block-20"
							style="background-image: url('resources/bluemoon/images/ocean_img/event2.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Discount</span>
							<h3 class="heading mt-3">
								<a href="#">오션월드 골드시즌 특별 할인 이벤트</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">October 12, 2020</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="" class="block-20"
							style="background-image: url('resources/bluemoon/images/ocean_img/event01.jpg');">
						</a>
						<div class="text p-4 d-block">
							<span class="tag">Event</span>
							<h3 class="heading mt-3">
								<a href="#">나만의 포토 스팟을 찾아라! 소노포토스팟</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">August 12, 2020</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="" class="block-20"
							style="background-image: url('resources/bluemoon/images/ocean_img/event3.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Event</span>
							<h3 class="heading mt-3">
								<a href="#">더욱 업그레이드 되어 돌아 온 '썸머 올인클루시브 패키지'</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">October 12, 2020</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="" class="block-20"
							style="background-image: url('resources/bluemoon/images/ocean_img/event04.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Discount</span>
							<h3 class="heading mt-3">
								<a href="#">오션월드 레이트 썸머시즌 최대 60% 현장할인</a>
							</h3>
							<div class="meta mb-3">
								<div>
									<a href="#">October 12, 2018</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>