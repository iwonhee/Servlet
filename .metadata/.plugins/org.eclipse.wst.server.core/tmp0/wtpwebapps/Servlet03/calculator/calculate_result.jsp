<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
//입력한 정보 변수에 담기

int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String operator = request.getParameter("operator");

//계산하기
int result = 0;
if(operator.equals("+")){
	result = num1 + num2;
}else if(operator.equals("-")){
	result = num1 - num2;
}else if(operator.equals("*")){
	result = num1 * num2;
}else if(operator.equals("/")){
	result = num1 / num2;
}else{
	
}

//입력한 정보 세션에 담기
session.setAttribute("num1", num1);
session.setAttribute("num2", num2);
session.setAttribute("operator", operator);
session.setAttribute("result", result);

//화면 연결
// redirect
response.sendRedirect("../");
// forword
// RequestDispatcher rd = request.getRequestDispatcher("../");
// rd.forward(request, response);
%>

</body>
</html>