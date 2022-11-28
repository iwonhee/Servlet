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
        <jsp:include page="/include/sidebar.jsp"></jsp:include>
        <!-- Page content wrapper-->
	<div id="page-content-wrapper">
        <!-- Top navigation-->
        <jsp:include page="/include/navigation.jsp"></jsp:include>       
        <!-- Page content-->
    <div class="container-fluid">
    	<h2 class="mt-5">사원정보수정</h2>
        
        <table class='w-px600'>
        	<tr>
        		<th>사원명</th>
        		<td><input type='text' name='name' value='${dto.name}'></td>
        	</tr>
        	<tr>
        		<th>부서명</th>
        		<td><input type='text' name='department_name'></td>
        	</tr>
        </table>
                    
            </div> <!-- #wrapper -->
        </div> <!-- #page-content-wrapper -->
    </div> <!-- .container-fluid -->
</body>
</html>