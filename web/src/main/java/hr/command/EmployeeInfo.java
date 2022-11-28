package hr.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import hr.EmployeeDTO;
import hr.HrDAO;

public class EmployeeInfo implements Command {

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		//선택한 사원정보 조회
		HrDAO dao = new HrDAO();
		EmployeeDTO dto = dao.employee_info(Integer.parseInt(request.getParameter("id")));
		//request에 담기
		request.setAttribute("dto", dto);
	}

}
