package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.UserDTO;
import mybatis.MybatisFactory;

public class UserDAO {
	// preparedStatement에 해당함
	private SqlSession sql;
	
	void connect() {
		SqlSessionFactory factory = MybatisFactory.getInstance();
		sql = factory.openSession(true);
	}
	
	//선택한 사용자 정보 조회
	public UserDTO select_user_info(String id) {
		connect();
		UserDTO dto = sql.selectOne("user.user_info", id);
		return dto;
	}
	
	//전체 사용자정보 조회
	public List<UserDTO> select_user_list() {
		connect();
		List<UserDTO> list = sql.selectList("user.user_list");
		return list;
	}
	
	//전체 사용자이름 조회
	public List<String> select_name_all() {
		connect();
		List<String> list = sql.selectList("user.name_all");
		return list;
	}
	//전체 게시판제목 조회
	public List<String> select_board_all(){
		connect();
		List<String> bList = sql.selectList("user.board_all");
		return bList;
	}
	
	//User 이름 조회
	public String select_name() {
		connect();
		String name = sql.selectOne("user.select_name");
		return name;
	}
	
	//User Money 조회
	public int select_money() {
		connect();
		int money = sql.selectOne("user.select_money");
		return money;
	}
	
	//Board 제목 조회
	public String select_title() {
		connect();
		String title = sql.selectOne("user.select_title");
		return title;
	}
	
	//Board 내용 조회
	public String select_content() {
		connect();
		String content = sql.selectOne("user.select_content");
		return content;
	}
}
