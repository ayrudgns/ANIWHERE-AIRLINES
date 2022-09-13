package vo;					//회원 테이블

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
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
	
}
