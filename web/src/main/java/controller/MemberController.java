package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import member.command.MemberLogin;
import member.command.MemberLogout;

@WebServlet("*.mb")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("category");;
		
		String uri = request.getServletPath();
		String view = "";
		boolean redirect = false;
		Command cmd = null;
		
		if(uri.equals("/login.mb")) {
			//로그인 페이지로 이동
			view = "member/login.jsp";
		}else if(uri.equals("/smartLogin.mb")) {
			//로그인 처리
			cmd = new MemberLogin();
			cmd.exec(request, response);
			return; //화면연결 응답 x (redirect,forward 걸리지 않게)
		}else if(uri.equals("/logout.mb")) {
			//로그아웃 처리
			cmd = new MemberLogout();
			cmd.exec(request, response);
			view = (String)request.getAttribute("url");
			redirect = true;
		}
		
		if(redirect) response.sendRedirect(view);
		else request.getRequestDispatcher(view).forward(request, response);
		
	}

}
