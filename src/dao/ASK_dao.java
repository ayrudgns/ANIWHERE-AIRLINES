package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.ASK;

public class ASK_dao {
private static ASK_dao dao=new ASK_dao();
private ASK_dao() {};
public static ASK_dao getInstance() {
	return dao;
}

SqlSessionFactory factory = SqlSessionBean.getSessionFactory();

public int insert(ASK vo) {
	SqlSession mapper = factory.openSession();
	int result = mapper.insert("ASK.insert", vo);
	mapper.commit(); mapper.close();
	return result;
}
public List<ASK> getPageList2(Map<String, Integer> vo){
	SqlSession mapper = factory.openSession();
	List<ASK> list = mapper.selectList("getPageList2",vo);
	mapper.close();
	return list;
}
public ASK getDetail(int idx){
	SqlSession mapper = factory.openSession();
	ASK vo = mapper.selectOne("ASK.detail", idx);
	mapper.close();
	return vo;
}
public int getCount2() {
	SqlSession mapper = factory.openSession();
	int count = mapper.selectOne("getCount2");
	mapper.close();
	return count;
}
}
