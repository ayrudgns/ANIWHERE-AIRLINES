package vo;					//결제 테이블

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
	
	public PaymentsVO() {
		// TODO Auto-generated constructor stub
	}
	
	public PaymentsVO(int pay_sum, int seat_price, String ap_name, int mem_no, int res_no, int use_sum, int fuel_surcharge,
			int port_pay, int price_origin, int discount_rate) {
		this.pay_sum = pay_sum;
		this.seat_price = seat_price;
		this.ap_name = ap_name;
		this.mem_no = mem_no;
		this.res_no = res_no;
		this.use_sum = use_sum;
		this.fuel_surcharge = fuel_surcharge;
		this.port_pay = port_pay;
		this.price_origin = price_origin;
		this.discount_rate = discount_rate;
	}
	
	public int getPay_sum() {
		return pay_sum;
	}
	
	public int getSeat_price() {
		return seat_price;
	}
	
	public String getAp_name() {
		return ap_name;
	}
	
	public int getMem_no() {
		return mem_no;
	}
	
	public int getRes_no() {
		return res_no;
	}
	
	public int getUse_sum() {
		return use_sum;
	}
	
	public int getFuel_surcharge() {
		return fuel_surcharge;
	}
	
	public int getPort_pay() {
		return port_pay;
	}
	
	public int getPrice_origin() {
		return price_origin;
	}
	
	public int getDiscount_rate() {
		return discount_rate;
	}

	@Override
	public String toString() {
		return "PaymentsVO [pay_sum=" + pay_sum + ", seat_price=" + seat_price + ", ap_name=" + ap_name + ", mem_no="
				+ mem_no + ", res_no=" + res_no + ", use_sum=" + use_sum + ", fuel_surcharge=" + fuel_surcharge
				+ ", port_pay=" + port_pay + ", price_origin=" + price_origin + ", discount_rate=" + discount_rate
				+ "]";
	}
	
	
}
