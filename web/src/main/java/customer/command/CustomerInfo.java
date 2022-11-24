package customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import customer.CustomerDAO;
import customer.CustomerDTO;

public class CustomerInfo implements Command {

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		//선택한 고객정보를 DB에서 조회
		int id = Integer.parseInt(request.getParameter("id"));
		CustomerDAO dao = new CustomerDAO();
		CustomerDTO dto = dao.customer_info(id);
		
		//request에 담기
		request.setAttribute("dto", dto);
	}

}
