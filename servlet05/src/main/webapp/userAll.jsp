<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

<h3>전제 사용자정보 목록</h3>
<table border='1'>
	<tr><th>아이디</th><th>이름</th><th>이메일</th><th>관리자여부</th><th>소지금</th></tr>
	<c:forEach items='${uList}' var='dto'>
		<tr>
			<td class="click_id"><a href='info.ju?id=${dto.id}'>${dto.id}</a></td>	
			<td>${dto.name}</td>
			<td>${dto.email}</td>
			<td>${dto.admin}</td>
			<td><fmt:formatNumber value='${dto.money}'/></td>
		</tr>
	</c:forEach>
</table>

<h3>회원목록</h3>
<ul>
	<c:forEach items='${list}' var='name'>
		<li>${name}</li>
	</c:forEach>
</ul>
</body>
</html>