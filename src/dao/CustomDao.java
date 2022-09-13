package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.MembersVO;

public class CustomDao {
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static CustomDao dao = new CustomDao();

	private CustomDao() {
	}

	public static CustomDao getInstance() {
		return dao;
	}	
	
	
	// 고객 전체 조회
	public List<MembersVO> selectCusList() {
		SqlSession mapper = factory.openSession();
		List<MembersVO> result = mapper.selectList("selectCusList");
		mapper.close();
		return result;
	}
	
	// 회원 검색 메소드
	public List<MembersVO> search(Map<String, String> map) {
		SqlSession mapper = factory.openSession();
		List<MembersVO> list = mapper.selectList("search", map); 
		mapper.close();
		return list;
	}
	
	//로그인
    public MembersVO login(Map<String,String> map) {
       SqlSession mapper = factory.openSession();
    MembersVO vo = mapper.selectOne("login",map);
    mapper.close();
    return vo;
    
 }
    //id중복체크
    public int duplecateID(String id){
    	SqlSession mapper = factory.openSession();
    	int cnt= mapper.selectOne("doubleId",id);
    	 mapper.close();
    	    return cnt;
           
    }
    //휴대폰번호중복체크
    //email중복체크
    public int duplecateEmail(String email){
    	SqlSession mapper = factory.openSession();
    	int cnt= mapper.selectOne("doubleEmail",email);
    	mapper.close();
    	return cnt;
    	
    }
    //휴대폰번호중복체크
    public int duplecatePhone(String phone){
    	SqlSession mapper = factory.openSession();
    	int cnt= mapper.selectOne("doublePhone",phone);
    	mapper.close();
    	return cnt;
    	
    }
    
    //id찾기
    public String yourId(Map<String,String> map){
    	SqlSession mapper = factory.openSession();
    	String id = mapper.selectOne("yourId",map);
    	 mapper.close();
    	    return id;
           
    }
    
    //비밀번호 찾기
    public String yourPassword(Map<String,String> map){
    	SqlSession mapper = factory.openSession();
    	String password = mapper.selectOne("yourPassword",map);
    	 mapper.close();
    	    return password;
           
    }
    
    //회원가입
    public int signUp(MembersVO vo){
    	SqlSession mapper = factory.openSession();
    	int result=mapper.insert("signUp",vo);
    	mapper.commit();
    	mapper.close();
    	return result;
    	
    }
    
	
}
 