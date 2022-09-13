 package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;


@Getter
@AllArgsConstructor
@NoArgsConstructor
public class A_ResVO {

	private Date dep_time;
	private Date arr_time;
	private String ap_name;
	private String ap_type;
	private String dep_port;
	private String arr_port;
	private int pay_sum;
	private String seat_level;
}
