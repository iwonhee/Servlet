package hr;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.HrFactory;

public class HrDAO {
	private SqlSession sql;
	private void connect() {
		SqlSessionFactory factory = HrFactory.getInstance();
		sql = factory.openSession(true);
	}
	
	//사원이 소속되어 있는 부서목록 조회
	public List<DepartmentDTO> department_list() {
		connect();
		List<DepartmentDTO> list = sql.selectList("hr.department_list");
		return list;
	}
	
	//신규사원등록
	public void employee_regist(EmployeeDTO dto) {
		
	}
	
	//전체사원목록 조회
	public List<EmployeeDTO> employee_list() {
		connect();
		List<EmployeeDTO> list = sql.selectList("hr.list");
		return list;
	}
	
	//선택한 부서의 사원정보 조회
	public List<EmployeeDTO> employee_list(int department_id) {
		connect();
		List<EmployeeDTO> list = sql.selectList("hr.list", department_id);
		return list;
	}
	
	//선택한 사원정보 조회
	public EmployeeDTO employee_info(int employee_id) {
		connect();
		EmployeeDTO dto = sql.selectOne("hr.info", employee_id);
		return dto;
	}
	
	//선택한 사원정보 변경
	public void employee_update(EmployeeDTO dto) {
		
	}
	
	//선택한 사원정보 삭제
	public void employee_delete(int employee_id) {
		
	}
	
}
