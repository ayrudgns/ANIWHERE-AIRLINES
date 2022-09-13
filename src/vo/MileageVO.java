package vo;		//마일리지 테이블

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class MileageVO {
	private String use_mile;
	private int mem_no;
	private int per_save;
}
