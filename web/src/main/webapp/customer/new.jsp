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
    	<h2 class="mt-4">신규고객등록</h2>
                    
        <form action="insert.cu" method="post" autocomplete="off">
        
	        <table class="w-px400">
	        	<tr>
	        		<th class="w-px140">고객명</th>
	        		<td><input type='text' name='name'></td>
	        	</tr>
	        	<tr>
	        		<th>성별</th>
	        		<td>
	        			<input type='radio' id='male' name='gender' value='남' checked>
	        			<label for='male'>남</label>
	        			<label><input type='radio' name='gender' value='여'>여</label>
	        		</td>
	        	</tr>
	        	<tr>
	        		<th>이메일</th>
	        		<td><input type='text' name='email'></td>
	        	</tr>
	        	<tr>
	        		<th>전화번호</th>
	        		<td><input type='text' name='phone'></td>
	        	</tr>
	        </table>
	    	
        </form>               
    	<div class="btnSet">
    		<button class='btn btn-primary mr-5'
    			onclick='$("form").submit()'>저장</button>
    		<button class='btn btn-secondary'
    			onclick='location="list.cu"'>취소</button>
    	</div>   
        
            </div> <!-- #wrapper -->
        </div> <!-- #page-content-wrapper -->
    </div> <!-- .container-fluid -->
</body>
</html>