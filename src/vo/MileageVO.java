package vo;					//마일리지 테이블

public class MileageVO {
	private String use_mile;
	private int mem_no;
	private int per_save;
	
	public MileageVO() {
		// TODO Auto-generated constructor stub
	}
	
	public MileageVO(String use_mile, int mem_no, int per_save) {
		this.use_mile = use_mile;
		this.mem_no = mem_no;
		this.per_save = per_save;
	}
	
	public String getUse_mile() {
		return use_mile;
	}
	
	public int getMem_no() {
		return mem_no;
	}
	
	public int getPer_save() {
		return per_save;
	}

	@Override
	public String toString() {
		return "MileageVO [use_mile=" + use_mile + ", mem_no=" + mem_no + ", per_save=" + per_save + "]";
	}
	
	
}
