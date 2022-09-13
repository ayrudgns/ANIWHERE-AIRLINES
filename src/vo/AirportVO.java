package vo;					//공항 테이블


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class AirportVO {
	private String port_code;
	private String port_name;
	private String country_name;
}
