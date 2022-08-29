package vo;					//제공 테이블

public class ProvideVO {
	private String port_code;
	private String place;
	private String useable_time;
	private String useable_rank;
	private String plane;
	private String wifi;
	
	public ProvideVO() {
		// TODO Auto-generated constructor stub
	}
	
	public ProvideVO(String port_code, String place, String useable_time, String useable_rank, String plane, String wifi) {
		this.port_code = port_code;
		this.place = place;
		this.useable_time = useable_time;
		this.useable_rank = useable_rank;
		this.plane = plane;
		this.wifi = wifi;
	}
	
	public String getPort_code() {
		return port_code;
	}
	
	public String getPlace() {
		return place;
	}
	
	public String getUseable_time() {
		return useable_time;
	}
	
	public String getUseable_rank() {
		return useable_rank;
	}
	
	public String getPlane() {
		return plane;
	}
	
	public String getWifi() {
		return wifi;
	}

	@Override
	public String toString() {
		return "ProvideVO [port_code=" + port_code + ", place=" + place + ", useable_time=" + useable_time
				+ ", useable_rank=" + useable_rank + ", plane=" + plane + ", wifi=" + wifi + "]";
	}
	
	
}
