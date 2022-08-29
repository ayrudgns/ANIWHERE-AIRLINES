package vo;					//비행일정(직원용) 테이블

import java.sql.Date;

public class EmployeePlanVO {
	private int schedule_no_e;
	private int emp_no;
	private String ap_name;
	private String ap_type;
	private Date ap_date;
	
	public EmployeePlanVO() {
		// TODO Auto-generated constructor stub
	}
	
	public EmployeePlanVO(int schedule_no_e, int emp_no, String ap_name, String ap_type, Date ap_date) {
		this.schedule_no_e = schedule_no_e;
		this.emp_no = emp_no;
		this.ap_name = ap_name;
		this.ap_type = ap_type;
		this.ap_date = ap_date;
	}
	
	public int getSchedule_no_e() {
		return schedule_no_e;
	}
	
	public int getEmp_no() {
		return emp_no;
	}
	
	public String getAp_name() {
		return ap_name;
	}
	
	public String getAp_type() {
		return ap_type;
	}
	
	public Date getAp_date() {
		return ap_date;
	}

	@Override
	public String toString() {
		return "EmployeePlanVO [schedule_no_e=" + schedule_no_e + ", emp_no=" + emp_no + ", ap_name=" + ap_name
				+ ", ap_type=" + ap_type + ", ap_date=" + ap_date + "]";
	}
	
	
}
