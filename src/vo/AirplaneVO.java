package vo;

public class AirplaneVO {
	private String ap_name;
	private String ap_type;
	private int passenger_count;
		
	public AirplaneVO() {
		// TODO Auto-generated constructor stub
	}
		
	public AirplaneVO(String ap_name, String ap_type, int passenger_count) {
		this.ap_name = ap_name;
		this.ap_type = ap_type;
		this.passenger_count = passenger_count;
	}
		
	public String getAp_name() {
		return ap_name;
	}
		
	public String getAp_type() {
		return ap_type;
	}
		
	public int getPassenger_count() {
		return passenger_count;
	}

	@Override
	public String toString() {
		return "AirplaneVO [ap_name=" + ap_name + ", ap_type=" + ap_type + ", passenger_count=" + passenger_count
					+ "]";
	}
		
		
}
