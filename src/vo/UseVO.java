package vo;					//이용 테이블

public class UseVO {
	private int mem_no;
	private String port_code;
	private int res_no;
	private int schedule_no_c;
	
	public UseVO() {
		// TODO Auto-generated constructor stub
	}
	
	public UseVO(int mem_no, String port_code, int res_no, int schedule_no_c) {
		this.mem_no = mem_no;
		this.port_code = port_code;
		this.res_no = res_no;
		this.schedule_no_c = schedule_no_c;
	}
	
	public int getMem_no() {
		return mem_no;
	}
	
	public String getPort_code() {
		return port_code;
	}
	
	public int getRes_no() {
		return res_no;
	}
	
	public int getSchedule_no_c() {
		return schedule_no_c;
	}

	@Override
	public String toString() {
		return "UseVO [mem_no=" + mem_no + ", port_code=" + port_code + ", res_no=" + res_no + ", schedule_no_c="
				+ schedule_no_c + "]";
	}
	
	
}
