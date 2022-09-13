package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ASK {


	private int ask_no;
	private String subject;
	private String writer;
	private String content;
	private String email;
	private Timestamp wdate;	
	
	
}
