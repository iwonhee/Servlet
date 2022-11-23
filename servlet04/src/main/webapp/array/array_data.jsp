<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
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
<h3>배열, 자료구조(ArrayList, HashMap)</h3>
<%
String[] hobby = {"털뭉치", "고영희", "고냠미"};
request.setAttribute("hobby", hobby);

ArrayList<String> list = new ArrayList<String>();
list.add("하얀색");
list.add("검정색");
list.add("노란색");
session.setAttribute("colors", list);

HashMap<String, String> map = new HashMap<String, String>();
map.put("홍길동", "010-1234-5229");
map.put("심청", "010.4321.5229");
map.put("서구청", "062-321-5229");
session.setAttribute("phone", map);

request.getRequestDispatcher("array_result.jsp")
			.forward(request, response);


%>
</body>
</html>