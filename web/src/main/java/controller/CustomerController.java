package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import customer.command.CustomerInfo;
import customer.command.CustomerList;

@WebServlet("*.cu")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getServletPath();
		
		String view = "";
		boolean redirect = false;
		Command command = null;
		
		if( uri.equals("/list.cu")) {
			//고객목록화면 요청
			//비즈니스 로직
			command = new CustomerList();
			command.exec(request, response);
			
			//응답화면 연결
			view = "customer/list.jsp";
		}else if( uri.equals("/info.cu")) {
			//선택한 고객정보화면 요청
			command = new CustomerInfo();
			command.exec(request, response);
			view = "customer/info.jsp";
		}
		
		// 화면연결 기본은 forward 방식
		// redirect : DB에 insert, update, delete 요청시
		if( redirect ) {
			response.sendRedirect(view);
		}else {
			request.getRequestDispatcher(view).forward(request, response);
		}
		
		
	}

}
