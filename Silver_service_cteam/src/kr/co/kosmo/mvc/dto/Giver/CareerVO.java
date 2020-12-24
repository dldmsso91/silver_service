package kr.co.kosmo.mvc.dto.Giver;

public class CareerVO {
	
	private int career_no;
	private int giver_no;
	private String career_name;
	private String work_period_start;
	private String work_period_end;
	private String role;
	
	
	
	public int getGiver_no() {
		return giver_no;
	}
	public void setGiver_no(int giver_no) {
		this.giver_no = giver_no;
	}
	public int getCareer_no() {
		return career_no;
	}
	public void setCareer_no(int career_no) {
		this.career_no = career_no;
	}
	public String getCareer_name() {
		return career_name;
	}
	public void setCareer_name(String career_name) {
		this.career_name = career_name;
	}

	public String getWork_period_start() {
		return work_period_start;
	}
	public void setWork_period_start(String work_period_start) {
		this.work_period_start = work_period_start;
	}
	public String getWork_period_end() {
		return work_period_end;
	}
	public void setWork_period_end(String work_period_end) {
		this.work_period_end = work_period_end;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	


	
}
