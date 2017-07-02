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
body {
	padding-top: 70px;
	padding-bottom: 40px;
	background: #F2FCAE;
	font-family: sans-serif;
	position: relative;
	left: 40px;
}

div {
	display: block;
	border-radius: 2px;
	color: #7B7782;
}

.WP_frame {
	width: 1200px;
	margin: 0 auto;
	padding: 16px 0 0 0;
	position: relative;
	top: -12px;
}

.info {
	position: relative;
	left: -5px;
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
	padding-left: 10px;
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
	left: 300px;
	padding-top: 10px;
	padding-bottom: 0px;
}

.repostBlah {
	border-radius: 5px;
	margin: 10px;
	margin-left: 0px;
	padding: 10px;
}

.myavatar {
	position: relative;
	top: 15px
}

#text {
	text-align: center;
	margin-bottom: 10px;
	color: #A8B48B;
}

#post {
	position: relative;
	left: 243px
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
	background-color: #337ab7;;
}

a {
	color: #337ab7;
	text-decoration: none;
}

.date {
	position: relative;
	left: -10px;
}

.weipoUserInfo {
	position: relative;
	left: 20px;
	top: -20px;
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

#location {
	padding: 2px;
	margin-bottom: 2px;
}

#closeweipomodal {
	border-left-width: 0px;
	border-top-width: 0px;
	border-right-width: 0px;
	margin-bottom: 0px;
	margin-right: 0px;
	border-bottom-width: 1.25;
	border-bottom-width: 1.25;
}

.cmt {
	padding: 10px;
	margin-top: 10px;
}
</style>

