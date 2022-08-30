package adminVo;

import java.sql.Date;

public class MemberVO {
	
	private int custNo;
	private String custName;
	private String phone;
	private String address;
	private Date joinDate;
	private String grade;
	private String city;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberVO(int custNo, String custName, String phone, String address, Date joinDate, String grade, String city) {
		super();
		this.custNo = custNo;
		this.custName = custName;
		this.phone = phone;
		this.address = address;
		this.joinDate = joinDate;
		this.grade = grade;
		this.city = city;
	}
	
	
	@Override
	public String toString() {
		return "Member [custNo=" + custNo + ", custName=" + custName + ", phone=" + phone + ", address=" + address
				+ ", joinDate=" + joinDate + ", grade=" + grade + ", city=" + city + "]";
	}

	public int getCustNo() {
		return custNo;
	}
	public String getCustName() {
		return custName;
	}
	public String getPhone() {
		return phone;
	}
	public String getAddress() {
		return address;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public String getGrade() {
		return grade;
	}
	public String getCity() {
		return city;
	}
	
	
}
