package vo;					//예매 테이블

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ReservationVO {
	private int res_no;
	private int mem_no;
	private int schedule_no_c;
	private String ap_name;
	private Date res_date;
	private String occupant;
	private int seat_count;
	private String gender;
	private Date birth_date;
}