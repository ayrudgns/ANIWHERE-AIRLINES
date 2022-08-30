package adminVo;

public class SaleVO {
	
	private int custno;
	private String custname;
	private String agrade;
	private int asum;
	
	public SaleVO() {
	}

	public SaleVO(int custno, String custname,
			String agrade, int asum) {
		super();
		this.custno = custno;
		this.custname = custname;
		this.agrade = agrade;
		this.asum = asum;
	}

	
	@Override
	public String toString() {
		return "SaleVO [custno=" + custno + ", custname=" + custname + ", agrade=" + agrade + ", asum=" + asum + "]";
	}

	//getter
	public int getCustno() {
		return custno;
	}

	public String getCustname() {
		return custname;
	}

	public String getAgrade() {
		return agrade;
	}

	public int getAsum() {
		return asum;
	}
	
	
	
}
