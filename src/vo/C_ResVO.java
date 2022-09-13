package vo;					//예매 테이블

import java.sql.Date;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class C_ResVO {
	private int res_no;
	private int mem_no;
	private int schedule_no_c;
	private String ap_name;
	private Timestamp res_date;
	private String occupant;
	private int seat_count;
	private String gender;
	private Date birth_date;


}
