<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{font-size:18px;}
	a{
		color:inherit;
		text-decoration:none;
	}
	body{
		<%
		
		String cc = (String)session.getAttribute("cc");
		if( cc != null ){
			if(cc.equals("black")){
				out.print("background-color:#5B5B5B;");
				out.print("color:#fff;");
			}else if(cc.equals("blue")){
				out.print("background-color:#58B9FF;");
				out.print("color:#fff;");
			}else if(cc.equals("white")){
				out.print("background-color:white;");
				out.print("color:#111;");
			};
		}else{
			cc = "white";
		}
		
		%>
	}
	.menu{display:flex; column-gap:10px;}
	.menu a{
		text-align:center;
		text-decoration:none;
		color:inherit;
		padding: 2px 10px;
		margin-top:10px;
		height:28px;
		line-height:28px;
		cursor:pointer;
		border-radius:5px;
		border:1px solid #111;
		transition:all .2s;
	}
	.menu a:hover{
		<%
		if(cc.equals("black")){
			out.print("background-color:white;");
			out.print("color:black;");
		}else if(cc.equals("blue")){
			out.print("background-color:white;");
			out.print("color:#65b3ff;");
		}else if(cc.equals("white")){
			out.print("background-color:#333;");
			out.print("color:white;");
		};
		%>
	}
	
	.click_id a{
		display:block;
		text-align:center;
		padding:4px 8px;
		transition:all .2s;
	}
	.click_id a:hover{
		<%
		if(cc.equals("black")){
			out.print("background-color:white;");
			out.print("color:black;");
		}else if(cc.equals("blue")){
			out.print("background-color:white;");
			out.print("color:#65b3ff;");
		}else if(cc.equals("white")){
			out.print("background-color:#333;");
			out.print("color:white;");
		};
		%>
	}
	
	input[type=submit]{width:100px; height:30px;margin-top:20px;}
	input[type=text]{height:22px; line-height:22px;}
	.bar{
		width:50px;
		height:50px;
		border:1px solid #111;
	<%
	if(cc.equals("black")){
		out.print("background-color:black;");
	}else if(cc.equals("blue")){
		out.print("background-color:#1e90ff;");
	}else if(cc.equals("white")){
		out.print("background-color:white;");
	};
	%>
	}
</style>
</head>
<body>

</body>
</html>