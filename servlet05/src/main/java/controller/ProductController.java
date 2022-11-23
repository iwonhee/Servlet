package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.ProductAllCommand;
import command.ProductComCommand;
import command.ProductInfoCommand;

@WebServlet("*.pd")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		uri = uri.substring(path.length());
		
		boolean redirect = false;
		String view = "";
		if( uri.equals("/productAll.pd")) {
			ProductAllCommand command = new ProductAllCommand();
			command.execute(request, response);
			view = "productAll.jsp";
			
		}else if( uri.equals("/productInfo.pd")) {
			ProductInfoCommand command = new ProductInfoCommand();
			command.execute(request, response);
			view = "product_info.jsp";
			
		}else if( uri.equals("/productComInfo.pd")) {
			ProductComCommand command = new ProductComCommand();
			command.execute(request, response);
			view = "productComInfo.jsp";
			
		}
		
		if( redirect ) {
			response.sendRedirect(view);
		}else {
			request.getRequestDispatcher(view).forward(request, response);
		}
	}

}
