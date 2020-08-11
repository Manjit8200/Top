<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<title> Login | Rotary Means Business Fellowship Bangalore </title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="<%=request.getContextPath() %>/resources/front/css/bootstrap.min.css" rel="stylesheet">	
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front/css/animate.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front/css/prettyPhoto.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front/css/main.css" rel="stylesheet">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/wall.css">
		<link href="<%=request.getContextPath() %>/resources/front/css/responsive.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<script src="<%=request.getContextPath() %>/resources/front/js/jquery.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/js/jquery.prettyPhoto.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/js/jquery.isotope.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/js/main.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front/js/wow.min.js"></script>
		<%-- <script  src="<%=request.getContextPath() %>/resources/front/js/wall-post.js"></script> --%>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
		<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/64754/autosize.min.js'></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>		
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-153537496-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'UA-153537496-1');

        </script>

	</head>
	<body ng-app="rcbs" ng-controller="sidebarCtrl">
		<%@include file="header.jsp" %>
			<div class="first-widget parallax" id="blog">
				<div class="parallax-overlay">
					<div class="container pageTitle">
						<div class="row">
							<div class="col-md-6 col-sm-6"></div>
							<div class="col-md-6 col-sm-6 text-right">
								<span class="page-location"><a href="<%=request.getContextPath() %>/">Home</a> / Login</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<section class="bg-banner">
				<div class="banner-bottom-bg single-bg">
					<div class="banner-bg">
						<div class="container">
							<div class="banner">
								<div class="banner-grids">
									<div class="banner-middle">
										<div class="strip"> </div>
										<div class="col-md-12">
											<section id="login">
												<div class="row">
													<div class="col-md-12">
														<div class="row">
															<div class="col-sm-6 col-md-4 col-md-offset-4">
																<div class="account-wall">
																	<img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" alt="">
																	<form class="form-signin" ng-submit="checkFrontLogin(<%= request.getParameter("membertype")%>)" novalidate>
																		<input type="text" name="username" id="username" ng-model="username" class="form-control" placeholder="Email" autofocus>
																		<input type="password" name="password" id="password" ng-model="password" class="form-control" placeholder="Password"><br>
																		<label><input type="checkbox" ng-model="loggedin"> Keep me logged-in</label>
																		<button class="btn btn-primary btn-block" type="submit">Sign in</button>
																	</form>
																	<%-- <a href="<%=request.getContextPath() %>/get_registered" class="text-center new-account">Get Registered</a> --%>
																</div>
																<a href="<%=request.getContextPath() %>/forget_password" class="text-center new-account">Forgot Password ?</a>
															</div>
														</div>
													</div>
												</div>
											</section>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>								
		<%@include file="footer.jsp" %>											
	</body>
</html>

