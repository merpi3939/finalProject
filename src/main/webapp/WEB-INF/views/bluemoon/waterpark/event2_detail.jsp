<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<style type="text/css">

* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

body, html {
	height: 100%;
	font-family: Ubuntu-Regular, sans-serif;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 14px;
    /* font: inherit; */
    vertical-align: baseline;
    font-family: 'Apple SD Gothic Neo','malgun gothic','맑은 고딕','돋움','dotum';
    letter-spacing: -1px;
}
a {
	list-style: none;
}

.limiter {
	width: 100%;
	margin: 0 auto;
	height: 1335px;
}

.con01 {
	width: 100%;
	min-height: 100vh;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	flex-wrap: wrap;
	padding: 15px;
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	position: relative;
    width: 100%;
    max-width: 960px;
    min-height: 300px;
    margin: 0 auto;
    padding: 60px 16px 70px;
    justify-content: center;
    align-items: center;
}

.wrap100 {
	width : 100%;
	float: left;
	background: #fff;
	border-radius: 10px;
	position: relative;
}
#contentsWrap {
    width: 920px;
    margin: 0 auto;
    padding-bottom: 50px;
}
.event #contentsWrap .subTitle {
    background: url(/img/vp/images/event/sub_title.png) no-repeat top left;
}
#contentsWrap .subTitle {
    height: 255px;
    width: 100%;
    overflow: hidden;
}
#contentsWrap .subTitle h2 {
    color: #333;
    font-weight: bold;
    font-size: 40px;
    margin-top: 55px;
    letter-spacing: -3px;
}
#contentsWrap .subTitle p {
    color: #787878;
    font-size: 14px;
    margin-top: 15px;
    line-height: 22px;
    letter-spacing: -1px;
    width: 620px;
}
table {
    margin-top: 15px;
    width: 100%;
    border-top: 2px solid #7b8290;
}
table th {
    color: #454545;
    font-weight: bold;
    font-size: 14px;
    text-align: center;
    border-bottom: 1px solid #d4d7db;
    border-right: 1px solid #eaebed;
    background-color: #f5f5f5;
    padding: 14px 0 13px 0;
    vertical-align: middle;
    line-height: 18px;
}
table td.left {
    text-align: left;
    padding: 14px 15px;
}
table .last {
    border-right: none;
}
table td {
    color: #454545;
    font-size: 14px;
    text-align: center;
    border-bottom: 1px solid #d4d7db;
    border-right: 1px solid #eaebed;
    padding: 14px 15px 13px;
    vertical-align: middle;
    line-height: 20px;
}
table td.img {
    padding: 20px 0;
    border-right: none;
}

.align-items-end {
	-webkit-box-align: center !important;
	-ms-flex-align: center !important;
	align-items: flex-end !important;
}
</style>

</head>
<body>
	<div class="limiter">
		<div class="con01">
			<form class="form01">
				<div class="wrap100">
					<div id="contentsWrap">
						<div class="subTitle">
							<h5>진행중인 이벤트</h5>
							<h6>항상 즐거움이 있는 곳!</h6>
						</div>
						<div class="con">
							<table width="100%" margin-bottom: 50px; border="0"
								cellspacing="0" cellpadding="0">
								<colgroup>
									<col width="20%" />
									<col width="80%" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">제목</th>
										<td class="last left">오션월드 골드시즌 특별 할인 이벤트</td>
									</tr>
									<tr>
										<th scope="row">이용기간</th>
										<td class="last left">2020.10.14~2020.11.30</td>
									</tr>
									<tr>
										<th scope="row">분류</th>
										<td class="last left">할인, 이벤트, 식음, 오션/아쿠아, 기타</td>
									</tr>
									<tr>
										<td colspan="2" class="last img"><img alt=""
											src="/images/evnet2_list.jpg"
											style="width: 910px; height: 3460px;" usemap="#link" /> <map
												name="link">
											</map></td>
									</tr>
								</tbody>
							</table>
							
							<div>
								<a href=<c:url value="/event2"/>
									style="background-image: url('resources/bluemoon/images/ocean_img/event2.jpg');">
								</a>
							</div>
						</div>
					</div>
				</div>
			</form>

		</div>
	</div>

</body>
</html>