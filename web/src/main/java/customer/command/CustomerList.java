package customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import customer.CustomerDAO;

public class CustomerList implements Command {

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		// DB에서 전체 고객 목록을 조회
		CustomerDAO dao = new CustomerDAO();
		// 화면에 출력하도록 request에 담기
		request.setAttribute("list", dao.customer_list());
		request.getSession().setAttribute("category", "cu");
		
	}

}
