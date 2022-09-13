package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.CustomPlan2VO;
import vo.CustomPlanVO;

public class A_ResDao {	//항공기 조건 설정 후 검색하기 기능

	public static A_ResDao dao = new A_ResDao();
	private A_ResDao() {};
	public static A_ResDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	//편도 항공편 검색 기능
		public List<CustomPlanVO> airSelect(CustomPlanVO vo){
			SqlSession mapper = factory.openSession();
			List<CustomPlanVO> list = mapper.selectList("airSelect", vo);
			mapper.close();
			return list;
		}
		
	//왕복 항공편 검색 기능
		public List<CustomPlan2VO> airselectR(CustomPlan2VO co){
			SqlSession mapper = factory.openSession();
			List<CustomPlan2VO> list = mapper.selectList("R_airSelect",co);
			mapper.close();
			return list;
		}
}
