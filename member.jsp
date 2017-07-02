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

.del-btn {
	position: relative;
	left: 30px;
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
	left: 280px;
	padding-top: 10px;
	padding-bottom: 0px;
}

.repostBlah {
	border-radius: 5px;
	margin: 10px;
	margin-left: 0px;
	padding: 10px;
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

.cmtArea {
	margin: 0px;
}

.postbtn {
	margin: 0px;
}

.cmtBlock {
	padding: 2px;
}
.weipoinfo{
    margin-left: 0px;
    margin-right: 0px;
    padding-left: 10px;
}
</style>

</head>
<body background="#F5F5F5">
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
					<li class="active"><a href="message.do" class="navbarItem"><img
							src="image/ic_home_black_18dp_2x.png" width="30px"> 主页 <span
							class="sr-only">(current)</span></a></li>
					<li><a href="nodify.do?type=comment" class="navbarItem"><img
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
			<!--用戶信息-->
			<img src="image/2.jpg" width="100%">
			<div class="myinfo">
				<div class="row">
					<div class="col-sm-5">
						<a href="user.do?type=weipo&id=${requestScope.acct.id}"> <img
							src="${requestScope.acct.avatarPath}"
							class="img-circle center-block img-responsive img-thumbnail"
							width="90px"></a>
					</div>
					<div class="col-sm-7 info">
						<h3>
							<c:out value="${requestScope.acct.name}"></c:out>
						</h3>
						<h5>
							@
							<c:out value="${requestScope.acct.id}"></c:out>
						</h5>
					</div>
				</div>
			</div>
			<div class="col-sm-4" id="text" style="background: #FFFFFF;">
				<h6>
					<strong>推文</strong>
				</h6>
			</div>
			<div class="col-sm-4" id="text">
				<h6>
					<strong>关注</strong>
				</h6>
			</div>
			<div class="col-sm-4" id="text">
				<h6>
					<strong>粉丝</strong>
				</h6>
			</div>
			<div class="col-sm-4" style="background: #FFFFFF;">
				<a href="user.do?type=weipo&id=${requestScope.acct.id}"> <font
					style="color: #1DA1F2" size="20px"> <c:out
							value="${requestScope.acct.blahsNum}"></c:out></font></a>
			</div>
			<div class="col-sm-4">
				<a href="user.do?type=follow&id=${requestScope.acct.id}"> <font
					style="color: #1DA1F2" size="20px"><c:out
							value="${requestScope.acct.lookAtNum }"></c:out></font></a>
			</div>
			<div class="col-sm-4">
				<a href="user.do?type=fan&id=${requestScope.acct.id}"> <font
					style="color: #1DA1F2" size="20px"><c:out
							value="${requestScope.acct.fansNum }"></c:out></font></a>
			</div>
			<div class="col-sm-12">&nbsp;</div>
		</div>
		<!--右边的模块-->
		<div class="col-xs-8 col-md-8">
			<!--输入框-->
			<div class="row input" style="background: #FFFFFF">
				<form method="post" action="message.do"
					enctype="multipart/form-data">
					<div class="new">
						<img src="image/ic_chat_black_18dp_2x.png"><font
							style="color: #86908d">分享新鲜事...</font>
					</div>
					<textarea class="form-control center-block textarea" rows="4"
						name="blabla"></textarea>
					<div class="center-block new">
						<table>

							<tbody>
								<tr>
									<td onclick="hideWays()"><img
										src="image/ic_border_color_black_18dp_2x.png">&nbsp;純文字
										&nbsp;&nbsp;</td>
									<td><img src="image/ic_person_pin_black_18dp_2x.png">&nbsp;艾特&nbsp;&nbsp;
									</td>
									<td onclick="showWayToPic()"><img
										src="image/ic_add_a_photo_black_18dp_2x.png">&nbsp;圖片&nbsp;&nbsp;
									</td>
									<td onclick="showWayToVideo()"><img
										src="image/ic_video_call_black_24dp_2x.png">&nbsp;視頻
										&nbsp;&nbsp;</td>
									<td onclick="getLocation();showWayToPos();"><img
										src="image/ic_add_location_black_18dp_2x.png">&nbsp;位置&nbsp;&nbsp;</td>
									<td><input type='submit' name='submit'
										class="btn btn-primary btn-lg active" id="post" value='发布'>
										<input type="hidden" id="type" name="type" value="">
									<td>
								</tr>
								<input type=text"" value="" name="locations" hidden>
							</tbody>
						</table>
					</div>
					<div id="attachment"></div>
				</form>
				<div id="location" style="display: none; background: #FFFFFF;"
					class="row"></div>
			</div>

			<c:forEach var="weipo" items="${requestScope.weipos}">
				<!--一个普通的微博-->
				<div class="row weipo" style="background: #FFFFFF; color: #222">
					<br>
					<!--用户头像-->
					<a href="user.do?id=${weipo.account.id}&type=weipo">
						<div class="col-xs-2 col-sm-2">
							<img src="${weipo.account.avatarPath}"
								class="img-circle img-responsive center-block img-thumbnail"
								alt="Responsive image">
						</div>
					</a>
					<!--用户信息-->
					<div class="col-xs-10 col-sm-10 weipoUserInfo">
						<div class="row">
							<h3>
								<strong> <c:out value="${weipo.account.name }"></c:out></strong>
								&nbsp;&nbsp;&nbsp;@
								<c:out value="${weipo.account.id }"></c:out>
							</h3>
						</div>
						<!--文字-->
						<div class="col-xs-10" data-toggle="modal" data-target="#myWeipoModal"
							onclick="loadXMLDoc('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');loadComment('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');
																loadCommentEdit('${sessionScope.login}','${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<c:out value="${weipo.originalBlah.txt}"></c:out>
						</div>
						<!--图片/视频/转发-->
						<c:choose>
							<c:when test="${weipo.originalBlah.isRepost}">
								<div class="col-xs-11 repostBlah" style="background: #f8ebe6;">
									<div>
										<font size="3px"><c:out value="${weipo.repostBlah.id}"></c:out>
											&nbsp;&nbsp;@ <c:out value="${weipo.repostBlah.id}"></c:out></font>
										<table>
											<tbody>
												<tr>
													<td><font size="3px"> <c:out
																value="${weipo.repostBlah.txt}"></c:out><br></font></td>
												</tr>
												<tr>
													<td><img src="image/ic_format_quote_black_18dp_2x.png"
														width="40px;"></td>
													<td><c:choose>
															<c:when test="${weipo.repostBlah.type == 2}">
																<img src="${weipo.repostBlah.picturesPath}"
																	width="300px" class="img-thumbnail">
															</c:when>
															<c:when test="${weipo.repostBlah.type == 1}">
																<div class="embed-responsive embed-responsive-16by9">
																	<iframe class="embed-responsive-item"
																		src="${weipo.repostBlah.videoPath}"></iframe>
																</div>
															</c:when>
														</c:choose></td>
												</tr>
											</tbody>
										</table>
									</div>
									<br> <br>
								</div>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${weipo.originalBlah.type == 2}">
										<div class="row" data-toggle="modal"
											data-target="#myWeipoModal"
											onclick="loadXMLDoc('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}')">
											<div class="col-xs-10">
												<img src="${weipo.originalBlah.picturesPath}" width="600px"
													class="img-thumbnail">
											</div>
										</div>
									</c:when>
									<c:when test="${weipo.originalBlah.type == 1}">
										<div class="row" data-toggle="modal"
											data-target="#myWeipoModal"
											onclick="loadXMLDoc('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}')">
											<embed src="${weipo.originalBlah.videoPath }" width="600px"
												autostart="false">
										</div>
									</c:when>
								</c:choose>
							</c:otherwise>
						</c:choose>
						<br>
						<!--日期&转发/删除/评论/点赞/收藏-->
						<table>
							<tbody>
								<tr>
									<td class="date">
										<h5>${weipo.originalBlah.date}</h5>
									</td>
									<td><c:choose>
											<c:when
												test="${weipo.originalBlah.id == requestScope.acct.id }">
												<fmt:formatDate value="${weipo.originalBlah.date }"
													type="both" dateStyle="full" timeStyle="full"></fmt:formatDate>
												<a href='delete.do?message=${weipo.originalBlah.date.time}&from=member'
													class="manifest"><button
														class="button button-pill button-primary del-btn">刪除</button></a>
											</c:when>
											<c:otherwise>
												<table class="manifest">
													<tbody>
														<tr>
															<td data-toggle="modal" data-target="#myWeipoModal"
																onclick="loadXMLDoc('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}'); loadComment('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');
																loadCommentEdit('${sessionScope.login}','${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');">
																<img src="image/ic_reply_black_18dp_2x.png" width="25px">&nbsp;|&nbsp;
															</td>
															<td data-toggle="modal" data-target="#myWeipoModal"
																onclick="loadXMLDoc('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}'); loadRepostEdit('${sessionScope.login}','${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');">
																<img src="image/ic_cached_black_18dp_2x.png"
																width="25px"> &nbsp;|&nbsp;
															</td>
															<td><img
																src="image/ic_star_border_black_18dp_2x.png"
																width="25px"
																onclick="doCollect('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');"
																id="collectionSignal${weipo.originalBlah.id}${weipo.originalBlah.date.time}"> &nbsp;|&nbsp;</td>
															<td><img
																src="image/ic_favorite_border_black_18dp_2x.png"
																id="favourSignal${weipo.originalBlah.id}${weipo.originalBlah.date.time}" width="25px"
																onclick="doFavour('${weipo.originalBlah.id}','${weipo.originalBlah.date.time}');"></td>
														</tr>
													</tbody>
												</table>
											</c:otherwise>
										</c:choose></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<script src="http://api.map.baidu.com/api?v=1.4" type="text/javascript"></script>
	<script>
		function hideWays() {
			x = document.getElementById("attachment");
			x.innerHTML = "";
			y = document.getElementById("type");
			y.value = "text";
		}
		function showWayToPic() {
			x = document.getElementById("attachment");
			x.innerHTML = "<input type='file' name='picture'>";
			y = document.getElementById("type");
			y.value = "picture";
		}
		function showWayToVideo() {
			x = document.getElementById("attachment");
			x.innerHTML = "<input type='file' name='video'>";
			y = document.getElementById("type");
			y.value = "video";
		}
		function showWayToPos() {
			x = document.getElementById("location");
			x.style.display = "block";
		}
		/*function showAtPeople()
		 {
		 x=document.getElementById("attachment"); 
		 x.innerHTML="<input type='file' name='video'>"; 
		 }*/

		//定位
		function getLocation() {
			var y = document.getElementById("location");
			y.innerHTML = "&nbsp;&nbsp;&nbsp;正在定位，請稍等...";
			var options = {
				enableHighAccuracy : true,
				maximumAge : 1000
			}
			//alert('this is getLocation()');
			if (navigator.geolocation) {
				//浏览器支持geolocation
				navigator.geolocation.getCurrentPosition(onSuccess, onError,
						options);
			} else {
				//浏览器不支持geolocation
				alert('您的浏览器不支持地理位置定位');
			}
		}

		//成功时
		function onSuccess(position) {
			//返回用户位置
			//经度
			var longitude = position.coords.longitude;
			//纬度
			var latitude = position.coords.latitude;
			//alert('当前地址的经纬度：经度' + longitude + '，纬度' + latitude);
			//根据经纬度获取地理位置，不太准确，获取城市区域还是可以的
			var map = new BMap.Map("allmap");
			var point = new BMap.Point(longitude, latitude);
			var gc = new BMap.Geocoder();
			gc.getLocation(point, function(rs) {
				var addComp = rs.addressComponents;
				//alert(addComp.province + ", " + addComp.city + ", "+ addComp.district + ", " + addComp.street + ", "+ addComp.streetNumber);
				var x = document.getElementById("location");
				x.innerHTML = "&nbsp;&nbsp;&nbsp;" + addComp.province + ", "
						+ addComp.city + ", " + addComp.district + ", "
						+ addComp.street;
				var y = document.getElementByName("locations");
				y.value = addComp.province + ", " + addComp.city + ", "
						+ addComp.district + ", " + addComp.street;
			});
			// 这里后面可以写你的后续操作了
			postData(longitude, latitude);
		}

		//失败时
		function onError(error) {
			switch (error.code) {
			case 1:
				alert("位置服务被拒绝");
				break;
			case 2:
				alert("暂时获取不到位置信息");
				break;
			case 3:
				alert("获取信息超时");
				break;
			case 4:
				alert("未知错误");
				break;
			}
			// 这里后面可以写后续操作
			//经度
			var longitude = 23.1823780000;
			//纬度
			var latitude = 113.4233310000;
			postData(longitude, latitude);
		}
	</script>
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
			xmlhttp.open("GET", "ajax.do?type=showweipo&id=" + id + "&date="
					+ date, true);
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
			xmlhttp.open("GET", "comment.do?id=" + id + "&time=" + date, true);
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
			xmlhttp.open("GET", "ajax.do?type=loadavatar&cmtdate=" + cmtdate
					+ "&cmtid=" + cmtid, true);
			xmlhttp.send();
		}
		function loadRepostEdit(id, repostid, repostdate) {
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
					document.getElementById("repostEdit").innerHTML = xmlhttp.responseText;
					document.getElementById("commentEdit").innerHTML = "";
				}
			}
			xmlhttp.open("GET", "repost.do?date=" + repostdate + "&id="
					+ repostid, true);
			xmlhttp.send();
		}
		function postCmt(idi, date) {
			var x = document.getElementById("abc").value;
			$.post("comment.do", {
				repostContent : x,
				id : idi,
				time : date
			}, function(data, status) {
				loadComment(idi,date);
			});
		}
		function postRepost(idi, date) {
			var x = document.getElementById("cba").value;
			$.post("repost.do", {
				repostContent : x,
				id : idi,
				time : date
			}, function(data, status) {
				document.getElementById("messageCnt").innerHTML = "轉發成功！";
				$('#messageModal').modal('show')
			});
		}
		function doCollect(id, date) {
			var xmlhttp;
			if (window.XMLHttpRequest) {
				//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
				xmlhttp = new XMLHttpRequest();
			} else {
				// IE6, IE5 浏览器执行代码
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			var x = document.getElementById("collectionSignal"+id+date);
			if (x.src.match("border")) {
				//添加收藏
				x.src = "image/ic_star_black_24dp_2x.png";
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						document.getElementById("messageCnt").innerHTML = "添加收藏成功！";
						//$('#messageModal').modal('show')
					}
				}
				xmlhttp.open("GET", "ajax.do?type=addCollect&userIDOfBlah="
						+ id + "&dateOfBlah=" + date, true);
				xmlhttp.send();
			} else {
				//取消收藏
				x.src = "image/ic_star_border_black_24dp_2x.png";
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						document.getElementById("messageCnt").innerHTML = "删除收藏成功！";
					//	$('#messageModal').modal('show')
					}
				}
				xmlhttp.open("GET", "ajax.do?type=delCollect&userIDOfBlah="
						+ id + "&dateOfBlah=" + date, true);
				xmlhttp.send();
			}
		}
		function doFavour(id, date) {
			var xmlhttp;
			if (window.XMLHttpRequest) {
				//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
				xmlhttp = new XMLHttpRequest();
			} else {
				// IE6, IE5 浏览器执行代码
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			var x = document.getElementById("favourSignal"+id+date);
			if (x.src.match("border")) {
				//點贊
				x.src = "image/ic_favorite_black_18dp_2x.png";
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						document.getElementById("messageCnt").innerHTML = "添加赞成功！";
						//$('#messageModal').modal('show')
					}
				}
				xmlhttp.open("GET", "ajax.do?type=addFavor&userIDOfBlah=" + id
						+ "&dateOfBlah=" + date, true);
				xmlhttp.send();
			} else {
				//取消讚
				x.src = "image/ic_favorite_border_black_18dp_2x.png";
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
						document.getElementById("messageCnt").innerHTML = "取消赞成功！";
						//$('#messageModal').modal('show')
					}
				}
				xmlhttp.open("GET", "ajax.do?type=delFavor&userIDOfBlah=" + id
						+ "&dateOfBlah=" + date, true);
				xmlhttp.send();
			}
		}
	</script>
	<!-- 模态框（消息提醒用） -->
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 800px;">
			<div class="modal-content" id="messageCnt">成功！</div>
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
			<div class="modal-header">
				<a class="close" data-dismiss="modal">X</a>
			</div>
			<div class="modal-content">
				<div class="modal-body"></div>
				<div id="aWeipoInfo"></div>
				<div id="repostEdit"></div>
				<div id="commentEdit"></div>
				<div id="commentArea"></div>
				<div class="modal-footer">
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<script>
		$(function() {
			$("[data-toggle='popover']").popover();
		});
	</script>


	<!-- 模态框（修改信息） -->
	<div class="modal fade" id="myRepostModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 600px;">
			<div class="modal-content">
				<div class="modal-body">
					<img src="${sessionScope.user.avatarPath }" alt="">
					<form action="modifyInfo.do" method="post"
						enctype="multipart/form-data">
						<h1>${sessionScope.login}</h1>
						头像：<input type="file" name="avatar"> 名称：<input type="text"
							name="name" value="${sessionScope.user.name }"> 性别：<input
							type="radio" name="sex" value="男" checked>男 <input
							type="radio" name="sex" value="女">女 地址：<input type="text"
							name="location" value="${sessionScope.user.location }">
						年龄： <input type="text" name="age"
							value="${sessionScope.user.age }"> <input type="submit"
							name="修改" value="修改">
				</div>
				<div class="modal-footer">
					<div id="context"></div>
					<div id="txtEdiArea"></div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>

	<!-- 模态框（登录注册） -->
	<div class="modal fade login" id="loginModal">
		<div class="modal-dialog login animated">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Login with</h4>
				</div>
				<div class="modal-body">
					<div class="box">
						<div class="content">
							<div class="social">
								<a class="circle github" href="/auth/github"> <i
									class="fa fa-github fa-fw"></i>
								</a> <a id="google_login" class="circle google"
									href="/auth/google_oauth2"> <i
									class="fa fa-google-plus fa-fw"></i>
								</a> <a id="facebook_login" class="circle facebook"
									href="/auth/facebook"> <i class="fa fa-facebook fa-fw"></i>
								</a>
							</div>
							<div class="division">
								<div class="line l"></div>
								<span>or</span>
								<div class="line r"></div>
							</div>
							<div class="error"></div>
							<div class="form loginBox">
								<form method="post" action="/login" accept-charset="UTF-8">
									<input id="email" class="form-control" type="text"
										placeholder="id name="id"> <input id="password"
										class="form-control" type="password" placeholder="Password"
										name="password"> <input
										class="btn btn-default btn-login" type="button" value="Login"
										onclick="loginAjax()">
								</form>
							</div>
						</div>
					</div>
					<div class="box">
						<div class="content registerBox" style="display: none;">
							<div class="form">
								<form method="post" html="{:multipart=>true}" data-remote="true"
									action="/register" accept-charset="UTF-8">
									<input id="email" class="form-control" type="text"
										placeholder="Email" name="email"> <input id="userId"
										class="form-control" type="text" placeholder="userID"
										name="userID"> <input id="password"
										class="form-control" type="password" placeholder="Password"
										name="password"> <input id="password_confirmation"
										class="form-control" type="password"
										placeholder="Repeat Password" name="password_confirmation">
									<input class="btn btn-default btn-register" type="submit"
										value="Create account" name="commit">
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="forgot login-footer">
						<span>Looking to <a href="javascript: showRegisterForm();">未注册?</a>
							?
						</span>
					</div>
					<div class="forgot register-footer" style="display: none">
						<span>已经有账号?</span> <a href="javascript: showLoginForm();">Login</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>