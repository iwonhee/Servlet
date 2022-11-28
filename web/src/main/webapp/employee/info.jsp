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
    	<h2 class="mt-5">사원정보</h2>
                    
        <table class='w-px600'>
        	<tr>
        		<th class='w-px140'>사번</th>
        		<td>${dto.employee_id}</td>
        	</tr>
        	<tr>
        		<th>사원명</th>
        		<td>${dto.name}</td>
        	</tr>
        	<tr>
        		<th>부서명</th>
        		<td>${dto.department_name}</td>
        	</tr>
        	<tr>
        		<th>업무</th>
        		<td>${dto.job_title}</td>
        	</tr>
        	<tr>
        		<th>급여</th>
        		<td>${dto.salary}</td>
        	</tr>
        	<tr>
        		<th>이메일</th>
        		<td>${dto.email}</td>
        	</tr>
        	<tr>
        		<th>전화번호</th>
        		<td>${dto.phone_number}</td>
        	</tr>
        	<tr>
        		<th>입사일</th>
        		<td>${dto.hire_date}</td>
        	</tr>
        	<tr>
        		<th>관리자</th>
        		<td>${dto.manager_name}</td>
        	</tr>
        </table>            
        
        <div class='btnSet'>
        	<button class='btn btn-primary' 
        			onclick='location="modify.hr?id=${dto.employee_id}"'>정보수정</button>
  			<button class='btn btn-secondary' 
  			onclick='location="list.hr"'>돌아가기</button>
        </div>
        
            </div> <!-- #wrapper -->
        </div> <!-- #page-content-wrapper -->
    </div> <!-- .container-fluid -->
</body>
</html>