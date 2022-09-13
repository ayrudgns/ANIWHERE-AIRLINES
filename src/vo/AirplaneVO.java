package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class AirplaneVO {
	private String ap_name;
	private String ap_type;
	private int passenger_count;
}
