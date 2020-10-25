<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!--NAVBAR-->
		<!--===================================================-->
		<header id="navbar">
			<div id="navbar-container" class="boxed">

				<!--Brand logo & name-->
				<!--================================-->
				<div class="navbar-header">
					<a href="${pageContext.request.contextPath}/admin" class="navbar-brand">
						<div >
						<img src=<c:url value = "/admin/img/blueMoonLogo.jpg"/> alt="BlueMoon Logo" class="brand-icon" style="border-radius: 50%; padding: 7px;">
						</div>
						<div class="brand-title">
							<span class="brand-text">Blue Moon</span>
						</div>
					</a>
				</div>
				<!--================================-->
				<!--End brand logo & name-->


				<!--Navbar Dropdown-->
				<!--================================-->
				<div class="navbar-content clearfix">
					<ul class="nav navbar-top-links pull-left">

						<!--Navigation toogle button-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<li class="tgl-menu-btn">
							<a class="mainnav-toggle" href="#">
								<i class="fa fa-navicon fa-lg"></i>
							</a>
						</li>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End Navigation toogle button-->


						<!--Messages Dropdown-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle">
								<i class="fa fa-envelope fa-lg"></i>
								<span class="badge badge-header badge-warning">9</span>
							</a>

							<!--Message dropdown menu-->
							<div class="dropdown-menu dropdown-menu-md with-arrow">
								<div class="pad-all bord-btm">
									<p class="text-lg text-muted text-thin mar-no">You have 3 messages.</p>
								</div>
								<div class="nano scrollable">
									<div class="nano-content">
										<ul class="head-list">
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<img src=<c:url value="/admin/img/av2.png"/> alt="Profile Picture" class="img-circle img-sm">
													</div>
													<div class="media-body">
														<div class="text-nowrap">Andy sent you a message</div>
														<small class="text-muted">15 minutes ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<img src=<c:url value="/admin/img/av4.png"/> alt="Profile Picture" class="img-circle img-sm">
													</div>
													<div class="media-body">
														<div class="text-nowrap">Lucy sent you a message</div>
														<small class="text-muted">30 minutes ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<img src=<c:url value="/admin/img/av3.png"/> alt="Profile Picture" class="img-circle img-sm">
													</div>
													<div class="media-body">
														<div class="text-nowrap">Jackson sent you a message</div>
														<small class="text-muted">40 minutes ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<img src=<c:url value="/admin/img/av6.png"/> alt="Profile Picture" class="img-circle img-sm">
													</div>
													<div class="media-body">
														<div class="text-nowrap">Donna sent you a message</div>
														<small class="text-muted">5 hours ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<img src=<c:url value="/admin/img/av4.png"/> alt="Profile Picture" class="img-circle img-sm">
													</div>
													<div class="media-body">
														<div class="text-nowrap">Lucy sent you a message</div>
														<small class="text-muted">Yesterday</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<img src=<c:url value="/admin/img/av3.png"/> alt="Profile Picture" class="img-circle img-sm">
													</div>
													<div class="media-body">
														<div class="text-nowrap">Jackson sent you a message</div>
														<small class="text-muted">Yesterday</small>
													</div>
												</a>
											</li>
										</ul>
									</div>
								</div>

								<!--Dropdown footer-->
								<div class="pad-all bord-top">
									<a href="#" class="btn-link text-dark box-block">
										<i class="fa fa-angle-right fa-lg pull-right"></i>Show All Messages
									</a>
								</div>
							</div>
						</li>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End message dropdown-->




						<!--Notification dropdown-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle">
								<i class="fa fa-bell fa-lg"></i>
								<span class="badge badge-header badge-danger">5</span>
							</a>

							<!--Notification dropdown menu-->
							<div class="dropdown-menu dropdown-menu-md with-arrow">
								<div class="pad-all bord-btm">
									<p class="text-lg text-muted text-thin mar-no">You have 3 messages.</p>
								</div>
								<div class="nano scrollable">
									<div class="nano-content">
										<ul class="head-list">

											<!-- Dropdown list-->
											<li>
												<a href="#">
													<div class="clearfix">
														<p class="pull-left">Database Repair</p>
														<p class="pull-right">70%</p>
													</div>
													<div class="progress progress-sm">
														<div style="width: 70%;" class="progress-bar">
															<span class="sr-only">70% Complete</span>
														</div>
													</div>
												</a>
											</li>

											<!-- Dropdown list-->
											<li>
												<a href="#">
													<div class="clearfix">
														<p class="pull-left">Upgrade Progress</p>
														<p class="pull-right">10%</p>
													</div>
													<div class="progress progress-sm">
														<div style="width: 10%;" class="progress-bar progress-bar-warning">
															<span class="sr-only">10% Complete</span>
														</div>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<span class="icon-wrap icon-circle bg-primary">
															<i class="fa fa-comment fa-lg"></i>
														</span>
													</div>
													<div class="media-body">
														<div class="text-nowrap">New comments waiting approval</div>
														<small class="text-muted">15 minutes ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
											<span class="badge badge-success pull-right">90%</span>
													<div class="media-left">
														<span class="icon-wrap icon-circle bg-danger">
															<i class="fa fa-hdd-o fa-lg"></i>
														</span>
													</div>
													<div class="media-body">
														<div class="text-nowrap">HDD is full</div>
														<small class="text-muted">50 minutes ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<span class="icon-wrap bg-info">
															<i class="fa fa-file-word-o fa-lg"></i>
														</span>
													</div>
													<div class="media-body">
														<div class="text-nowrap">Write a news article</div>
														<small class="text-muted">Last Update 8 hours ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
											<span class="label label-danger pull-right">New</span>
													<div class="media-left">
														<span class="icon-wrap bg-purple">
															<i class="fa fa-comment fa-lg"></i>
														</span>
													</div>
													<div class="media-body">
														<div class="text-nowrap">Comment Sorting</div>
														<small class="text-muted">Last Update 8 hours ago</small>
													</div>
												</a>
											</li>
									
											<!-- Dropdown list-->
											<li>
												<a href="#" class="media">
													<div class="media-left">
														<span class="icon-wrap bg-success">
															<i class="fa fa-user fa-lg"></i>
														</span>
													</div>
													<div class="media-body">
														<div class="text-nowrap">New User Registered</div>
														<small class="text-muted">4 minutes ago</small>
													</div>
												</a>
											</li>
										</ul>
									</div>
								</div>

								<!--Dropdown footer-->
								<div class="pad-all bord-top">
									<a href="#" class="btn-link text-dark box-block">
										<i class="fa fa-angle-right fa-lg pull-right"></i>Show All Notifications
									</a>
								</div>
							</div>
						</li>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End notifications dropdown-->



						<!--Mega dropdown-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<li class="mega-dropdown">
							<a href="#" class="mega-dropdown-toggle">
								<i class="fa fa-th-large fa-lg"></i>
							</a>
							<div class="dropdown-menu mega-dropdown-menu">
								<div class="clearfix">
									<div class="col-sm-12 col-md-3">

										<!--Mega menu widget-->
										<div class="text-center bg-purple pad-all">
											<h3 class="text-thin mar-no">Weekend shopping</h3>
											<div class="pad-ver box-inline">
												<span class="icon-wrap icon-wrap-lg icon-circle bg-trans-light">
													<i class="fa fa-shopping-cart fa-4x"></i>
												</span>
											</div>
											<p class="pad-btm">
												Members get <span class="text-lg text-bold">50%</span> more points. Lorem ipsum dolor sit amet!
											</p>
											<a href="#" class="btn btn-purple">Learn More...</a>
										</div>

									</div>
									<div class="col-sm-4 col-md-3">

										<!--Mega menu list-->
										<ul class="list-unstyled">
											<li class="dropdown-header">Pages</li>
											<li><a href="#">Profile</a></li>
											<li><a href="#">Search Result</a></li>
											<li><a href="#">FAQ</a></li>
											<li><a href="#">Sreen Lock</a></li>
											<li><a href="#" class="disabled">Disabled</a></li>
											<li class="divider"></li>
											<li class="dropdown-header">Icons</li>
											<li><a href="#"><span class="pull-right badge badge-purple">479</span> Font Awesome</a></li>
											<li><a href="#">Skycons</a></li>
										</ul>

									</div>
									<div class="col-sm-4 col-md-3">

										<!--Mega menu list-->
										<ul class="list-unstyled">
											<li class="dropdown-header">Mailbox</li>
											<li><a href="#"><span class="pull-right label label-danger">Hot</span>Indox</a></li>
											<li><a href="#">Read Message</a></li>
											<li><a href="#">Compose</a></li>
											<li class="divider"></li>
											<li class="dropdown-header">Featured</li>
											<li><a href="#">Smart navigation</a></li>
											<li><a href="#"><span class="pull-right badge badge-success">6</span>Exclusive plugins</a></li>
											<li><a href="#">Lot of themes</a></li>
											<li><a href="#">Transition effects</a></li>
										</ul>

									</div>
									<div class="col-sm-4 col-md-3">

										<!--Mega menu list-->
										<ul class="list-unstyled">
											<li class="dropdown-header">Components</li>
											<li><a href="#">Tables</a></li>
											<li><a href="#">Charts</a></li>
											<li><a href="#">Forms</a></li>
											<li class="divider"></li>
											<li>
												<form role="form" class="form">
													<div class="form-group">
														<label class="dropdown-header" for="demo-megamenu-input">Newsletter</label>
														<input id="demo-megamenu-input" type="email" placeholder="Enter email" class="form-control">
													</div>
													<button class="btn btn-primary btn-block" type="submit">Submit</button>
												</form>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End mega dropdown-->

					</ul>
					<ul class="nav navbar-top-links pull-right">

						<!-- 블루문 워터파크 홈페이지 바로가기 -->
						<li><a href="${pageContext.request.contextPath}/">블루문 홈페이지 바로가기</a></li>

						<c:set var="choice" value="${userInfo.userState }"/>
						<c:choose>
							<c:when test="${choice==null }">
								<a href="<c:url value="/admin/login"/>"><li class="username hidden-xs">(로그인을 해주세요.)</li></a>
								<li> <img class="img-circle img-user media-object" src=<c:url value="/admin/img/av1.png"/> alt="Profile Picture"></li>
							</c:when>
							
							<c:when test="${choice==9 }">
								<li class="username hidden-xs"> ${userInfo.userName }(${userInfo.userId })</li>
								<li> <img class="img-circle img-user media-object" src=<c:url value="/admin/img/av1.png"/> alt="Profile Picture"></li>
								<a href="<c:url value="/admin/logout"/>"><span class="username hidden-xs" style="color: red;">Logout</span></a>
							</c:when>
						</c:choose>

						<!--User dropdown-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<%-- 
						<li id="dropdown-user" class="dropdown">
							<span class="username hidden-xs" style="color: red;"><a href="${pageContext.request.contextPath}/admin/logout }">Logout</a></span>
						</li>
								 --%>
	
							<!-- <a href="#" data-toggle="dropdown" class="dropdown-toggle text-right"> -->
								<!-- 
								<span class="pull-right">
									<img class="img-circle img-user media-object" src=<c:url value="/admin/img/av1.png"/> alt="Profile Picture">
								</span>
								 -->
								<!-- 
								<span><div class="pad-all text-right">
	  									  <a href="pages-login.html" class="btn btn-primary">
										  <i class="fa fa-sign-out fa-fw"></i> Logout</a>
										  </div>
								</span>
 -->								

