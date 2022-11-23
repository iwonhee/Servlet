package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.UserAllCommand;
import command.UserCommand;
import command.UserInfoCommand;

@WebServlet("*.ju")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		uri = uri.substring(path.length());
		
		
		boolean redirect = false;
		String view = "";
		if( uri.equals("/user.ju")) {
			//특정 계정 정보
			UserCommand command = new UserCommand();
			command.execute(request, response);
			view = "user.jsp";

		}else if( uri.equals("/board.ju")) {
			//특정 게시판 정보
			UserCommand command = new UserCommand();
			command.execute(request, response);
			view = "board.jsp";
			
		}else if( uri.equals("/userAll.ju")) {
			//모든 계정 정보
			UserAllCommand command = new UserAllCommand();
			command.execute(request, response);
			view = "userAll.jsp";
			
		}else if( uri.equals("/boardAll.ju")) {
			//게시판 리스트
			UserAllCommand command = new UserAllCommand();
			command.execute(request, response);
			view = "boardAll.jsp";
			
		}else if( uri.equals("/info.ju")) {
			//특정 유저 정보
			UserInfoCommand command = new UserInfoCommand();
			command.execute(request, response);
			view = "user_info.jsp";
			
		}
		
		if( redirect ) {
			response.sendRedirect(view);
		}else {
			request.getRequestDispatcher(view).forward(request, response);
		}
	}//service

}
