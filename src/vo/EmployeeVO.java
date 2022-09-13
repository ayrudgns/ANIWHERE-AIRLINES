package vo;					//직원 테이블

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class EmployeeVO {
	private int seq;
	private int emp_no;
	private String emp_name;
	private String emp_class;
	private String emp_tel;
	private Date emp_hire_date;
	private Date emp_birth_date;
	private String emp_gender;
	private String emp_addr;
	
}
