<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Insert title here</title>
<%@ include file="../include.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/scripts.js"></script>
</head>
<body>
<div class='menu'>
	<a href="./">홈으로</a>
</div>
     
<hr>
<h3>고객목록</h3>
<table border='1'>
	<tr>
		<th>고객명</th>
		<th>이메일</th>
		<th>전화번호</th>
	</tr>
	<c:forEach items="${list}" var="dto">
		<tr>
			<th>${dto.name}</th>
			<th>${dto.email}</th>
			<th>${dto.phone}</th>
		</tr>
	</c:forEach>
	
</table>


</body>
</html>