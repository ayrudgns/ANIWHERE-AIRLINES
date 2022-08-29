package vo;					//직원 테이블

import java.sql.Date;

public class EmployeeVO {
	private int emp_no;
	private String emp_name;
	private String emp_class;
	private String emp_tel;
	private Date emp_hire;
	private Date emp_birth_date;
	private String emp_gender;
	private String emp_addr;
	
	public EmployeeVO() {
		// TODO Auto-generated constructor stub
	}
	
	public EmployeeVO(int emp_no, String emp_name, String emp_class, String emp_tel, Date emp_hire, Date emp_birth_date,
			String emp_gender, String emp_addr) {
		this.emp_no = emp_no;
		this.emp_name = emp_name;
		this.emp_class = emp_class;
		this.emp_tel = emp_tel;
		this.emp_hire = emp_hire;
		this.emp_birth_date = emp_birth_date;
		this.emp_gender = emp_gender;
		this.emp_addr = emp_addr;
	}
	
	public int getEmp_no() {
		return emp_no;
	}
	
	public String getEmp_name() {
		return emp_name;
	}
	
	public String getEmp_class() {
		return emp_class;
	}
	
	public String getEmp_tel() {
		return emp_tel;
	}
	
	public Date getEmp_hire() {
		return emp_hire;
	}
	
	public Date getEmp_birth_date() {
		return emp_birth_date;
	}
	
	public String getEmp_gender() {
		return emp_gender;
	}
	
	public String getEmp_addr() {
		return emp_addr;
	}

	@Override
	public String toString() {
		return "EmployeeVO [emp_no=" + emp_no + ", emp_name=" + emp_name + ", emp_class=" + emp_class + ", emp_tel="
				+ emp_tel + ", emp_hire=" + emp_hire + ", emp_birth_date=" + emp_birth_date + ", emp_gender="
				+ emp_gender + ", emp_addr=" + emp_addr + "]";
	}
	
	
}
