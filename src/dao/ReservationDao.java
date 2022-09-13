package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.A_ReservationVO;
import vo.ReservationVO;

public class ReservationDao {

	private static ReservationDao dao = new ReservationDao();
	private ReservationDao() {};
	public static ReservationDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();

	//예매하기 기능
	public void insert(ReservationVO vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("Reservation.insert",vo);
		mapper.commit();
		mapper.close();
	}
	
	//예매내역 변경 기능
	public void update(ReservationVO vo) {
		SqlSession mapper = factory.openSession();
		mapper.update("Reservation.update", vo);
		mapper.commit();
		mapper.close();
	}
	
	//예매내역 조회 기능
	public List<ReservationVO> getList(Map<String,String> map){
		SqlSession mapper = factory.openSession();
		List<ReservationVO> list = mapper.selectList("Reservation.getList");
		mapper.close();
		return list;
	}
	
	//예매취소 기능
	public int delete(int res_no) {	//예매번호 삭제
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("Reservation.delete",res_no);
		mapper.commit();
		mapper.close();
		return result;
	}
	
	//항공편 검색 기능
	public List<A_ReservationVO> getList(){
		List<A_ReservationVO> list = null;
		SqlSession mapper = factory.openSession();
		list = mapper.selectList("Reservation.search");
		mapper.close();
		return list;
	}
	
}

// "" 공백은 이후 xml 파일 보면서 채워나갈 예정. sql문에 따라 dao가 변경될 여지 있음.