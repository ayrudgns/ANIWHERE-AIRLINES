package vo;					//예매 테이블

import java.sql.Date;

public class ReservationVO {
	private int res_no;
	private int mem_no;
	private int schedule_no_c;
	private String ap_name;
	private Date res_date;
	private String occupant;
	private int seat_count;
	private String gender;
	private String birth_date;
	
	public ReservationVO() {
		// TODO Auto-generated constructor stub
	}
	
	public ReservationVO(int res_no, int mem_no, int schedule_no_c, String ap_name, Date res_date, String occupant,
			int seat_count, String gender, String birth_date) {
		this.res_no = res_no;
		this.mem_no = mem_no;
		this.schedule_no_c = schedule_no_c;
		this.ap_name = ap_name;
		this.res_date = res_date;
		this.occupant = occupant;
		this.seat_count = seat_count;
		this.gender = gender;
		this.birth_date = birth_date;
	}
	
	public int getRes_no() {
		return res_no;
	}
	
	public int getMem_no() {
		return mem_no;
	}
	
	public int getSchedule_no_c() {
		return schedule_no_c;
	}
	
	public String getAp_name() {
		return ap_name;
	}
	
	public Date getRes_date() {
		return res_date;
	}
	
	public String getOccupant() {
		return occupant;
	}
	
	public int getSeat_count() {
		return seat_count;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getBirth_date() {
		return birth_date;
	}

	@Override
	public String toString() {
		return "ReservationVO [res_no=" + res_no + ", mem_no=" + mem_no + ", schedule_no_c=" + schedule_no_c
				+ ", ap_name=" + ap_name + ", res_date=" + res_date + ", occupant=" + occupant + ", seat_count="
				+ seat_count + ", gender=" + gender + ", birth_date=" + birth_date + "]";
	}
	
	
}
