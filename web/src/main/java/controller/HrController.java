package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import hr.command.EmployeeInfo;
import hr.command.EmployeeList;

@WebServlet("*.hr")
public class HrController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getServletPath();
		String view = "";
		boolean redirect = false;
		
		request.getSession().setAttribute("category", "hr");
		Command command;
		
		if(uri.equals("/list.hr")) {
			//전체 사원정보 조회
			command = new EmployeeList();
			command.exec(request, response);
			view = "employee/list.jsp";
		}else if(uri.equals("/info.hr")) {
			//선택한 사원정보 조회
			command = new EmployeeInfo();
			command.exec(request, response);
			view = "employee/info.jsp";
		}else if(uri.equals("/modify.hr")) {
			//사원정보 수정
			
			view = "employee/modify.jsp";
		}
		
		if(redirect)response.sendRedirect(view);
		else request.getRequestDispatcher(view).forward(request, response);
		
	}

}
