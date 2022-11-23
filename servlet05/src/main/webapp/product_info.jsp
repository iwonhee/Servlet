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
	<a href="productAll.pd">상품목록</a>
</div>
<hr>
<h3>상품 정보</h3>
<table border='1'>
	<tr><th>상품번호</th><td>${pdto.num}</td></tr>
	<tr><th>상품명</th><td>${pdto.name}</td></tr>
	<tr><th>제조사</th><td>${pdto.company}</td></tr>
	<tr><th>가격</th><td>${pdto.price}</td></tr>
	<tr><th>수량</th><td>${pdto.qty}</td></tr>
</table>
</body>
</html>