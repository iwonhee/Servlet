package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;

public class UserCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO dao = new UserDAO();
		String name = dao.select_name();
		int money = dao.select_money();
		String title = dao.select_title();
		String content = dao.select_content();
		
		request.setAttribute("name", name);
		request.setAttribute("money", money);
		request.setAttribute("title", title);
		request.setAttribute("content", content);
	}

}
