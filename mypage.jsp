<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>我的主页</title>
</head>
<body>
  <table>
    <tbody>
      <tr>
        <img src="${sessionScope.user.avatarPath }" width="100px"
          height="100px">
      </tr>
      <tr>
        <td>${sessionScope.user.name }</td>
        <td>${sessionScope.user.id }</td>
      </tr>
      <tr>
        <td>${sessionScope.user.location }</td>
        <td>${sessionScope.user.age }</td>
        <td>${sessionScope.user.sex }</td>
      </tr>
    </tbody>
  </table>
  <hr>
  <table style='text-align: left; width: 510px; height: 90px' border='0'
    cellpadding='2' cellspacing='2'>
    <thead>
      <tr>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="weipo" items="${requestScope.weipos}">
      <tr>
      <td>
      <img src="${weipo.account.avatarPath }">
      </td>
      <td>
       <c:out value="${weipo.account.id }"></c:out>
      </td>      
      <td>
      <c:out value="${weipo.account.name }"></c:out>
      </td>
      </tr>
        <tr>
          <td><c:out value="${weipo.originalBlah.txt}"></c:out><br> 
           <c:out value="${weipo.originalBlah.date}"></c:out><br>
          </td>
          <td>
          <c:choose>
              <c:when test="${weipo.originalBlah.type == 2}">
                <img src="${weipo.originalBlah.picturesPath }" width="50%">
              </c:when>
              <c:when test="${weipo.originalBlah.type == 1}">
                <embed src="${weipo.originalBlah.videoPath }" width="50%" autostart="false">
              </c:when>
            </c:choose>
            </td>
          </tr>
          <c:if test="${weipo.originalBlah.isRepost}">
          <tr>
          <td>
          <c:out value="${weipo.repostBlah.id}"></c:out>
          <c:out value="${weipo.repostBlah.txt}"></c:out>
          </td>
          <td>
          <c:choose>
              <c:when test="${weipo.repostBlah.type == 2}">
                <img src="${weipo.repostBlah.picturesPath }" width="50%">
              </c:when>
              <c:when test="${weipo.repostBlah.type == 1}">
                <embed src="${weipo.repostBlah.videoPath }" width="50%" autostart="false">
              </c:when>
          </c:choose>
          </td>
          </tr>
          </c:if>
          <a href='delete.do?message=${weipo.originalBlah.date.time}&from=mypage'>删除</a>
      </c:forEach>
    </tbody>
  </table>
  <a href="message.do">返回首页</a>
</body>
</html>