package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CSN {
	private int notice_no;
	private String title;
	private String content;
	private int readCount;
	private Timestamp wdate;				//Date 타입은 날짜만 가져오고 시간을 못가져옵니다.
	private int commentCount;
}
