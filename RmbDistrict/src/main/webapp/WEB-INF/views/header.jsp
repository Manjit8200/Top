<header id="header" ng-app="rcbs" ng-controller="sidebarCtrl" ng-init="getMemberProfile('<%= session.getAttribute("memberid")%>')">
	<nav class="navbar navbar-inverse" role="banner">
		<div class="container">
			<div class="navbar-header">
				<div class="navbar-toggle1 visible-xs visible-sm">
					<a href="#">
						<i class="fa fa-user-circle-o" aria-hidden="true"></i>
					</a>
				</div>
				<div class="navbar-toggle2 notifi">
					<a href="#">
						<i class="fa fa-bell-o"></i>
						<span class="badge badge-light"> 04 </span>
					</a>
				</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only"> Toggle navigation </span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<%=request.getContextPath() %>/"><img src="<%=request.getContextPath() %>/resources/front/images/Logo-RMBF.png" alt=""></a>
			</div>
			<div class="collapse navbar-collapse navbar-right">
				<%-- <div class="pull-left mt-10 mr-20">
					<a href="<%=request.getContextPath() %>/rmbv_neo_conclave" class="btn-system1 flashit1  btn-mini">RMBF NEO Conclave</a>
				</div> --%>
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> About RMBFB <i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath() %>/about_RMBB"> What Is RMBFB? </a></li>
							<li><a href="<%=request.getContextPath() %>/meeting_info_location" onclick="javascript:window.location.reload();"> Meeting info & location </a></li>
							<li><a href="<%=request.getContextPath() %>/contact_us" onclick="javascript:window.location.reload();"> Contact Us</a></li>
							<li><a href="<%=request.getContextPath() %>/board_of_director" onclick="javascript:window.location.reload();"> Board of directors </a></li>
							<li><a href="<%=request.getContextPath() %>/members_directory" onclick="javascript:window.location.reload();"> Members directory </a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="<%=request.getContextPath() %>/news" onclick="javascript:window.location.reload();"> NEWS</a>						
					</li>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> MEDIA CENTER <i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<%-- <li><a href="<%=request.getContextPath() %>/club_bulletins" onclick="javascript:window.location.reload();"> Club bulletins </a></li> --%>
							<li><a href="<%=request.getContextPath() %>/photo_albums" onclick="javascript:window.location.reload();"> Photo albums </a></li>
							<li><a href="#"> Video gallery </a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="<%=request.getContextPath() %>/events" onclick="javascript:window.location.reload();"> EVENTS </a>						
					</li>
				</ul>
				<%if(session.getAttribute("memberid") == null)
				{%>
				<ul class="nav navbar-nav">
					<li>
						<a href="<%=request.getContextPath() %>/login">
							Login
						</a>
					</li>
				</ul>
				<%}
				else
				{%>
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding: 5px 10px 4px 10px">
							<img alt="'<%=session.getAttribute("membername") %>'" class="image--cover" src="{{memberProfilePicture}}" onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" ng-if="memberProfilePicture">
							<img alt="'<%=session.getAttribute("membername") %>'" class="image--cover" src="<%=request.getContextPath() %>/resources/admin/images/UserImg.png" ng-if="!memberProfilePicture">
						</a>
						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath() %>/my_profile"> My Profile </a></li>
							<%if(session.getAttribute("memberstatus").equals("y")) { %>
							<li><a href="<%=request.getContextPath() %>/chapter_summary"> Chapter's Summary </a></li>
							<li><a href="<%=request.getContextPath() %>/member_reference"> References </a></li>
							<li><a href="<%=request.getContextPath() %>/member_referrals"> Referrals </a></li>
							<li><a href="<%=request.getContextPath() %>/member_business_transaction"> Business Transactions </a></li>
							<li><a href="<%=request.getContextPath() %>/member_meeting"> Meetings </a></li>
							<%}%>
							<li><a href="<%=request.getContextPath() %>/order_history">My Payments</a></li>
							<li><a href="<%=request.getContextPath() %>/change_password" > Change Password </a></li>
							<li><a href="#" ng-click="Frontlogout()"> Logout </a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-left" style="width:45px;"></ul>
				<%}%>
			</div>
		</div>
	</nav>
</header>