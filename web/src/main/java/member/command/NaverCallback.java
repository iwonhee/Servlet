package member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import common.Command;
import common.CommonUtil;
import member.MemberDTO;

public class NaverCallback implements Command {

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		//API 요청 성공시 : http://콜백URL/redirect?code={code값}&state={state값}
		//API 요청 실패시 : http://콜백URL/redirect?state={state값}&error={에러코드값}&error_description={에러메시지}
		String state = request.getParameter("state");
		String code = request.getParameter("code");
		//code : 성공시 값이 있고, 실패시 null
		
		//세션에 저장된 state와 파라미터로 받은 state가 일치하는지 확인
		String session_state 
			= (String)request.getSession().getAttribute("state");
		if(state.equals(session_state) && code != null) {
			//https://nid.naver.com/oauth2.0/token?grant_type=authorization_code
			//&client_id=jyvqXeaVOVmV
			//&client_secret=527300A0_COq1_XV33cf
			//&code=EIc5bFrl4RibFls1
			//&state=9kgsGTfH4j7IyAkg  
			StringBuffer url = new StringBuffer("https://nid.naver.com/oauth2.0/token?grant_type=authorization_code");
			url.append("&client_id=").append((String)request.getAttribute("naver_id"));
			url.append("&client_secret=").append((String)request.getAttribute("naver_secret"));
			url.append("&code=").append(code);
			url.append("&state=").append(state);
			
			//접근 토큰 발급요청
			String tokens = CommonUtil.requestAPI(url.toString());
			//String -> JSON (lib 필요)
			JSONObject json = new JSONObject(tokens);	//map의 형태로 담겨있음
			String access = json.getString("access_token");
			String type = json.getString("token_type");
			
			//접근 토큰을 이용하여 프로필 API 호출하기 
			url = new StringBuffer("https://openapi.naver.com/v1/nid/me");
			String profile = CommonUtil.requestAPI(
					url.toString(), type + " " + access);
			json = new JSONObject(profile);
			if(json.getString("resultcode").equals("00")) {
				json = json.getJSONObject("response");
				MemberDTO dto = new MemberDTO();
				dto.setSocial("N");
				dto.setUserid(json.getString("id")) ;
				dto.setEmail(json.getString("email"));
				dto.setName(json.getString("name"));
				if(dto.getName().isEmpty()) {
					dto.setName(json.getString("nickname"));
				}
				dto.setProfile_image(json.has("profile_image") 
						? json.getString("profile_image") : "");
				//성별 : F여,M남
				if(json.has("gender")) {
					dto.setGender(
							json.getString("gender").equals("F") ? "여" : "남");
				}
				if(json.has("birthyear")) {
					dto.setBirth(
							json.getString("birthyear")+"-"
									+ json.getString("birthday"));
				}
				if(json.has("mobile")) {
					dto.setPhone(json.getString("mobile"));
				}
			}
		}
		
	}

}
