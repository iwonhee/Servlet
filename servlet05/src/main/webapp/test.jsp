<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="include.jsp"%>
</head>
<body>
<div class="menu">
	<a href="./">홈으로</a>
</div>
<h3>조회테스트</h3>
<ul>
	<li>오늘 : ${today}</li>
	<li>now : ${now}</li>
	<li>회원수 : ${users}</li>
</ul>
</body>
</html>