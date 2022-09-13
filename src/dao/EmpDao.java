package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.EmployeeVO;

public class EmpDao {
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static EmpDao dao = new EmpDao();
	private EmpDao() {
		
	}
	
	public static EmpDao getInstance() {
		return dao;
	}
	
	// 직원 전체 조회
	public List<EmployeeVO> selectEmpList() {
		SqlSession mapper = factory.openSession();
		List<EmployeeVO> result = mapper.selectList("selectEmpList");
		mapper.close();
		return result;
	}
	
	// 직원번호 자동 생성
	public int getEmpSeq() {
		SqlSession mapper = factory.openSession();
		int seq = mapper.selectOne("getEmpSeq");
		mapper.close();
		return seq;
	}
	
	// 직원 추가
	public int EmpInsert(EmployeeVO vo) {
		SqlSession mapper = factory.openSession();
		int cnt = mapper.update("EmpInsert", vo);
		mapper.commit();
		mapper.close();
		return cnt;
	}
	
	// 직원 삭제
	public int EmpDelete(int emp_no) {
		SqlSession mapper = factory.openSession();
		int cnt = mapper.delete("EmpDelete", emp_no);
		mapper.commit();
		mapper.close();
		return cnt;		
	}
	
	// 직원 정보 가져오기
	public EmployeeVO selectEmp(int emp_no) {
		SqlSession mapper = factory.openSession();
		EmployeeVO emp = mapper.selectOne("selectEmp", emp_no);
		mapper.close();
		return emp;
	}
	
	// 직원 정보 수정
	public int update(EmployeeVO vo) {
		SqlSession mapper = factory.openSession();
		int cnt = mapper.update("update", vo);
		mapper.commit();
		mapper.close();
		return cnt;
	}
	
}
