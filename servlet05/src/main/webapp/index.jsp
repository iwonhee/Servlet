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
<h3>홈</h3>
<div class="menu">
	<a href='test.do'>조회테스트</a>
	<a href='board.ju'>게시판정보</a>
	<a href='boardAll.ju'>게시판목록</a>
	<a href='productAll.pd'>상품목록</a>
</div>
<div class="menu">
	<a href='user.ju'>회원정보</a>
	<a href='userAll.ju'>전체회원목록</a>
</div>
<br>
<div class="menu">
	<a href="color_choice.jsp?c=white">white</a>
	<a href="color_choice.jsp?c=blue">blue</a>
	<a href="color_choice.jsp?c=black">black</a>
</div>
<br>
<div>${cc}</div>
<br>
<div class="bar"></div>
</body>
</html>