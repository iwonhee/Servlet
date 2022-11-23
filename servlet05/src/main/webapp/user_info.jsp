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
	<a href="userAll.ju">유저목록</a>
</div>
<hr>
<h3>유저 정보</h3>
<table border='1'>
	<tr><th>아이디</th><td>${dto.id}</td></tr>
	<tr><th>이름</th><td>${dto.name}</td></tr>
	<tr><th>이메일</th><td>${dto.email}</td></tr>
	<tr><th>소지금</th><td>${dto.money}</td></tr>
</table>
</body>
</html>