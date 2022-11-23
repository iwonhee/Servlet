<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include.jsp" %>
</head>
<body>
<div class="menu"><a href="../">홈으로</a></div>
<hr>
<h3>colors</h3>
<div>${colors[0]}</div>
<div>${colors[1]}</div>
<div>${colors[2]}</div>
<hr>
<h3>계산기</h3>
<form action="calculator_result.jsp" method="post" autocomplete="off">
	<input type="text" name="no1">
	<input type="text" name="no2">
	<input type="submit" value="계산" name="operator">
</form>
</body>
</html>