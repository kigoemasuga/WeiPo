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
<!-- Buttons 库的核心文件 -->
<link rel="stylesheet" href="css/buttons.css">
<style type="text/css">
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

.mypage_frame {
	position: relative;
	width: 1200px;
	left: 0px;
	margin: 0 auto;
	padding: 16px 0 0 0;
}

.avatarIncard {
	position: relative;
	left: 15px;
	top: -30px;
}

.peopleInfo {
	padding-right: 1px;
}

.input {
	margin-bottom: 10px;
}

.right {
	margin-right: 0px;
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
	margin-bottom: : auto;
}

.myavatar {
	position: relative;
	top: -220px;
	left: 650px;
}

.divButton {
	border-radius: 2em;
	text-align: center;
	position: relative;
	top: 6px;
}

.weipo {
	margin-bottom: 10px;
}

.new {
	position: relative;
	left: 26px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.manifest {
	position: relative;
	left: 300px;
	padding-top: 5px;
	padding-bottom: 20px;
}

.repostBlah {
	border-radius: 5px;
	margin: 10px;
	padding-bottom: 5px;
}

.descriptionContext {
	margin-left: 45px;
	position: relative;
	top: -20px;
}

#text {
	text-align: center;
	color: #A8B48B;
	margin-bottom: 10px;
}

#post {
	position: relative;
	left: 200px
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
<body>
	<!-- 顶部导航 -->
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
					<li class="active"><a href="friends.do" class="navbarItem"><img
							src="image/ic_people_black_18dp_2x.png" width="40%">找朋友</a></li>
				</ul>
				<!--用户下拉框-->
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropd own" role="button" aria-haspopup="true"
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
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="mypage_frame">
		<!--下面的模块-->
		<div class="col-xs-12 col-md-12">
			<c:forEach var="userMap" items="${requestScope.users }">
				<!--关注人/粉丝的卡片-->
				<div class="col-sm-4 col-md-4 peopleInfo">
					<div class="thumbnail">
						<img src="image/peoplebackGround.jpg" width="100%">
						<div class="row">
							<div class="col-xs-5 col-md-5">
								<img src="${userMap.key.avatarPath}"
									class="img-thumbnail img-circle avatarIncard" width="100px">
							</div>
							<c:choose>
								<c:when test="${userMap.value }">
									<div class="col-xs-6 col-md-6">
										<div class="divButton"
											style="background: #1DA1F2; color: #FFFFFF">
											<a
												href="follow.do?type=delete&id=${userMap.key.id}&from=friends"><h4
													style="color: #FFFFFF;">正在关注</h4></a>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="col-xs-6 col-md-6">
										<div class="divButton"
											style="background: #1DA1F2; color: #FFFFFF">
											<a style="color: #FFFFFF;"
												href="follow.do?type=add&id=${userMap.key.id}&from=friends"><h4
													style="color: #FFFFFF;">加关注</h4></a>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="row">
							<font size="4px" class="descriptionContext center-block"><strong><c:out
										value="${userMap.key.name}"></c:out>&nbsp;&nbsp;&nbsp;</strong> @<c:out
									value="${userMap.key.id}"></c:out></font> <br>
							<div class="center-block  descriptionContext">
								<font size="3px"><c:out value="${userMap.key.location }"></c:out>&nbsp;<c:out
										value="${userMap.key.sex }"></c:out></font>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>