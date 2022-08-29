package vo;					//회원 테이블

import java.sql.Date;

public class MembersVO {
	private int mem_no;
	private String id;
	private String password;
	private String kor_name;
	private String eng_name;
	private Date birth_date;
	private int age;
	private String phone;
	private String gender;
	private String tel;
	private String address;
	private String email;
	private String box_check;
	
	public MembersVO() {
		// TODO Auto-generated constructor stub
	}
	
	public MembersVO(int mem_no, String id, String password, String kor_name, String eng_name, Date birth_date, int age,
			String phone, String gender, String tel, String address, String email, String box_check) {
		this.mem_no = mem_no;
		this.id = id;
		this.password = password;
		this.kor_name = kor_name;
		this.eng_name = eng_name;
		this.birth_date = birth_date;
		this.age = age;
		this.phone = phone;
		this.gender = gender;
		this.tel = tel;
		this.address = address;
		this.email = email;
		this.box_check = box_check;
	}
	
	public int getMem_no() {
		return mem_no;
	}
	
	public String getId() {
		return id;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getKor_name() {
		return kor_name;
	}
	
	public String getEng_name() {
		return eng_name;
	}
	
	public Date getBirth_date() {
		return birth_date;
	}
	
	public int getAge() {
		return age;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getTel() {
		return tel;
	}

	public String getAddress() {
		return address;
	}
	
	public String getEmail() {
		return email;
	}
		
	public String getBox_check() {
		return box_check;
	}

	@Override
	public String toString() {
		return "MembersVO [mem_no=" + mem_no + ", id=" + id + ", password=" + password + ", kor_name=" + kor_name
				+ ", eng_name=" + eng_name + ", birth_date=" + birth_date + ", age=" + age + ", phone=" + phone
				+ ", gender=" + gender + ", tel=" + tel + ", address=" + address + ", email=" + email + ", box_check="
				+ box_check + "]";
	}
	
	
}
