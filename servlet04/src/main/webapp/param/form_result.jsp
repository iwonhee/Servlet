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
<h3>파라미터 확인</h3>
<div>이름 : ${param.name}</div>
<div>연락처 : ${phone[param.name]}</div>
<div>성별 : ${param.gender}</div>
<div>스포츠 : 
	${paramValues.sports[0]}
	${paramValues.sports[1]}
	${paramValues.sports[2]}
	${paramValues.sports[3]}
	<!-- 해당 값이 없어도 에러 발생 x -->
	<!-- 반복문.. taglib 사용하면 가능 -->
</div>

<hr>
<h3>내부적으로 가지고 있는 설정값</h3>
<div>요청url : ${pageContext.request.requestURL}</div>
<div>호스트명(서버명) : ${pageContext.request.serverName}</div>
<div>어플리케이션 경로 : ${pageContext.servletContext.contextPath}</div>
<div>요청uri : ${pageContext.request.requestURI}</div>

</body>
</html>