package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;


@Getter
@NoArgsConstructor
@AllArgsConstructor
public class SaleslistVO {
	private int res_no;
	private Date res_date;
	private String dep_port;
	private String arr_port;
	private String occupant;
	private int seat_count;
	private int pay_sum;
}
