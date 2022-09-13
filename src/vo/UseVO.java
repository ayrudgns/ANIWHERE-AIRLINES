package vo;					//이용 테이블

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UseVO {
	private int mem_no;
	private String port_code;
	private int res_no;
	private int schedule_no_c;
}
