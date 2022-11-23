package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import dto.UserDTO;

public class UserAllCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//DB에서 전체 사용자이름 조회
		UserDAO dao = new UserDAO();
		List<String> list = dao.select_name_all();
		List<String> bList = dao.select_board_all();
		List<UserDTO> uList = dao.select_user_list();
		
		//request에 담기
		request.setAttribute("list", list);
		request.setAttribute("bList", bList);
		request.setAttribute("uList", uList);
	}

}