<!-- 							<div class="dropdown-menu dropdown-menu-md dropdown-menu-right with-arrow panel-default"> -->

								<!-- User dropdown menu -->
							<!-- 	
								<ul class="head-list">
									<li>
										<a href="#">
											<i class="fa fa-user fa-fw fa-lg"></i> Profile
										</a>
									</li>
								 -->	
									<!-- 
									<li>
										<a href="#">
											<span class="badge badge-danger pull-right">9</span>
											<i class="fa fa-envelope fa-fw fa-lg"></i> Messages
										</a>
									</li>
									<li>
										<a href="#">
											<span class="label label-success pull-right">New</span>
											<i class="fa fa-gear fa-fw fa-lg"></i> Settings
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-question-circle fa-fw fa-lg"></i> Help
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-lock fa-fw fa-lg"></i> Lock screen
										</a>
									</li>
									
								</ul>
								 -->
<!-- 
								Dropdown footer
								<div class="pad-all text-right">
									<a href="pages-login.html" class="btn btn-primary">
										<i class="fa fa-sign-out fa-fw"></i> Logout
									</a>
								</div>
							</div>
							 -->
						
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End user dropdown-->

					</ul>
				</div>
				<!--================================-->
				<!--End Navbar Dropdown-->

			</div>
		</header>
		<!--===================================================-->
		<!--END NAVBAR-->