<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Insert title here</title>
</head>
<body>
    <div class="d-flex" id="wrapper">
        <!-- SideBar-->
        <jsp:include page="/include/sidebar.jsp"/>
        <!-- Page content wrapper-->
	<div id="page-content-wrapper">
        <!-- Top navigation-->
        <jsp:include page="/include/navigation.jsp"/>
        <!-- Page content-->
    <div class="container-fluid">
    	<h2 class="w-px600">고객목록</h2>
                    
			<table class='tb_list w-px600'>
				<tr>
					<th>고객명</th>
					<th>이메일</th>
					<th>전화번호</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				<tr>
					<td><a href='info.cu?id=${dto.id}'>${dto.name}</a></td>
					<td>${dto.email}</td>
					<td>${dto.phone}</td>
				</tr>
				</c:forEach>
			</table>
                    
            </div> <!-- #wrapper -->
        </div> <!-- #page-content-wrapper -->
    </div> <!-- .container-fluid -->
</body>
</html>