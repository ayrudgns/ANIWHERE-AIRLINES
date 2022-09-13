package vo;					//비행일정(고객용) 테이블

import java.sql.Date;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CustomPlan2VO {
	private int schedule_no_c;
	private String ap_name;
	private String ap_type;
	private Date dep_time_r;
	private Timestamp dep_time;
	private Timestamp arr_time;
	private String dep_port;
	private String arr_port;
}
