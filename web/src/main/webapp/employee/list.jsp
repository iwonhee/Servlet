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
    	<h2 class="mt-5">사원목록</h2>
    	
    	<form method='post' action='list.hr'>
    	<div class='list-flex w-px840' >
	    	<div id='list-top'>
	    		<ul>
	    			<li>부서명</li>
	    			<li>
	    				<select name='department_id' class='w-px200' onchange='$("form").submit()'>
	    					<option value='-1'>전체부서</option>
	    					<c:forEach items='${dList}' var='d'>
		    					<option ${department_id eq d.department_id ? 'selected' : ''} 
		    						value='${d.department_id}'>${d.department_name}</option>    						
	    					</c:forEach>
	    				</select>
	    			</li>
	    		</ul>
	    	</div>
	    	
	    	<div class='btnSet'>
	    		<button class='btn btn-primary w-px120'
	    				onclick='location="insert.hr"'>사원등록</button>
	    	</div>
	    </div>
    	<table class="w-px840">
    	<colgroup>
    		<col width='80px'>
    		<col width='190px'>
    		<col width='150px'>
    		<col>
    		<col width='120px'>
    	</colgroup>
    	<tr>
    		<th>사번</th>
    		<th>사원명</th>
    		<th>부서</th>
    		<th>업무</th>
    		<th>입사일</th>
    	</tr>
    	<c:forEach items="${list}" var="dto">    		
	    	<tr>
	    		<td>${dto.employee_id}</td>
	    		<td class='click'><a href='info.hr?id=${dto.employee_id}'>${dto.name}</a></td>
	    		<td>${dto.department_name}</td>
	    		<td>${dto.job_title}</td>
	    		<td>${dto.hire_date}</td>
	    	</tr>
    	</c:forEach>
    	</table>
    	
    	</form>
    	
    	<br><br>
                    
            </div> <!-- #wrapper -->
        </div> <!-- #page-content-wrapper -->
    </div> <!-- .container-fluid -->
</body>
</html>