<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>转发|评论</title>
</head>
<body>
		<table style='text-align: left; width: 510px; height: 90px' border='0'
			cellpadding='2' cellspacing='2'>
			<thead>
				<tr>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><img src="${requestScope.account.avatarPath }"
						width="100px" height="100px"></td>
					<td><c:out value="${requestScope.account.id}"></c:out></td>
					<td><c:out value="${requestScope.account.name}"></c:out></td>
				</tr>
				<tr>
					<td style='vertival-align: top;'><c:out
							value="${requestScope.blah.txt}"></c:out><br> <c:out
							value="${requestScope.blah.id }"></c:out> <c:out
							value="${blah.date}"></c:out><br> <c:choose>
							<c:when test="${requestScopeblah.type == 2}">
								<img src="${requestScope.blah.picturesPath }" width="50%">
							</c:when>
							<c:when test="${requestScope.blah.type == 1}">
								<embed src="${requestScope.blah.videoPath }" width="50%"
									autostart="false">
							</c:when>
						</c:choose> <fmt:formatDate value="${requestScope.blah.date }" type="both"
							dateStyle="full" timeStyle="full"></fmt:formatDate><br>
						<hr></td>
				</tr>
			</tbody>
		</table>
		<br>
		<c:choose>
			<c:when test="${requestScope.repost != null }">
				<form method='post' action='repost.do'>
					<input type="hidden" name="id" value="${requestScope.blah.id}">
					<input type="hidden" name="date" value="${requestScope.blah.date.time}">
					<textarea name="repostContent" rows="4" cols="60"></textarea>
					<input type="submit" value="转发" name="submit">
				</form>
			</c:when>
			<c:otherwise>
				<form method='post' action='comment.do'>
				<input type="hidden" name="id" value="${requestScope.blah.id}">
					<input type="hidden" name="date" value="${requestScope.blah.date.time}">
					<textarea name="repostContent" rows="4" cols="60"></textarea>
					<input type="submit" value="评论" name="submit">
				</form>
			</c:otherwise>
		</c:choose>
		<br>
	</form>
</body>
</html>