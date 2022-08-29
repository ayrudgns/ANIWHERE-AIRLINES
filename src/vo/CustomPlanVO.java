package vo;					//비행일정(고객용) 테이블

import java.sql.Date;

public class CustomPlanVO {
	private int schedule_no_c;
	private String ap_name;
	private String ap_type;
	private Date dep_time;
	private Date arr_time;
	private String dep_port;
	private String arr_port;
	
	public CustomPlanVO() {
		// TODO Auto-generated constructor stub
	}
	
	public CustomPlanVO(int schedule_no_c, String ap_name, String ap_type, Date dep_time, Date arr_time,
			String dep_port, String arr_port) {
		this.schedule_no_c = schedule_no_c;
		this.ap_name = ap_name;
		this.ap_type = ap_type;
		this.dep_time = dep_time;
		this.arr_time = arr_time;
		this.dep_port = dep_port;
		this.arr_port = arr_port;
	}
	
	public int getSchedule_no_c() {
		return schedule_no_c;
	}
	
	public String getAp_name() {
		return ap_name;
	}
	
	public String getAp_type() {
		return ap_type;
	}
	
	public Date getDep_time() {
		return dep_time;
	}
	
	public Date getArr_time() {
		return arr_time;
	}
	
	public String getDep_port() {
		return dep_port;
	}
	
	public String getArr_port() {
		return arr_port;
	}

	@Override
	public String toString() {
		return "CustomPlanVO [schedule_no_c=" + schedule_no_c + ", ap_name=" + ap_name + ", ap_type=" + ap_type
				+ ", dep_time=" + dep_time + ", arr_time=" + arr_time + ", dep_port=" + dep_port + ", arr_port="
				+ arr_port + "]";
	}
	
	
}
