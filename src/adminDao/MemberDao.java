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

	//insert(),update(),delete() �޼ҵ�� member.xml�� resultType�� ���̵�
	// ������ �ݿ��� ���� ������ �����մϴ�.
	public int insert(MemberVO vo) {
		SqlSession mapper = factory.openSession();
		int result  = mapper.insert("insert", vo);	
		mapper.commit();     //mybatis SqlSession��ü�� �⺻������ auto commit �� �ƴմϴ�.!!!
		mapper.close();
		return result;
	}

	//commit �ؾ��� ��ɾ� : insert, update ,delete
	public int update(MemberVO vo) {
		SqlSession mapper =factory.openSession();
		int result = mapper.update("update", vo);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	public MemberVO selectOne(int custno) {
		SqlSession mapper =factory.openSession();
		//������ �޴� �޼ҵ�
		MemberVO result = mapper.selectOne("selectOne", custno);   
		//select ����� 1���̸� selectOne(�⺻Ű �÷� ���� �Ǵ� unique�� not null ���� �÷� ����)
		mapper.close();
		return result;
	}
	
	public List<MemberVO> selectAll(){
		SqlSession mapper = factory.openSession();
		List<MemberVO> result=mapper.selectList("selectAll");  //select ����� 1�� �̻��ϼ� �ִٸ� selectList
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
	
	//search ����� ���� ���� �� �� ����	//map�� jsp���� ������
	//���� ������ like �������� �κ� ��ġ �˻� : ex) where custname like '%��%'
	public List<MemberVO> search(Map<String,String> map){
		SqlSession mapper = factory.openSession();
		List<MemberVO> list = mapper.selectList("search", map);
		mapper.close();
		return list;
	}
	
	//join ���
	public List<SaleVO> sales(){
		SqlSession mapper = factory.openSession();
		List<SaleVO> list = mapper.selectList("sales");
		mapper.close();
		return list;
	}
	
}
