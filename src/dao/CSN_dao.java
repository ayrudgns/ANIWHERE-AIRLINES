package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.CSN;


public class CSN_dao {
	private static CSN_dao dao = new CSN_dao();
	private CSN_dao() {};
	public static CSN_dao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	public void readcountUp(int idx) {
		SqlSession mapper = factory.openSession();
		mapper.update("readcountUp", idx);
		mapper.commit();
		mapper.close();
	}
	public int getCount() {
		SqlSession mapper = factory.openSession();
		int count = mapper.selectOne("getCount");
		mapper.close();
		return count;
	}
	public List<CSN> getPageList(Map<String, Integer> vo){
		SqlSession mapper = factory.openSession();
		List<CSN> list = mapper.selectList("getPageList", vo);
		mapper.close();
		return list;
	}
	public CSN getDetail(int idx){
		SqlSession mapper = factory.openSession();
		CSN vo = mapper.selectOne("CSN.detail", idx);
		mapper.close();
		return vo;
	}
	public int insert(CSN vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("CSN.insert", vo);  //여기 오류에요 .여긴 대문자 -> 오류 수정해봐요.
		mapper.commit();
		mapper.close();
		return result;
	}
	
	
}
