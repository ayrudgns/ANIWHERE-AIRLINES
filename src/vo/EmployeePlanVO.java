package vo;					//비행일정(직원용) 테이블

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class EmployeePlanVO {
	private int schedule_no_e;
	private int emp_no;
	private String ap_name;
	private String ap_type;
	private Date ap_date;
}
