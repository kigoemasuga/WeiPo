<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*,java.text.*,model.Blah"%>
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
<title>WEIPO</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- Animate.css -->
<link rel="stylesheet" href="photoUse/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="photoUse/css/icomoon.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="photoUse/css/magnific-popup.css">
<!-- Salvattore -->
<link rel="stylesheet" href="photoUse/css/salvattore.css">
<!-- Theme Style -->
<link rel="stylesheet" href="photoUse/css/style.css">
<!-- Modernizr JS -->
<script src="photoUse/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="photoUse/js/respond.min.js"></script>
	<![endif]-->
<style>
@font-face {
	font-family: allText;
	src: url('/font/chinese.ttf'), url('/font/EU-XFZ.ttf'),
		url('Sansation_Bold.eot'); /* IE9+ */
}

body {
	padding-top: 70px;
	padding-bottom: 40px;
	background: #F2FCAE;
	font-family: sans-serif;
}

div {
	display: block;
	border-radius: 2px;
	color: #7B7782;
}

.WP_frame {
	width: 1100px;
	margin: 0 auto;
	padding: 16px 0 0 0;
	position: relative;
	left: 40px;
}

.photo_frame {
	width: 1000px;
	position: relative;
	right: 30px;
}
.peopleInfo{
	padding:10px;
}
.Cnt_frame {
	position: relative;
	top: -65px;
}

.col-md-4 {
	padding: 2px;
	padding-left: 1px;
	margin: 0px;
}

.info {
	position: relative;
	left: -5px;
}
.avatarIncard{
	position: relative;
	top: -15px;
	left: 5px;
}
.textarea {
	margin-top: 5px;
	margin-bottom: 10px;
}

.input {
	margin-bottom: 10px;
	padding: 20px;
}

.right {
	margin-right: 10px;
	padding-top: 10px;
	padding-right: 10px;
}

.myinfo {
	position: relative;
	top: -15px;
}

.imax {
	padding: 5px;
	vertical-align: middle;
	text-align: center;
}

.center-vertical {
	display: block;
	margin-top: : auto;
	margin-bottom: auto;
}

.weipo {
	margin-bottom: 10px;
}

.new {
	padding-top: 5px;
	padding-bottom: 5px;
}

.manifest {
	position: relative;
	left: 200px;
	padding-top: 5px;
	padding-bottom: 10px;
}

.repostBlah {
	border-radius: 5px;
	margin: 10px;
	padding-bottom: 5px;
}

#text {
	text-align: center;
	color: #A8B48B;
}

.typeBar {
	position: relative;
	top: -30px;
}

.navbar {
	height: 60px;
}

.navbarItem {
	height: 60px;
}

.form-control {
	padding-left: 10px;
	padding-right: 10px;
}

.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus
	{
	color: #fff;
	background-color: #337ab7;
}

a {
	color: #337ab7;
	text-decoration: none;
}

