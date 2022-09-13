package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class SalesVO {
	private String today;
	private int t_sales;
	private int cnt;
	private String res_month;
	private int m_sales;
}
