<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<h3>회원조회</h3>
<ul>
	<li>id : admin</li>
	<li>name : ${name}</li>
	<li>money : <fmt:formatNumber value='${money}' type='currency'/></li>
</ul>
</body>
</html>