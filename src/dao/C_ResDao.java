package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.C_ResVO;

public class C_ResDao {	//고객 정보 입력 후 예매하기 기능구현

	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static C_ResDao dao = new C_ResDao();
	private C_ResDao() {
		
	}
	
	public static C_ResDao getInstance() {
		return dao;
	}
	

	//예매하기 기능
	public int insert(C_ResVO vo) {
		SqlSession mapper = factory.openSession();
		int res = mapper.insert("insertRes",vo);
		mapper.commit();
		mapper.close();
		return res;
	}
	
	//예매내역 변경 기능
	public int update(C_ResVO vo) {
		SqlSession mapper = factory.openSession();
		int result = mapper.update("update", vo);
		mapper.commit(); mapper.close();
		return result;
	}
	
	//예매내역 조회 기능
	public List<C_ResVO> getList(int mem_no){
		SqlSession mapper = factory.openSession();
		List<C_ResVO> result = mapper.selectList("C_ResList",mem_no);
		mapper.close();
		return result;
	}
	
	//선택한 예매 정보 가져오기
	public C_ResVO selectRes(int res_no) {
		SqlSession mapper = factory.openSession();
		C_ResVO res = mapper.selectOne("selectRes", res_no);
		mapper.close();
		return res;
	}
	
	//예매취소 기능
	public int deleteRes(int res_no) {		//예매번호 삭제로 예매 취소하기
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("deleteRes",res_no);
		mapper.commit();
		mapper.close();
		return result;
	}

	
	
}

// "" 공백은 이후 xml 파일 보면서 채워나갈 예정. sql문에 따라 dao가 변경될 여지 있음.