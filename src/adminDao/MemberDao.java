package adminDao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import adminVo.MemberVO;
import adminVo.SaleVO;
import mybatis.SqlSessionBean;



public class MemberDao {
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static MemberDao dao = new MemberDao();
	private MemberDao() {  }
	public static MemberDao getInstance() {
		return dao;
	}

	public int getNextSeq() {
		SqlSession mapper = factory.openSession();
		int result = mapper.selectOne("getNextSeq");
		mapper.close();
		return result;
	}

	//insert(),update(),delete() 메소드는 member.xml에 resultType이 없이도
	// 실행결과 반영된 행의 개수를 리턴합니다.
	public int insert(MemberVO vo) {
		SqlSession mapper = factory.openSession();
		int result  = mapper.insert("insert", vo);	
		mapper.commit();     //mybatis SqlSession객체는 기본동작이 auto commit 이 아닙니다.!!!
		mapper.close();
		return result;
	}

	//commit 해야할 명령어 : insert, update ,delete
	public int update(MemberVO vo) {
		SqlSession mapper =factory.openSession();
		int result = mapper.update("update", vo);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	public MemberVO selectOne(int custno) {
		SqlSession mapper =factory.openSession();
		//리턴을 받는 메소드
		MemberVO result = mapper.selectOne("selectOne", custno);   
		//select 결과행 1개이면 selectOne(기본키 컬럼 조건 또는 unique와 not null 적용 컬럼 조건)
		mapper.close();
		return result;
	}
	
	public List<MemberVO> selectAll(){
		SqlSession mapper = factory.openSession();
		List<MemberVO> result=mapper.selectList("selectAll");  //select 결과행 1개 이상일수 있다면 selectList
		mapper.close();
		return result;
	}
	
	public int delete(int custno) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("deleteOne", custno);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	//search 결과는 여러 행이 될 수 있음	//map은 jsp에서 전달함
	//실행 쿼리는 like 연산으로 부분 일치 검색 : ex) where custname like '%길%'
	public List<MemberVO> search(Map<String,String> map){
		SqlSession mapper = factory.openSession();
		List<MemberVO> list = mapper.selectList("search", map);
		mapper.close();
		return list;
	}
	
	//join 결과
	public List<SaleVO> sales(){
		SqlSession mapper = factory.openSession();
		List<SaleVO> list = mapper.selectList("sales");
		mapper.close();
		return list;
	}
	
}
