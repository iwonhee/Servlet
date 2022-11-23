<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h3>게시판 정보</h3>
<ul>
	<li>제목 : ${title}</li>
	<li>내용 : ${content}</li>
</ul>
</body>
</html>