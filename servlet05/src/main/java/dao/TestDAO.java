package dao;


import java.sql.Date;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.MybatisFactory;

public class TestDAO {
	private SqlSession sql;
	/*
	[SqlSession]
	PreparedStatement -> SqlSession 
	executeQuery() -> selectOne, selectList("(mapper의)namespace.쿼리태그id")
	executeUpdate() -> update, insert, delete
	*/
	public Date select_today() {
		connect();
		Date today = sql.selectOne("test.select_today");
		return today;
	}
	
	public String select_now() {
		connect();
		String now = sql.selectOne("test.select_now");
		return now;
	}
	
	public int select_users() {
		connect();
		int users = sql.selectOne("test.select_users");
		return users;
	}
	
	void connect() {
		SqlSessionFactory factory = MybatisFactory.getInstance();
		sql = factory.openSession(true);
		/*
		String resource = "mybatis/config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory 
				= new SqlSessionFactoryBuilder().build(inputStream);
			session = sqlSessionFactory.openSession(true); // true : auto commit
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		*/
	}
	/*
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	//오늘 날짜 조회
	public Date select_today() {
		Date today = null;
		connect();
		String sql = "SELECT sysdate FROM dual";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			today = rs.getDate("sysdate");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return today;
	}
	
	void connect(){
		try {
			//context.xml 에 선언한 Resource 찾기
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/smart");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//connect()
	
	void disconnect() {
		if( rs!=null )try {rs.close();} catch (SQLException e) {e.printStackTrace();}
		if( ps!=null )try {ps.close();} catch (SQLException e) {e.printStackTrace();}
		if( conn!=null )try {conn.close();} catch (SQLException e) {e.printStackTrace();}
	}//disconnect()
	*/
	
}
