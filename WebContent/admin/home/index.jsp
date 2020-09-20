<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blue Moon | admin </title>

	<%@include file="/admin/refSrc/layout/stylesheet&script.jspf"  %>
	
	<!-- morris chart -->
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
	
	
	<!--Bootstrap Table [ OPTIONAL ]-->
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet">
		
</head>

<body>
	<div id="container" class="effect mainnav-lg">
		<%@include file="/admin/refSrc/layout/navBar.jspf" %>
		

		<div class="boxed">

			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">

				<!--Page content-->
				<!--===================================================-->
				<div id="page-content">
					
					<%-- <h3 class="text-thin">Your content...</h3> --%>
					<%--<jsp:include page="<%=contentPath %>"></jsp:include> --%>
					
					
					
					
					<!--Tiles - Bright Version-->
					<!--===================================================-->
					<div class="row">
						<div class="col-sm-6 col-lg-3">
					
							<!--Registered User-->
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
							<div class="panel media pad-all">
								<div class="media-left">
									<span class="icon-wrap icon-wrap-sm icon-circle bg-success">
									<i class="fa fa-user fa-2x"></i>
									</span>
								</div>
					
								<div class="media-body">
									<p class="text-2x mar-no text-thin">241</p>
									<p class="text-muted mar-no">Registered User</p>
								</div>
							</div>
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
					
						</div>
						<div class="col-sm-6 col-lg-3">
					
							<!--New Order-->
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
							<div class="panel media pad-all">
								<div class="media-left">
									<span class="icon-wrap icon-wrap-sm icon-circle bg-info">
									<i class="fa fa-shopping-cart fa-2x"></i>
									</span>
								</div>
					
								<div class="media-body">
									<p class="text-2x mar-no text-thin">543</p>
									<p class="text-muted mar-no">New Order</p>
								</div>
							</div>
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
					
						</div>
						<div class="col-sm-6 col-lg-3">
					
							<!--Comments-->
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
							<div class="panel media pad-all">
								<div class="media-left">
									<span class="icon-wrap icon-wrap-sm icon-circle bg-warning">
									<i class="fa fa-comment fa-2x"></i>
									</span>
								</div>
					
								<div class="media-body">
									<p class="text-2x mar-no text-thin">34</p>
									<p class="text-muted mar-no">Comments</p>
								</div>
							</div>
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
					
						</div>
						<div class="col-sm-6 col-lg-3">
					
							<!--Sales-->
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
							<div class="panel media pad-all">
								<div class="media-left">
									<span class="icon-wrap icon-wrap-sm icon-circle bg-danger">
									<i class="fa fa-dollar fa-2x"></i>
									</span>
								</div>
					
								<div class="media-body">
									<p class="text-2x mar-no text-thin">654</p>
									<p class="text-muted mar-no">Sales</p>
								</div>
							</div>
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
					
						</div>
					</div>
					<!--===================================================-->
					<!--End Tiles - Bright Version-->
					
					
					
					
					<!-- chart start -->
					<div class="row">
						<div class="col-md-12">
							<div class="card card-box panel">
								<div class="card-head panel-heading">
									<h3 class="panel-title">Chart Survey</h3>
					
								</div>
								<div class="card-body no-padding height-9 panel-body">
									<div class="row text-center">
										<div class="col-sm-3 col-6">
											<h4 class="margin-0">$ 209 </h4>
											<p class="text-muted"> Today's Income</p>
										</div>
										<div class="col-sm-3 col-6">
											<h4 class="margin-0">$ 837 </h4>
											<p class="text-muted">This Week's Income</p>
										</div>
										<div class="col-sm-3 col-6">
											<h4 class="margin-0">$ 3410 </h4>
											<p class="text-muted">This Month's Income</p>
										</div>
										<div class="col-sm-3 col-6">
											<h4 class="margin-0">$ 78,000 </h4>
											<p class="text-muted">This Year's Income</p>
										</div>
									</div>
									<div class="row ">
										<div id="area_line_chart" class="width-100"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Chart end -->
					
					
					<!-- Table Start -->
					<!-- Row selection and deletion (multiple rows) -->
					<!--===================================================-->
					<div class="panel">
						<div class="panel-heading">
							<h3 class="panel-title">Booking details</h3>
						</div>
						<div id="demo-custom-toolbar" class="table-toolbar-left">
							<button id="demo-dt-delete-btn" class="btn btn-danger btn-labeled fa fa-times">Delete</button>
						</div>
						<div class="panel-body">
							<table id="demo-dt-delete" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Name</th>
										<th>Position</th>
										<th class="min-tablet">Office</th>
										<th class="min-tablet">Extn.</th>
										<th class="min-desktop">Start date</th>
										<th class="min-desktop">Salary</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Ashton Cox</td>
										<td>Junior Technical Author</td>
										<td>San Francisco</td>
										<td>66</td>
										<td>2009/01/12</td>
										<td>$86,000</td>
									</tr>
									<tr>
										<td>Cedric Kelly</td>
										<td>Senior Javascript Developer</td>
										<td>Edinburgh</td>
										<td>22</td>
										<td>2012/03/29</td>
										<td>$433,060</td>
									</tr>
									<tr>
										<td>Airi Satou</td>
										<td>Accountant</td>
										<td>Tokyo</td>
										<td>33</td>
										<td>2008/11/28</td>
										<td>$162,700</td>
									</tr>
									<tr>
										<td>Brielle Williamson</td>
										<td>Integration Specialist</td>
										<td>New York</td>
										<td>61</td>
										<td>2012/12/02</td>
										<td>$372,000</td>
									</tr>
									<tr>
										<td>Herrod Chandler</td>
										<td>Sales Assistant</td>
										<td>San Francisco</td>
										<td>59</td>
										<td>2012/08/06</td>
										<td>$137,500</td>
									</tr>
									<tr>
										<td>Rhona Davidson</td>
										<td>Integration Specialist</td>
										<td>Tokyo</td>
										<td>55</td>
										<td>2010/10/14</td>
										<td>$327,900</td>
									</tr>
									<tr>
										<td>Colleen Hurst</td>
										<td>Javascript Developer</td>
										<td>San Francisco</td>
										<td>39</td>
										<td>2009/09/15</td>
										<td>$205,500</td>
									</tr>
									<tr>
										<td>Sonya Frost</td>
										<td>Software Engineer</td>
										<td>Edinburgh</td>
										<td>23</td>
										<td>2008/12/13</td>
										<td>$103,600</td>
									</tr>
									<tr>
										<td>Jena Gaines</td>
										<td>Office Manager</td>
										<td>London</td>
										<td>30</td>
										<td>2008/12/19</td>
										<td>$90,560</td>
									</tr>
									<tr>
										<td>Quinn Flynn</td>
										<td>Support Lead</td>
										<td>Edinburgh</td>
										<td>22</td>
										<td>2013/03/03</td>
										<td>$342,000</td>
									</tr>
									<tr>
										<td>Charde Marshall</td>
										<td>Regional Director</td>
										<td>San Francisco</td>
										<td>36</td>
										<td>2008/10/16</td>
										<td>$470,600</td>
									</tr>
									<tr>
										<td>Haley Kennedy</td>
										<td>Senior Marketing Designer</td>
										<td>London</td>
										<td>43</td>
										<td>2012/12/18</td>
										<td>$313,500</td>
									</tr>
									<tr>
										<td>Tatyana Fitzpatrick</td>
										<td>Regional Director</td>
										<td>London</td>
										<td>19</td>
										<td>2010/03/17</td>
										<td>$385,750</td>
									</tr>
									<tr>
										<td>Michael Silva</td>
										<td>Marketing Designer</td>
										<td>London</td>
										<td>66</td>
										<td>2012/11/27</td>
										<td>$198,500</td>
									</tr>
									<tr>
										<td>Paul Byrd</td>
										<td>Chief Financial Officer (CFO)</td>
										<td>New York</td>
										<td>64</td>
										<td>2010/06/09</td>
										<td>$725,000</td>
									</tr>
									<tr>
										<td>Gloria Little</td>
										<td>Systems Administrator</td>
										<td>New York</td>
										<td>59</td>
										<td>2009/04/10</td>
										<td>$237,500</td>
									</tr>
									<tr>
										<td>Bradley Greer</td>
										<td>Software Engineer</td>
										<td>London</td>
										<td>41</td>
										<td>2012/10/13</td>
										<td>$132,000</td>
									</tr>
									<tr>
										<td>Dai Rios</td>
										<td>Personnel Lead</td>
										<td>Edinburgh</td>
										<td>35</td>
										<td>2012/09/26</td>
										<td>$217,500</td>
									</tr>
									<tr>
										<td>Jenette Caldwell</td>
										<td>Development Lead</td>
										<td>New York</td>
										<td>30</td>
										<td>2011/09/03</td>
										<td>$345,000</td>
									</tr>
									<tr>
										<td>Yuri Berry</td>
										<td>Chief Marketing Officer (CMO)</td>
										<td>New York</td>
										<td>40</td>
										<td>2009/06/25</td>
										<td>$675,000</td>
									</tr>
									<tr>
										<td>Caesar Vance</td>
										<td>Pre-Sales Support</td>
										<td>New York</td>
										<td>21</td>
										<td>2011/12/12</td>
										<td>$106,450</td>
									</tr>
									<tr>
										<td>Doris Wilder</td>
										<td>Sales Assistant</td>
										<td>Sidney</td>
										<td>23</td>
										<td>2010/09/20</td>
										<td>$85,600</td>
									</tr>
									<tr>
										<td>Angelica Ramos</td>
										<td>Chief Executive Officer (CEO)</td>
										<td>London</td>
										<td>47</td>
										<td>2009/10/09</td>
										<td>$1,200,000</td>
									</tr>
									<tr>
										<td>Gavin Joyce</td>
										<td>Developer</td>
										<td>Edinburgh</td>
										<td>42</td>
										<td>2010/12/22</td>
										<td>$92,575</td>
									</tr>
									<tr>
										<td>Jennifer Chang</td>
										<td>Regional Director</td>
										<td>Singapore</td>
										<td>28</td>
										<td>2010/11/14</td>
										<td>$357,650</td>
									</tr>
									<tr>
										<td>Brenden Wagner</td>
										<td>Software Engineer</td>
										<td>San Francisco</td>
										<td>28</td>
										<td>2011/06/07</td>
										<td>$206,850</td>
									</tr>
									<tr>
										<td>Fiona Green</td>
										<td>Chief Operating Officer (COO)</td>
										<td>San Francisco</td>
										<td>48</td>
										<td>2010/03/11</td>
										<td>$850,000</td>
									</tr>
									<tr>
										<td>Shou Itou</td>
										<td>Regional Marketing</td>
										<td>Tokyo</td>
										<td>20</td>
										<td>2011/08/14</td>
										<td>$163,000</td>
									</tr>
									<tr>
										<td>Michelle House</td>
										<td>Integration Specialist</td>
										<td>Sidney</td>
										<td>37</td>
										<td>2011/06/02</td>
										<td>$95,400</td>
									</tr>
									<tr>
										<td>Suki Burks</td>
										<td>Developer</td>
										<td>London</td>
										<td>53</td>
										<td>2009/10/22</td>
										<td>$114,500</td>
									</tr>
					
					
								</tbody>
							</table>
						</div>
					</div>
					<!--===================================================-->
					<!-- End Row selection and deletion (multiple rows) -->
					
					
					<!-- Table End -->
					
					
					
				</div>
				<!--===================================================-->
				<!--End page content-->


			</div>
			<!--===================================================-->
			<!--END CONTENT CONTAINER-->
			
			<!-- 왼쪽 메인 바 -->
			<%@include file="/admin/refSrc/layout/mainNav.jspf" %>
			
			<!-- 오른쪽 aside -->
			<%@include file="/admin/refSrc/layout/aside.jspf" %>
			
		</div>

		<%@include file="/admin/refSrc/layout/footer.jspf" %>		

	</div>
	<!--===================================================-->
	<!-- END OF CONTAINER -->

	<!-- setting -->
	<%--
	<%@include file="/admin/refSrc/layout/setting.jspf" %>
	 --%>
	 
	<!-- javascript -->
	<%@include file="/admin/refSrc/layout/javascript.jspf" %>

	 	
	<!-- Area Chart script -->
	<script src="${pageContext.request.contextPath }/admin/home/home_area_data.js"></script>
	
	<!-- Table Chart script -->
	
	<!--DataTables [ OPTIONAL ]-->
	<script src="${pageContext.request.contextPath }/admin/plugins/datatables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath }/admin/plugins/datatables/media/js/dataTables.bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	
	<!--DataTables Sample [ SAMPLE ]-->
	<script src="${pageContext.request.contextPath }/admin/js/demo/tables-datatables.js"></script>
	
</body>
</html>

