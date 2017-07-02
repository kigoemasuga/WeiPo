<%@page import='java.util.*' pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Weipo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="loginUse/css/bootstrap.min.css">
<link rel="stylesheet" href="loginUse/css/animate.css">
<link rel="stylesheet" href="loginUse/css/style.css">

<!-- Modernizr JS -->
<script src="loginUse/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="loginUse/js/respond.min.js"></script>
	<![endif]-->

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body class="style-3">
	<c:if test="${requestScope.errors !=null}">
		<h1>新增会员失败</h1>
		<ul style='color: rgb(255, 0, 0);'>
			<c:forEach var="error" items="${requestScope.errors}">
				<li>${error}</li>
			</c:forEach>
		</ul>
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-push-8">
				<!-- Start Sign In Form -->
				<form action="register.do" method="post"
					class="fh5co-form animate-box" data-animate-effect="fadeInRight">
					<h2>注册</h2>

					<div class="form-group">
						<label for="name" class="sr-only">ID</label> <input type="text"
							class="form-control" id="name" name='id' placeholder="ID"
							autocomplete="off">
					</div>
					<div class="form-group">
						<label for="email" class="sr-only">电子邮箱</label> <input
							type="email" class="form-control" id="email" name='email'
							placeholder="电子邮箱" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="password" class="sr-only">密码</label> <input
							type="password" class="form-control" id="password"
							name='password' placeholder="密码" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="re-password" class="sr-only">确认密码</label> <input
							type="password" class="form-control" id="re-password"
							name='confirmedPasswd' placeholder="确认密码" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="remember"><input type="checkbox" id="remember">
							&nbsp;&nbsp;&nbsp;记住我</label>
					</div>
					<div class="form-group">
						<p>
							已经注册？ <a href="index.jsp">登录</a>
						</p>
					</div>
					<div class="form-group">
						<input type="submit" value="注册" class="btn btn-primary">
					</div>
				</form>
				<!-- END Sign In Form -->

			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="loginUse/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="loginUse/js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="loginUse/js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="loginUse/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="loginUse/js/main.js"></script>

</body>
</html>

