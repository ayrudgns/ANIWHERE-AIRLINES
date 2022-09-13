package vo;					//좌석 테이블

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class SeatsVO {
	private int seat_price;
	private String ap_name;
	private int res_no;
	private String mem_no;
	private String seat_level;
	private String seat_no;
}
