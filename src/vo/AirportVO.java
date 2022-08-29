package vo;					//공항 테이블

public class AirportVO {
	private String port_code;
	private String port_name;
	private String country_name;
		
	public AirportVO() {
		// TODO Auto-generated constructor stub
	}
	
	public AirportVO(String port_code, String port_name, String country_name) {
		this.port_code = port_code;
		this.port_name = port_name;
		this.country_name = country_name;
	}
	
	public String getPort_code() {
		return port_code;
	}
	
	public String getPort_name() {
		return port_name;
	}
	
	public String getCountry_name() {
		return country_name;
	}

	@Override
	public String toString() {
		return "AirportVO [port_code=" + port_code + ", port_name=" + port_name + ", country_name=" + country_name
				+ "]";
	}
	
	
}
