package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.MembersVO;

public class MemNumFindDao {
	// 이름과 아이디를 입력하여 회원번호를 찾는 기능 구현 메소드
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	public static MemNumFindDao dao = new MemNumFindDao();
	private MemNumFindDao() {
		
	}

	public static MemNumFindDao getInstance() {
		return dao;
	}
	
	public MembersVO selectMn(Map<String,String> map) {
		SqlSession mapper = factory.openSession();
		MembersVO vo = mapper.selectOne("selectMn", map);
		mapper.close();
		return vo;
	}
}
