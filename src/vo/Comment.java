package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
	private int idx;
	private int mref;
	private String writer;
	private String content;
	private Timestamp wdate;
	private String ip;
	private int heart;
}
