package vo;					//고객 서비스

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CustomServiceVO {
	private int notice_no;
	private String title;
	private String writer;
	private String content;
}
