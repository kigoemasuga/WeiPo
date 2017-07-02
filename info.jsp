<%@ page contentType="text/html; charset=utf-8"    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息</title>
</head>
<body>
<img src="${sessionScope.user.avatarPath }" alt="">
<form action="modifyInfo.do" method="post" enctype="multipart/form-data">
<h1>${sessionScope.login}</h1>
头像：<input type="file" name="avatar">
名称：<input type="text" name="name" value="${sessionScope.user.name }">
性别：<input type="radio" name="sex" value="男" checked>男
<input type="radio" name="sex" value="女">女
地址：<input type="text" name="location" value="${sessionScope.user.location }">
年龄： <input type="text" name="age" value="${sessionScope.user.age }">
<input type="submit" name="修改" value="修改">
</form> 
</body>
</html>