<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blue Moon | admin </title>

	<%@include file="/admin/layout/stylesheet&script.jspf"  %>
	
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
		<%@include file="/admin/layout/navBar.jspf" %>
		

		<div class="boxed">

			<!--CONTENT CONTAINER-->
			<!--===================================================-->
			<div id="content-container">

				<!--Page content-->
				<!--===================================================-->
				<div id="page-content">
					
					<%-- <h3 class="text-thin">Your content...</h3> --%>
					<%--<jsp:include page="<%=contentPath %>"></jsp:include> --%>
					
					
					<div class="row">
					
					<!-- chart start -->
					<div class="col-lg-8 col-md-12">
						<div class="row">
							<div class="col-md-12">
								<div class="panel">
									<div class="panel-heading">
										<h3 class="panel-title">Chart Survey</h3>
									</div>
									<div class="no-padding height-8 panel-body">
										<div class="row text-center">
											<div class="col-lg-3 col-md-3 col-sm-3">
												<h4 class="margin-0">$ 209 </h4>
												<p class="text-muted"> Today's Income</p>
											</div>
											<div class="col-lg-3 col-md-3 col-sm-3">
												<h4 class="margin-0">$ 837 </h4>
												<p class="text-muted">This Week's Income</p>
											</div>
											<div class="col-lg-3 col-md-3 col-sm-3">
												<h4 class="margin-0">$ 3410 </h4>
												<p class="text-muted">This Month's Income</p>
											</div>
											<div class="col-lg-3 col-md-3 col-sm-3">
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
					</div>
					<!-- Chart end -->
					
					<div class="col-lg-4">
					<div class="row">

												
						<!--Large tile (Visit Today)-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<div class="col-sm-6 col-md-6">
							<div class="panel panel-dark panel-colorful">
								<div class="panel-body text-center">
									<p class="text-uppercase mar-btm text-sm">Visit Today</p>
									<i class="fa fa-users fa-5x"></i>
									<hr>
									<p class="h2 text-thin">254,487</p>
									<small><span class="text-semibold">7%</span> Higher than yesterday</small>
								</div>
							</div>
						</div>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End large tile (Visit Today)-->
			
			
						<!--Large tile (Comments)-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<div class="col-sm-6 col-md-6">
							<div class="panel panel-danger panel-colorful">
								<div class="panel-body text-center">
									<p class="text-uppercase mar-btm text-sm">Comments</p>
									<i class="fa fa-comment fa-5x"></i>
									<hr>
									<p class="h2 text-thin">873</p>
									<small><span class="text-semibold"><i class="fa fa-unlock-alt fa-fw"></i> 154</span> Unapproved comments</small>
								</div>
							</div>
						</div>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--Large tile (Comments)-->
			
						
						<!--Large tile (New orders)-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<div class="col-sm-6 col-md-6">
							<div class="panel panel-primary panel-colorful">
								<div class="panel-body text-center">
									<p class="text-uppercase mar-btm text-sm">New Orders</p>
									<i class="fa fa-shopping-cart fa-5x"></i>
									<hr>
									<p class="h2 text-thin">2,423</p>
									<small><span class="text-semibold"><i class="fa fa-shopping-cart fa-fw"></i> 954</span> Sales in this month</small>
								</div>
							</div>
						</div>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End Large tile (New orders)-->
			
						<!--Large tile (New orders)-->
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<div class="col-sm-6 col-md-6">
							<div class="panel panel-info panel-colorful">
								<div class="panel-body text-center">
									<p class="text-uppercase mar-btm text-sm">New Orders</p>
									<i class="fa fa-shopping-cart fa-5x"></i>
									<hr>
									<p class="h2 text-thin">2,423</p>
									<small><span class="text-semibold"><i class="fa fa-shopping-cart fa-fw"></i> 954</span> Sales in this month</small>
								</div>
							</div>
						</div>
						<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
						<!--End Large tile (New orders)-->
			
					</div>
					</div>
					
					</div>
					
					<!-- Table Start -->
					<!-- Row selection and deletion (multiple rows) -->
					<!--===================================================-->
					<div class="panel col-md-12">
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
			<%@include file="/admin/layout/mainNav.jspf" %>
			
			<!-- 오른쪽 aside -->
			<%@include file="/admin/layout/aside.jspf" %>
			
		</div>

		<%@include file="/admin/layout/footer.jspf" %>		

	</div>
	<!--===================================================-->
	<!-- END OF CONTAINER -->

	<!-- setting -->
	<%-- 
	<%@include file="/admin/layout/setting.jspf" %>
	 --%>
	 
	<!-- javascript -->
	<%@include file="/admin/layout/javascript.jspf" %>

	 	
	<!-- Area Chart script -->
	<!-- 
	<script src="${pageContext.request.contextPath }/admin/home/home_area_data.js"></script>
	-->
	<script>
	new Morris.Area({
		element: "area_line_chart",
		behaveLikeLine: true,
		data: [
		       {w: '2011 Q1', x: 2, y: 0, z: 0},
		       {w: '2011 Q2', x: 50, y: 15, z: 5},
		       {w: '2011 Q3', x: 15, y: 50, z: 23},
		       {w: '2011 Q4', x: 45, y: 12, z: 7},
		       {w: '2011 Q5', x: 20, y: 32, z: 55},
		       {w: '2011 Q6', x: 39, y: 67, z: 20},
		       {w: '2011 Q7', x: 20, y: 9, z: 5}
		       ],
		       xkey: 'w',
		       ykeys: ['x', 'y', 'z'],
		       labels: ['X', 'Y', 'Z'],
		       pointSize: 0,
		       lineWidth: 0,
		       resize: true,
		       fillOpacity: 0.8,
		       behaveLikeLine: true,
		       gridLineColor: '#e0e0e0',
		       hideHover: 'auto',
		       lineColors: ['rgb(97, 97, 97)', 'rgb(0, 206, 209)', 'rgb(255, 117, 142)']
	});
	</script>
	<!-- Table Chart script -->
	
	<!--DataTables [ OPTIONAL ]-->
	<script src="${pageContext.request.contextPath }/admin/plugins/datatables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath }/admin/plugins/datatables/media/js/dataTables.bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/admin/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	
	<!--DataTables Sample [ SAMPLE ]-->
	<script src="${pageContext.request.contextPath }/admin/js/demo/tables-datatables.js"></script>
	
</body>
</html>

