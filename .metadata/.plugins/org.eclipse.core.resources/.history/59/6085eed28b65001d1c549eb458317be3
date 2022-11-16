<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div><a href="../">홈으로</a></div>
<hr>
<%
pageContext.setAttribute("pageData", 100);
request.setAttribute("requestData", 200);
session.setAttribute("sessionData", 300);

request.setAttribute("data", 200);
pageContext.setAttribute("data", 100);
session.setAttribute("data", 300);

%>
<div>page 값 : ${pageData}</div>
<div>request 값 : ${requestData}</div>
<div>session 값 : ${sessionData}</div>
<div>data 값 : ${requestScope.data}</div>

<%
request.getRequestDispatcher("scope_result.jsp").forward(request, response);
%>

</body>
</html>