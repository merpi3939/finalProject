<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--MAIN NAVIGATION-->
			<!--===================================================-->
			<nav id="mainnav-container">
				<div id="mainnav">

					<!--Shortcut buttons-->
					<!--================================-->
					<!-- 
					<div id="mainnav-shortcut">
						<ul class="list-unstyled">
							<li class="col-xs-4" data-content="Additional Sidebar">
								<a id="demo-toggle-aside" class="shortcut-grid" href="#">
									<i class="fa fa-magic"></i>
								</a>
							</li>
							<li class="col-xs-4" data-content="Notification">
								<a id="demo-alert" class="shortcut-grid" href="#">
									<i class="fa fa-bullhorn"></i>
								</a>
							</li>
							<li class="col-xs-4" data-content="Page Alerts">
								<a id="demo-page-alert" class="shortcut-grid" href="#">
									<i class="fa fa-bell"></i>
								</a>
							</li>
						</ul>
					</div>
					 -->
					<!--================================-->
					<!--End shortcut buttons-->


					<!--Menu-->
					<!--================================-->
					<div id="mainnav-menu-wrap">
						<div class="nano">
							<div class="nano-content">
								<ul id="mainnav-menu" class="list-group">
						
									<!--Category name-->
									<li class="list-header">Navigation</li>
						
									<!--Menu list item-->
									<li>
										<a href="${pageContext.request.contextPath}/admin">
											<i class="fa fa-dashboard"></i>
											<span class="menu-title">
												<strong>Home</strong>
												<span class="label label-success pull-right">Top</span>
											</span>
										</a>
									</li>
						
									<!--Menu list item-->
									<li>
										<a href="#">
											<i class="fa fa-th"></i>
											<span class="menu-title">
												<strong>회원관리</strong>
											</span>
											<i class="arrow"></i>
										</a>
						
										<!--Submenu-->
										<ul class="collapse">
											<li><a href="${pageContext.request.contextPath}/admin/userList">회원관리</a></li>
										</ul>
									</li>
						
									<!--Menu list item-->
									<li>
										<a href="widgets.html">
											<i class="fa fa-flask"></i>
											<span class="menu-title">
												<strong>워터파크 관리</strong>
											</span>
											<i class="arrow"></i>
										</a>
										
										<ul class="collapse">
											<li><a href="${pageContext.request.contextPath}/admin/chargeList">요금 관리</a></li>
											<li><a href="${pageContext.request.contextPath}/admin/prList">예약/결제 관리</a></li>
											<li><a href="${pageContext.request.contextPath}/admin/newsList">현장소식</a></li>
										</ul>
									</li>
									
									<li>
										<a href="widgets.html">
											<i class="fa fa-flask"></i>
											<span class="menu-title">
												<strong>호텔 관리</strong>
											</span>
											<i class="arrow"></i>
										</a>
										<ul class="collapse">
											<li><a href="${pageContext.request.contextPath}/admin/hotel_status">호텔 관리</a></li>
											<li><a href="${pageContext.request.contextPath}/admin/hotel_reservation_list">호텔 예약 관리</a></li>
											<li><a href="${pageContext.request.contextPath}/admin/hotel_review_list">호텔 후기 관리</a></li>
											<li><a href="${pageContext.request.contextPath}/admin/hotel_room_type">호텔 객실 관리</a></li>
										</ul>
									</li>
									
									<li>
										<a href="widgets.html">
											<i class="fa fa-flask"></i>
											<span class="menu-title">
												<strong>게시판 관리</strong>
												<!-- <span class="badge badge-warning">9</span> -->
											</span>
											<i class="arrow"></i>
										</a>
										<ul class="collapse">
											<li><a href="${pageContext.request.contextPath}/admin/info_list">공지사항 & QnA 관리</a></li>
											<li><a href="${pageContext.request.contextPath}/admin/info_write">게시글 작성</a></li>
										</ul>
									</li>

						
									<li class="list-divider"></li>
						
									

							</div>
						</div>
					</div>
					<!--================================-->
					<!--End menu-->

				</div>
			</nav>
			<!--===================================================-->
			<!--END MAIN NAVIGATION-->