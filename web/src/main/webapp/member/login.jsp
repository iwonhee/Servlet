<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Insert title here</title>
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<link href="css/styles.css?<%= new java.util.Date() %>" rel="stylesheet" />
	<link href="css/common.css?<%= new java.util.Date() %>" rel="stylesheet" />
	
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="js/scripts.js"></script>
</head>
<body>
    <div class="d-flex" id="wrapper">
        <!-- SideBar-->
            
        <!-- Page content wrapper-->
	<div id="page-content-wrapper">
        <!-- Top navigation-->
                
        <!-- Page content-->
    <div class="container-fluid center">
		<a href='<c:url value="/"/>'><img alt="login_img" src='<c:url value="/images/hanul.logo.png"/>'></a>    	
		<div class='box'>
	    	<ul>
	    		<li><input class='chk' type='text' id='userid' placeholder='아이디'></li>
	    		<li><input class='chk' type='password' id='userpw' placeholder='비밀번호'></li>
	    		<li><input onclick="fn_login()" class='btn btn-primary' type='button' value='로그인'></li>
	    	</ul>		
		</div>
                    
            </div> <!-- #wrapper -->
        </div> <!-- #page-content-wrapper -->
    </div> <!-- .container-fluid -->
    
    <script>
    	
    	function emptyCheck(){
    		var ok = true;
    		$('.chk').each(function(){
    			if($(this).val()==''){
    				var tag = $(this).attr('placeholder')
    				alert(tag + '가 없다');
    				$(this).focus();
    				ok = false;
    				return ok;
    			}	
    		});
    		return ok;
    	}
    
    	$('#userpw').keypress(function(e){
    		//enter 키를 누를때만 로그인 처리되게
    		if(e.keyCode == 13) fn_login();
    	});
    
    	function fn_login(){
    		//아이디,비밀번호 모두 입력되었는지 확인
    		if( ! emptyCheck() ) return;
    		
    		//로그인 처리
    		$.ajax({
    			url: 'smartLogin.mb',
    			data: { id : $('#userid').val(),
    					pw : $('#userpw').val() },
    			success : function( response ){
    				console.log(response);
    				if( JSON.parse(response) ){
    					location= '<c:url value="/"/>';
    				}else{
    					alert("아이디나 비밀번호가 일치하지 않습니다");
    				}
    			}, error : function(req, text){
    				alert(text + ':' + req.status);
    			}
    		});
    	}
    </script>
    
</body>
</html>