</head>
<body>
	<!-- 顶部导航 -->
	<nav class="navbar navbar-default navbar-fixed-top .navbar-inverse">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" href="message.do"> <img alt="Brand"
					src="image/ic_theaters_black_24dp_2x.png" width="50%">
				</a> <a class="navbar-brand" href="message.do"><font size="5px"
					class="center-vertical">WEIPO</font></a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>&nbsp;&nbsp;&nbsp;</li>
					<li><a href="message.do" class="navbarItem"><img
							src="image/ic_home_black_18dp_2x.png" width="30px"> 主页 <span
							class="sr-only">(current)</span></a></li>
					<li class="active"><a href="nodify.do?type=comment"
						class="navbarItem"><img
							src="image/ic_notifications_active_black_18dp_2x.png"
							width="30px">提醒 <c:if
								test="${requestScope.nodify != null }">
								<sup><span class="badge">new</span></sup>
							</c:if> </a></li>
					<li><a href="friends.do" class="navbarItem"><img
							src="image/ic_people_black_18dp_2x.png" width="30px">找朋友</a></li>
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
	<!-- 内容模块 -->
	<div class="WP_frame">
		<!-- 左邊的模塊-->
		<div class="col-xs-3 col-md-3 right" style="background: #FFFFFF">
			<img src="image/5.jpg" width="100%">
		</div>
		<!--右边的模块-->
		<div class="col-xs-8 col-md-8">
			<ul class="nav nav-pills">
				<li role="presentation" class="active"><a
					href="nodify.do?type=comment">评论</a></li>
				<li role="presentation"><a href="nodify.do?type=favor">赞我</a></li>
			</ul>
			<!-- 未读  -->
			<c:forEach var="cmt" items="${requestScope.cmmt1}">
				<div class="row cmt" style="background: #FFFFFF"
					onclick="readCmt('${cmt.key.postID}','${cmt.key.postDate.time}','${cmt.key.cmtID}','${cmt.key.cmtDate.time}');">
					<div class="col-xs-2">
						<img src="${cmt.value.avatarPath}" width="120px"
							class="img-circle center-block img-responsive img-thumbnail myavatar">
					</div>
					<div class="col-xs-9">
						<div class="row">
							<h3>
								<strong>${cmt.value.name}</strong> &nbsp;&nbsp;&nbsp;
							</h3>

							<font style="color: #1DA1F2;">回复 @${cmt.key.cmtID}</font>
						</div>
						<div class="row" data-toggle="modal" data-target="#myWeipoModal"
							onclick="loadXMLDoc('${cmt.key.cmtID}','${cmt.key.cmtDate.time}');loadComment('${cmt.key.cmtID}','${cmt.key.cmtDate.time}');
																loadCommentEdit('${sessionScope.login}','${cmt.key.cmtID}','${cmt.key.cmtDate.time}');">
							<h5>${cmt.key.txt}</h5>
						</div>

						<p style="color: #C0C0C0;">${cmt.key.postDate}</p>
					</div>
				</div>
			</c:forEach>
			<hr>
			<!-- 已读  -->
			<c:forEach items="${requestScope.cmmt2}" var="cmt">
				<div class="row cmt" style="background: #FFFFFF">
					<div class="col-xs-2">
						<img src="${cmt.value.avatarPath}" width="120px"
							class="img-circle center-block img-responsive img-thumbnail myavatar">
					</div>
					<div class="col-xs-9">
						<div class="row">
							<h3>
								<strong>${cmt.value.name}</strong> &nbsp;&nbsp;&nbsp;
							</h3>

							<font style="color: #1DA1F2;">回复 @${cmt.key.cmtID}</font>
						</div>
						<div class="row" data-toggle="modal" data-target="#myWeipoModal"
							onclick="loadXMLDoc('${cmt.key.cmtID}','${cmt.key.cmtDate.time}');loadComment('${cmt.key.cmtID}','${cmt.key.cmtDate.time}');
																loadCommentEdit('${sessionScope.login}','${cmt.key.cmtID}','${cmt.key.cmtDate.time}');">
							<h5>${cmt.key.txt}</h5>
						</div>

						<p style="color: #C0C0C0;">${cmt.key.postDate}</p>
					</div>
				</div>
			</c:forEach>
		</div>
		<script>
			function loadXMLDoc(id, date) {
				var xmlhttp;
				if (window.XMLHttpRequest) {
					//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
					xmlhttp = new XMLHttpRequest();
				} else {
					// IE6, IE5 浏览器执行代码
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						document.getElementById("aWeipoInfo").innerHTML = xmlhttp.responseText;
					}
				}
				xmlhttp.open("GET", "ajax.do?type=showweipo&id=" + id
						+ "&date=" + date, true);
				xmlhttp.send();
			}
			function loadComment(id, date) {
				var xmlhttp;
				if (window.XMLHttpRequest) {
					//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
					xmlhttp = new XMLHttpRequest();
				} else {
					// IE6, IE5 浏览器执行代码
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						document.getElementById("commentArea").innerHTML = xmlhttp.responseText;
					}
				}
				xmlhttp.open("GET", "comment.do?id=" + id + "&time=" + date,
						true);
				xmlhttp.send();
			}
			function loadCommentEdit(id, cmtid, cmtdate) {
				var xmlhttp;
				if (window.XMLHttpRequest) {
					//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
					xmlhttp = new XMLHttpRequest();
				} else {
					// IE6, IE5 浏览器执行代码
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						document.getElementById("commentEdit").innerHTML = xmlhttp.responseText;
						document.getElementById("repostEdit").innerHTML = "";
					}
				}
				xmlhttp.open("GET", "ajax.do?type=loadavatar&cmtdate="
						+ cmtdate + "&cmtid=" + cmtid, true);
				xmlhttp.send();
			}
			function readCmt(postID, postTime, cmtID, cmtTime) {
				var xmlhttp;
				if (window.XMLHttpRequest) {
					//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
					xmlhttp = new XMLHttpRequest();
				} else {
					// IE6, IE5 浏览器执行代码
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						var y = document.getElementById("messageCnt");
						y.innerHTML = "讀取評論成功！";
					}
				}
				xmlhttp.open("GET", "ajax.do?type=readCmt&cmtDate=" + cmtTime
						+ "&cmtID=" + cmtID + "&postID=" + postID
						+ "&postDate=" + postTime, true);
				xmlhttp.send();
			}
		</script>
		<!-- 模态框（消息提醒用） -->
		<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width: 800px;">
				<div class="modal-content" id="messageCnt"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" id="closeweipomodal"
						data-dismiss="modal">关闭</button>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		<!-- 模态框（微博的详细信息/评论） -->
		<div class="modal fade" id="myWeipoModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width: 800px;">
				<div class="modal-content">
					<div class="modal-body"></div>
					<div id="aWeipoInfo"></div>
					<div id="repostEdit"></div>
					<div id="commentEdit"></div>
					<div id="commentArea"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="closeweipomodal"
							data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary">提交更改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
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