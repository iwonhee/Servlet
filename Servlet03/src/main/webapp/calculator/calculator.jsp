<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>계산기</h3>
<form action="calculate_result.jsp" method="post" autocomplete="off">
	<div><input type="text" name="num1"></div>
	<div>
		<select name="operator">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
	</div>
	<div><input type="text" name="num2"></div>
	<div><input type="submit" value="계산하기"></div>
</form>
<%

%>
</body>
</html>