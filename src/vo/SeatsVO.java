package vo;					//좌석 테이블

public class SeatsVO {
	private int seat_price;
	private String ap_name;
	private int res_no;
	private String mem_no;
	private String seat_level;
	private String seat_no;
	
	public SeatsVO() {
		// TODO Auto-generated constructor stub
	}
	
	public SeatsVO(int seat_price, String ap_name, int res_no, String mem_no, String seat_level, String seat_no) {
		this.seat_price = seat_price;
		this.ap_name = ap_name;
		this.res_no = res_no;
		this.mem_no = mem_no;
		this.seat_level = seat_level;
		this.seat_no = seat_no;
	}
	
	public int getSeat_price() {
		return seat_price;
	}
	
	public String getAp_name() {
		return ap_name;
	}
	
	public int getRes_no() {
		return res_no;
	}
	
	public String getMem_no() {
		return mem_no;
	}
	
	public String getSeat_level() {
		return seat_level;
	}
	
	public String getSeat_no() {
		return seat_no;
	}

	@Override
	public String toString() {
		return "SeatsVO [seat_price=" + seat_price + ", ap_name=" + ap_name + ", res_no=" + res_no + ", mem_no="
				+ mem_no + ", seat_level=" + seat_level + ", seat_no=" + seat_no + "]";
	}
	
	
}
