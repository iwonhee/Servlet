<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="include.jsp" %>
</head>
<body>
<div class="menu">
	<a href="./">홈으로</a>
</div>
<h3>게시판 목록</h3>
<ul>
	<c:forEach items='${bList}' var='name'>
		<li>${name}</li>
	</c:forEach>
</ul>
</body>
</html>