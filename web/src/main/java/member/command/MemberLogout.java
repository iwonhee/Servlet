package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class MemberLogout implements Command {

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		//세션에 담긴 로그인 정보 삭제
		request.getSession().removeAttribute("loginInfo");
		request.setAttribute("url", request.getContextPath());
	}

}
