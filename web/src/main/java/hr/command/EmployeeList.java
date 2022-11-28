package hr.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import hr.DepartmentDTO;
import hr.EmployeeDTO;
import hr.HrDAO;

public class EmployeeList implements Command {

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		//부서목록 조회
		HrDAO dao = new HrDAO();
		List<DepartmentDTO> dList = dao.department_list();
		
		//사원목록 조회
		request.getParameter("department_id");
		int department_id = -1;
		if(request.getParameter("department_id") != null) {
			department_id = Integer.parseInt(
						request.getParameter("department_id"));
		}
		List<EmployeeDTO> list = dao.employee_list(department_id);
//		if(department_id == -1) {
//			list = dao.employee_list();
//		}else {
//			list = dao.employee_list(department_id);
//		}
		
		request.setAttribute("list", list);
		request.setAttribute("dList", dList);
		request.setAttribute("department_id", department_id);
	}

}
