<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<hr>
<h3>전제 상품정보 목록</h3>
<div class="menu">
	<a href="productInsert.pd">상품 등록</a>
</div>
<br>
<table border='1'>
	<tr><th>상품번호</th><th>이름</th><th>제조사</th><th>가격</th><th>수량</th></tr>
	<c:forEach items='${list}' var='dto'>
		<tr>
			<td class="click_id"><a href='productInfo.pd?num=${dto.num}'>${dto.num}</a></td>	
			<td class="click_id"><a href='productInfo.pd?num=${dto.num}'>${dto.name}</a></td>
			<td class="click_id"><a href='productComInfo.pd?com=${dto.company}'>${dto.company}</a></td>
			<td>${dto.price}</td>
			<td>${dto.qty}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>