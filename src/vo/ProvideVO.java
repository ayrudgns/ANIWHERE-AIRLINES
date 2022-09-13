package vo;					//제공 테이블

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ProvideVO {
	private String port_code;
	private String place;
	private String useable_time;
	private String useable_rank;
	private String plane;
	private String wifi;
}
