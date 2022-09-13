package vo;					//결제 테이블

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PaymentsVO {
	private int pay_sum;
	private int seat_price;
	private String ap_name;
	private int mem_no;
	private int res_no;
	private int use_sum;
	private int fuel_surcharge;
	private int port_pay;
	private int price_origin;
	private int discount_rate;
}
