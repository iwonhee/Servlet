<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<a href="index.jsp">JSTL</a>
</div>
<hr>
<h2>코어 라이브러리 실습</h2>
<h4>1. 변수</h4>
<c:set var='name' value="홍길동"/>
<div>선언한 변수값 name : ${name}</div>	<!-- pageScope -->
<c:remove var="name" />
<div>변수삭제 후 name : ${name}</div>	<!-- pageScope -->

<br>
<hr>
<h4>2. 조건문 - if문</h4>
<c:set var="no1" value="10"></c:set>
<c:set var="no2" value="20"></c:set>
<div>
	${no1} 과 ${no2} 중 더 큰 수 : 
	<c:if test="${no1 gt (no2-0)}">
	${no1}
</c:if>
<!-- else if가 없으므로 반대 개념으로 if을 새로 만들어야 한다 -->
<c:if test="${no1 - no2 lt 0}">
	${no2}
</c:if>
</div>

<br>
<hr>
<h4>3. 조건문 - choose문</h4>
<c:set var="score" value="88"/>
<c:choose>
	<c:when test="${score ge 90}"><c:set var="grade" value="A"/></c:when>
	<c:when test="${score ge 80}"><c:set var="grade" value="B"/></c:when>
	<c:when test="${score ge 70}"><c:set var="grade" value="C"/></c:when>
	<c:otherwise><c:set var="grade" value="F"/></c:otherwise>
</c:choose>
<div>성적 : ${score} ( ${grade}학점 )</div>

<br>
<hr>
<h4>4. 반복문 - 기본for문</h4>
<div>1~10까지 출력 : 
	<c:forEach var="no" begin="1" end="10" step="1">
		${no}
		<c:set var="sum" value="${no + sum}"/>	<!-- 없으면 선언 x -->
	</c:forEach>
</div>
<div>1~10까지의 합 : ${sum}</div>

<br>
<hr>
<h4>5. 반복문 - 향상된for문</h4>
<%
String subjects[] = {"Java", "Oracle", "HTML", "Android", "Deep Sleep"};
request.setAttribute("subjects", subjects);
%>
<div>과목명 : 
	<c:forEach items="${subjects}" var="subject">
		${subject}
	</c:forEach>
</div>

<%
ArrayList<Integer> list = new ArrayList<Integer>();
list.add( 90 );
list.add( 88 );
list.add( 80 );
list.add( 72 );
list.add( 99 );
request.setAttribute("score_list", list);
%>
<div>성적 : 
	<c:forEach items="${score_list}" var="score" varStatus="state">
		${score}${state.index != 4 ? ', ' : ''}
	</c:forEach>
</div>

<%
HashMap<String, Integer> map = new HashMap<String, Integer>();
map.put("Java", 90);
map.put("Oracle", 88);
map.put("HTML", 80);
map.put("Android", 72);
map.put("Deep Sleep", 99);
request.setAttribute("score_map", map);
%>
<div>[[과목별 성적]] <br>
	<c:forEach items="${score_map}" var="score" varStatus="state">
		${state.first ? '' : ', '}${score.key} : ${score.value}
		${state.last ? '끝' : ''}
	</c:forEach>
</div>

<br>
<hr>
<h4>※ 구구단 3단 출력(forEach)</h4>
<c:set var="no3" value="3" />
<c:forEach var="i" begin="1" end="9">
	<div>
		${no3} * ${i} = ${no3 * i}
	</div>
</c:forEach>

<br><br><br><br>
<br><br><br><br>
</body>
</html>














