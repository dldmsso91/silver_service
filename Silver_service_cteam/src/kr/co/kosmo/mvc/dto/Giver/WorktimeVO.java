package kr.co.kosmo.mvc.dto.Giver;

import kr.co.kosmo.mvc.dto.MemberVO;

public class WorktimeVO {

	private int g_work_no;
	private int u_no;
	private int giver_no;
	private String start_time;
	private String end_time;
	
	private MemberVO memberVO;
	private CustomerVO customerVO;
	
	
	
	
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public CustomerVO getCustomerVO() {
		return customerVO;
	}
	public void setCustomerVO(CustomerVO customerVO) {
		this.customerVO = customerVO;
	}
	public int getG_work_no() {
		return g_work_no;
	}
	public void setG_work_no(int g_work_no) {
		this.g_work_no = g_work_no;
	}
	
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public int getGiver_no() {
		return giver_no;
	}
	public void setGiver_no(int giver_no) {
		this.giver_no = giver_no;
	}
	
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	
}
