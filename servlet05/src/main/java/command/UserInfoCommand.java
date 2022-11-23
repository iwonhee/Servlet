package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import dto.UserDTO;

public class UserInfoCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//DB에서 선택한 사용자의 정보를 조회
		String id = request.getParameter("id");
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.select_user_info(id);
		
		//화면에 출력하도록 request에 담기
		request.setAttribute("dto", dto);
	}

}
