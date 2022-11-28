package customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import customer.CustomerDAO;

public class CustomerDelete implements Command {

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		CustomerDAO dao = new CustomerDAO();
		dao.customer_delete(Integer.parseInt(request.getParameter("id")));
	}

}
