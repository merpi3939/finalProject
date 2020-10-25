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
#contentsWrap .navTab {
    width: 100%;
}
#contentsWrap h3 {
    color: #333;
    font-size: 24px;
    font-weight: bold;
    margin-top: 50px;
}
#contentsWrap .subCopy {
    line-height: 20px;
    color: #787878;
}
.mt50 {
    margin-top: 50px;
}
table {
    margin-top: 15px;
    width: 100%;
    border-top: 2px solid #7b8290;
}
colgroup {
    display: table-column-group;
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
table li {
    line-height: 20px;
    padding: 3px 0 3px 0;
    list-style: none;
}
table td.left {
    text-align: left;
    padding: 14px 15px;
}
table .last {
    border-right: none;
}
.galleryWrap {
    margin-top: 50px;
}
.gallery .viewport {
    margin-top: 15px;
    width: 100%;
    height: 550px;
    background: url(images/moon8.png) no-repeat center center rgba(245, 245, 245, 0.33);
    position: relative;
}
.gallery .api {
    margin-top: 15px;
    width: 100%;
    height: 550px;
    background: url(images/moon8.png) no-repeat center center rgba(245, 245, 245, 0.33);
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
					<h5>익스트림존</h5>
					<h6>
						익사이팅을 모토로 한 익스트림존은 <br />이용객 여러분께 강렬한 스릴을 느낄 수 있도록 해 드립니다.
					</h6>

					<div class="navTab">
						<ul>
							<h5>익스트림 리버</h5>
							</ul>

							<div class="con">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<colgroup>
										<col width="20%" />
										<col width="80%" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">시설소개</th>
											<td class="last left">길이 120m 이상 / 최고수심 2.4m</td>
										</tr>
										<tr>
											<th scope="row">운영기간</th>
											<td class="last left">야외존 운영시간 내</td>
										</tr>
										<tr>
											<th scope="row">위치</th>
											<td class="last left">실외존</td>
										</tr>
										<tr>
											<th scope="row">이용안내</th>
											<td class="last left">
												<ul>
													<li>구명조끼 착용자만 입장가능(튜브 사용금지)</li>
													<li>수영모 및 캡모자 외 착용금지, 높은 파도와 급류로 인해 귀걸이, 안경 등 장구류의 착용을
														금지합니다.</li>
													<li>고가의 귀금속 및 귀중품은 반드시 귀중품보관소에 보관하여 주시고, 분실시 당사에서는
														책임지지 않습니다.</li>
													<li>큰 파도 이용 시 파도에 뛰어 들거나 비치에 앉아서 이용 시 찰과상 등의 부상을 입을 수
														있습니다.</li>
													<li>큰 파도에 의해 신체가 상승과 착지 과정에서 고객의 부주위에 의한 부상을 입을 우려가
														있으니 위험 행동은 삼가해 주시 길 바랍니다.</li>
													<li>서핑마운트 수심은 1.8m 이상이므로 임산부, 노약자(만 65세 이상),음주자, 미취학
														아동의 경우 반드시 보호자 동반입장하여 이용하여 주시고, 안전요원에 통제에 의해 이용이 제한 될 수
														있습니다</li>
													<li>각종 태닝오일, 썬크림 등은 수질오염의 원인이 되므로 샤워 후 이용하시기 바랍니다.</li>
													<li>우발성 체온저하로 인하여 장시간 이용을 삼가해 주시고 어트렉션 주변 체온유지탕을 이용하여
														체온을 유지해 주시기 바랍니다.</li>
													<li>서핑마운트 이용 시 아쿠아 슈즈 착용을 권장 합니다.</li>
													<li>기상악화 또는 시설물 점검 및 수질정화를 위하여 운영이 일시 중단될 수 있습니다.</li>
													<li>큰파도 : 매시 00~35분 / 작은파도 : 35분~45분 / Break Time :
														45분~정각</li>
													<li>파도높이 및 운영시간은 현장사정에 따라 변경운영 될 수 있습니다.</li>
													<li>유리재질의 수경(스노클링 마스크 등) 착용을 금지 합니다.</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row">문의처</th>
											<td class="last left">1588 - 4888</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="galleryWrap">
								<div class="gallery">
									<a href="#" 
									style="background-image: url(resources/bluemoon/images/ocean_img/moon08.jpg);">
								</a>
								</div>
			</form>

		</div>
	</div>

</body>
</html>