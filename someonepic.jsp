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
	padding: 0 0 0 0;
	top: -220px;
	left: 180px;
}

.left {
	margin: 5px;
}

.avatarIncard {
	position: relative;
	left: 15px;
	top: 0px;
}

.editbuttun {
	position: relative;
	left: 70px;
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
	top: -250px;
	left: 770px;
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
	margin-left: 15px;
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
	<nav class="navbar navbar-default navbar-fixed-top .navbar-inverse">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <img alt="Brand"
					src="image/ic_theaters_black_24dp_2x.png" width="50%">
				</a> <a class="navbar-brand" href="#"><font size="5px"
					class="center-vertical">Weipo</font></a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>&nbsp;&nbsp;&nbsp;</li>
					<li class="active"><a href="message.do" class="navbarItem"><img
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
	<!--页头-->
	<div>
		<img src="image/9.jpg" width="100%">
	</div>
	<div style="background: #FFFFFF; color: #000000;">
		<ul class="nav nav-tabs nav-pills center-block">
			<li role="presentation"><font size="5px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></a></li>
			<li role="presentation"><a
				href="user.do?id=${requestScope.acct.id}&type=weipo"><font
					size="3px">推文</font></a></li>
			<li role="presentation"><a
				href="user.do?id=${requestScope.acct.id}&type=follow"><font
					size="3px">關注</font></a></li>
			<li role="presentation"><a
				href="user.do?id=${requestScope.acct.id}&type=fan"><font
					size="3px">粉絲</font></a></li>
			<li role="presentation"><a
				href="user.do?id=${requestScope.acct.id}&type=collection"><font
					size="3px">收藏</font></a></li>
			<li role="presentation" class="active"><a
				href="user.do?id=${requestScope.acct.id}&type=picture"><font
					size="3px">照片墻</font></a></li>
			<c:if test="${requestScope.acct.id == sessionScope.login}">
				<li role="presentation" onclick="loadModifyEdit();"><button
						class="button button-glow button-border editbuttun button-rounded button-primary">
						<font size="3px">编辑资料</font>
					</button></li>
			</c:if>
		</ul>
	</div>
	<img src="${requestScope.acct.avatarPath }"
		class="img-thumbnail img-circle img-responsive myavatar" width="250px">
	<div class="mypage_frame">
		<div class="col-xs-3 col-md-3 left" id="infoArea"
			style="background: #FFFFFF">
			<!--用戶信息-->
							<table>
					<tbody>
						<tr>
						<div class="col-xs-12">
							<h2>${requestScope.acct.name }</h2>
							</div>
						</tr>
						<tr>
							<div class="col-xs-12">
								<h3>@${requestScope.acct.id }</h3>
							</div>
						</tr>
						<tr>
							<div class="col-xs-12">
								<p>${requestScope.acct.email }</p>
							</div>
						</tr>
						<tr>
							<div class="col-xs-2">
								<img src="image/ic_explore_black_18dp_2x.png" width="20px">
							</div>
							<div class="col-xs-10">
								<p>${requestScope.acct.location }</p>
							</div>
						</tr>
						<tr>
							<div class="col-xs-2">
								<img src="image/ic_loyalty_black_24dp_2x.png" width="20px">
							</div>
							<div class="col-xs-10">
								<p>${requestScope.acct.description }</p>
							</div>
						</tr>
						<tr>
							<div class="col-xs-2">
								<img src="image/ic_person_pin_black_18dp_2x.png" width="20px">
							</div>
							<div class="col-xs-10">
								<p>${requestScope.acct.sex}&nbsp;&nbsp;&nbsp;
									${requestScope.acct.age }岁</p>
							</div>
						</tr>
					</tbody>
				</table>
		</div>
		<div class="col-xs-7 col-md-7">
				<div class="container">
					<div class="row">
						<div id="fh5co-board" data-columns>
							<c:forEach var="pic" items="${requestScope.weipos}">
								<div class="item">
									<div class="animate-box">
										<a href="${pic.picturesPath}"
											class="image-popup fh5co-board-img"><img
											src="${pic.picturesPath}" alt="WEIPO"></a>
										<div class="fh5co-desc">
											<font stype="color:#1DA1F2;">@${pic.id}:</font>${pic.txt}</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
		</div>
	</div>


	<!-- jQuery -->
	<script src="photoUse/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="photoUse/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="photoUse/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="photoUse/js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="photoUse/js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="photoUse/js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="photoUse/js/main.js"></script>
</body>
</html>