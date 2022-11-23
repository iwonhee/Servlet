package dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.ProductDTO;
import mybatis.MybatisFactory;

public class ProductDAO {
	private SqlSession sql;
	void connect() {
		SqlSessionFactory factory = MybatisFactory.getInstance();
		sql = factory.openSession(true);
	}
	
	//선택한 제조사의 상품정보 조회
	public List<ProductDTO> select_product_com(String com) {
		connect();
		List<ProductDTO> list = sql.selectList("product.product_com", com);
		return list;
	}
	
	//선택한 상품정보 조회
	public ProductDTO select_product_info(int num) {
		connect();
		ProductDTO dto = sql.selectOne("product.product_info",num);
		return dto;
	}
	
	//전체상품정보 조회
	public List<ProductDTO> select_product_all() {
		connect();
		List<ProductDTO> list = sql.selectList("product.product_list");
		return list;
	}
}
