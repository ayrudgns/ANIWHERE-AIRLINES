package adminVo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@AllArgsConstructor
@NoArgsConstructor	
@ToString
public class EmployeeVo {
	private int schedule_no_c;
	private String ap_name;
	private String ap_type;
	private Date dep_time;
	private Date arr_time;
	private String dep_port;
	private String arr_port;
	private String port_code;
	private String port_name;
	private String country_name;
}
