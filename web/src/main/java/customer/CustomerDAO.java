package customer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.HanulFactory;

public class CustomerDAO {
	private SqlSession sql;	//쿼리문 실행 메소드가 있는 객체
	
	private void connect() {
		SqlSessionFactory factory = HanulFactory.getInstance();
		sql = factory.openSession(true);
	}
	
	// 선택한 고객정보 삭제(Delete)
	public void customer_delete(int id) {
		connect();
		sql.delete("customer.delete", id);
	}
	
	// 신규 고객정보 입력(Insert)
	public void customer_insert(CustomerDTO dto) {
		connect();
		sql.insert("customer.insert", dto);
	}
	
	// 변경한 고객정보 저장(Update)
	public void customer_update(CustomerDTO dto) {
		connect();
		sql.update("customer.update", dto);
	}
	
	// 선택한 고객정보 조회
	public CustomerDTO customer_info(int id) {
		connect();
		CustomerDTO dto = sql.selectOne("customer.info", id);
		return dto;
	}
	
	// 전체 고객목록 조회
	public List<CustomerDTO> customer_list() {
		connect();
		List<CustomerDTO> list = sql.selectList("customer.list");
		return list;
	}
	
}