.search_btn {
	margin-bottom: 0px;
	margin-right: 0px;
	padding-right: 0px;
	padding-left: 0px;
	padding-bottom: 0px;
	padding-top: 0px;
	height: 51px;
	width: 51px;
	border-bottom-width: 1px;
}
</style>
</head>
<body background="#F5F5F5">
	<!-- 顶部导航 -->
	<nav class="navbar navbar-default navbar-fixed-top .navbar-inverse">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <img alt="Brand"
					src="image/ic_theaters_black_24dp_2x.png" width="50%">
				</a> <a class="navbar-brand" href="#"><font size="5px"
					class="center-vertical">WEIPO</font></a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>&nbsp;&nbsp;&nbsp;</li>
					<li><a href="message.do" class="navbarItem"><img
							src="image/ic_home_black_18dp_2x.png" width="40%"> 主页 <span
							class="sr-only">(current)</span></a></li>
					<li><a href="nodify.do?type=comment" class="navbarItem"><img
							src="image/ic_notifications_active_black_18dp_2x.png"
							width="30px">提醒 <c:if
								test="${requestScope.nodify != null }">
								<sup><span class="badge">new</span></sup>
							</c:if> </a></li>
					<li><a href="friends.do" class="navbarItem"><img
							src="image/ic_people_black_18dp_2x.png" width="40%">找朋友</a></li>
				</ul>
				<form class="navbar-form navbar-right center-vertical"
					action="search.do" method="get">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="搜索微博/人"
							name="searchContext">
					</div>
					<input type="text" value="txt" name="type" hidden>
					<button type="submit" class="btn btn-default search_btn">
						<img src="image/ic_search_black_18dp_2x.png" width="50%"
							class="center-block center-vertical">
					</button>
				</form>
				<!--用户下拉框-->
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><img alt="Brand"
							src="image/ic_face_black_18dp_2x.png" width="50%"> <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="message.do">我的主页</a></li>
							<li><a href="modifyInfo.do">个人信息</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="logout.do?username="${sessionScope.login}">注销</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!--页头-->
	<div class="typeBar">
		<div style="background: #1DA1F2" class="jumbotron">
			<h2 style="color: #FFFFFF;" class="WP_frame">${requestScope.searhContext}</h2>
		</div>
		<div style="background: #FFFFFF; color: #000000;" class="typeBar">
			<ul class="nav nav-pills">
				<li><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></li>
				<li role="presentation"><a
					href="search.do?type=weipo&searchContext=${requestScope.searhContext}">最新</a></li>
				<li role="presentation" class="active"><a
					href="search.do?type=people&searchContext=${requestScope.searhContext}">用户</a></li>
				<li role="presentation"><a
					href="search.do?type=pic&searchContext=${requestScope.searhContext}">照片</a></li>
				<li role="presentation"><a
					href="search.do?type=video&searchContext=${requestScope.searhContext}">视频</a></li>
				<li role="presentation"><a
					href="search.do?type=txt&searchContext=${requestScope.searhContext}">纯文字</a></li>
			</ul>
		</div>
	</div>

	<!-- 内容模块 -->
	<div class="WP_frame Cnt_frame">
		<!-- 内容模块 -->
		<!--左边的模块-->
		<div class="col-xs-3 col-md-3 right" style="background: #FFFFFF">
			<div class="center-block">
				<h4>
					<strong>搜索条件</strong>
				</h4>
			</div>
			<br>
			<div id="condition_frame" hidden></div>
		</div>
		<!--右边的模块-->
		<div class="col-xs-8 col-md-8">
			<c:forEach var="user" items="${requestScope.users }">
				<!--关注人/粉丝的卡片-->
				<div class="col-sm-4 col-md-4">
					<div class="thumbnail">
						<img src="image/1.jpg" width="100%">
						<div class="row">
							<div class="col-xs-5 col-md-5">
								<img src="${user.key.avatarPath}"
									class="img-thumbnail img-circle avatarIncard" width="60px">
							</div>
							<div class="col-xs-6 col-md-6">
								<c:choose>
									<c:when test="${user.value }">
										<div class="divButton"
											style="background: #1DA1F2; color: #FFFFFF">正在关注</div>
									</c:when>
									<c:otherwise>
										<div class="divButton"
											style="background: #1DA1F2; color: #FFFFFF">加关注</div>
									</c:otherwise>
								</c:choose>

							</div>
						</div>
						<div class="peopleInfo">
							<font size="4px" class="avatarIncard"><strong>${user.key.name}&nbsp;&nbsp;&nbsp;</strong>
							</font> <font size="2px" class="avatarIncard">@<c:out
									value="${user.key.id}"></c:out></font>
							<div class="center-block descriptionContext">
								<font size="3px"><c:out value="${user.key.location}"></c:out>&nbsp;&nbsp;&nbsp;<c:out
										value="${user.key.sex}"></c:out></font>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</div>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>


</body>
</html>