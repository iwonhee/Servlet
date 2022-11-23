package mybatis;

import java.io.InputStream;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisFactory {
	private static SqlSessionFactory factory;
	
	// static 초기화로 반환하기
//	static {
//		String resource = "mybatis/config.xml";
//		InputStream inputStream;
//		try {
//			inputStream = Resources.getResourceAsStream(resource);
//			factory
//			= new SqlSessionFactoryBuilder().build(inputStream);
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//	}
	
	public static SqlSessionFactory getInstance() {
		
		// factory를 한번만 생성
		if( factory == null ) {
			String resource = "mybatis/config.xml";
			InputStream inputStream;
			try {
				inputStream = Resources.getResourceAsStream(resource);
				factory
				= new SqlSessionFactoryBuilder().build(inputStream);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		
		return factory;
	}
	
}
