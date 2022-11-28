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
    	<h2 class="mt-4">고객정보수정</h2>
    	
        <form action="update.cu" method="post">
        
        	<input type='hidden' name='id' value='${dto.id}'>
	        <table class="w-px400">
	        	<tr>
	        		<th class="w-px140">고객명</th>
	        		<td><input type='text' name='name' value='${dto.name}'></td>
	        	</tr>
	        	<tr>
	        		<th>성별</th>
	        		<td>
	        			<input type='radio' name='gender' ${dto.gender eq '남' ? 'checked' : ''} value='남'>남
	        			<input type='radio' name='gender' ${dto.gender eq '여' ? 'checked' : ''} value='여'>여
	        		</td>
	        	</tr>
	        	<tr>
	        		<th>이메일</th>
	        		<td><input type='text' name='email' value='${dto.email}'></td>
	        	</tr>
	        	<tr>
	        		<th>전화번호</th>
	        		<td><input type='text' name='phone' value='${dto.phone}'></td>
	        	</tr>
	        </table>
	    	<div class="btnSet">
	    		<button class='btn btn-primary'
	    			onclick='$("form").submit()'>저장</button>
	    		<button class='btn btn-secondary'
	    			onclick='location="info.cu?id=${dto.id}"'>취소</button>
	    	</div>   
	    	
        </form>   
        
            </div> <!-- #wrapper -->
        </div> <!-- #page-content-wrapper -->
    </div> <!-- .container-fluid -->
</body>
</html>