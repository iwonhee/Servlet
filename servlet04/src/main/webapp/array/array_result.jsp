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
<div class="menu">
	<a href="../">홈으로</a>
</div>
<hr>

<h3>HashMap - 연락처 목록</h3>
<div>홍길동 : ${phone['홍길동']}</div>
<div>심청 : ${phone['심청']}</div>
<div>서구청 : ${phone['서구청']}</div>

<hr>

<h3>colors</h3>
<div>${colors[0]}</div>
<div>${colors[1]}</div>
<div>${colors[2]}</div>

<hr>

<h3>취미 목록</h3>
<div>${hobby[0]}</div>
<div>${hobby[1]}</div>
<div>${hobby[2]}</div>

</body>
</html>