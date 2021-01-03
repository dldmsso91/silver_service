package kr.co.kosmo.mvc.dto.Giver;

import java.util.List;

public class Career_SubVO {

	private List<Integer> career_no;
	private int giver_no;
	private List<String> career_name;
	private List<String> work_period_start;
	private List<String> work_period_end;
	private List<String> role;
	private List<CareerVO> career_List;
	
	
//	public int getCareer_no() {
//		return career_no;
//	}
//	public void setCareer_no(int career_no) {
//		this.career_no = career_no;
//	}
	
	public int getGiver_no() {
		return giver_no;
	}
	public List<Integer> getCareer_no() {
		return career_no;
	}
	public void setCareer_no(List<Integer> career_no) {
		this.career_no = career_no;
	}
	public void setGiver_no(int giver_no) {
		this.giver_no = giver_no;
	}
	public List<String> getCareer_name() {
		return career_name;
	}
	public void setCareer_name(List<String> career_name) {
		this.career_name = career_name;
	}
	public List<String> getWork_period_start() {
		return work_period_start;
	}
	public void setWork_period_start(List<String> work_period_start) {
		this.work_period_start = work_period_start;
	}
	public List<String> getWork_period_end() {
		return work_period_end;
	}
	public void setWork_period_end(List<String> work_period_end) {
		this.work_period_end = work_period_end;
	}
	public List<String> getRole() {
		return role;
	}
	public void setRole(List<String> role) {
		this.role = role;
	}
	public List<CareerVO> getCareer_List() {
		return career_List;
	}
	public void setCareer_List(List<CareerVO> career_List) {
		this.career_List = career_List;
	}
	
	
}
