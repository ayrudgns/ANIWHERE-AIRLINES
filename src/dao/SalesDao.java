package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.CustomPlanVO;
import vo.SalesVO;
import vo.SaleslistVO;
import vo.TodayPerVO;

public class SalesDao {
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	private static SalesDao dao = new SalesDao();
	private SalesDao() {
		
	}
	
	public static SalesDao getInstance() {
		return dao;
	}
	
	// 오늘의 매출 조회
	public SalesVO todaySales() {
		SqlSession mapper = factory.openSession();
		SalesVO t_sales = mapper.selectOne("todaySales");
		mapper.close();
		return t_sales;
	}
	
	// 오늘의 매출(예매) 내역 조회
	public List<SaleslistVO> todaySalesList() {
		SqlSession mapper = factory.openSession();		
		List<SaleslistVO> list = mapper.selectList("todaySalesList");
		mapper.close();
		return list;
	}
 	
	// 월별 매출 조회
	public List<SalesVO> monthSales() {
		SqlSession mapper = factory.openSession();
		List<SalesVO> list = mapper.selectList("monthSales");
		mapper.close();
		return list;
	}
	
	// 전체 매출(예매) 내역 조회
	public List<SaleslistVO> AllSalesList() {
		SqlSession mapper = factory.openSession();		
		List<SaleslistVO> list = mapper.selectList("AllSalesList");
		mapper.close();
		return list;
	}	
	
	// 오늘의 항공편 조회
	public List<CustomPlanVO> todayFlight() {
		SqlSession mapper = factory.openSession();
		List<CustomPlanVO> list = mapper.selectList("todayFlight");
		mapper.close();
		return list;
	}
	
	// 플마 3일 항공편 조회
	public List<CustomPlanVO> flightSchedule() {
		SqlSession mapper = factory.openSession();
		List<CustomPlanVO> list = mapper.selectList("flightSchedule");
		mapper.close();
		return list;
	}
	
	// 오늘의 예매율 조회
	public TodayPerVO todayPer() {
		SqlSession mapper = factory.openSession();
		TodayPerVO vo = mapper.selectOne("todayPer");
		mapper.close();
		return vo;
	}
	
	
}
