package kr.co.kosmo.mvc.dto.Giver;

import kr.co.kosmo.mvc.dto.MemberVO;

public class HugiVO {

	public int hugi_no;
	public int u_no;
	public int giver_no;
	public int customer_no;
	public int hugi_score;
	public String hugi_contents;
	public String hugi_redate;
	
	private MemberVO memberVO;
	private GiverVO giver;
	private CustomerVO customerVO;
	
	
	public int getHugi_no() {
		return hugi_no;
	}
	public void setHugi_no(int hugi_no) {
		this.hugi_no = hugi_no;
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
	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public int getHugi_score() {
		return hugi_score;
	}
	public void setHugi_score(int hugi_score) {
		this.hugi_score = hugi_score;
	}
	public String getHugi_contents() {
		return hugi_contents;
	}
	public void setHugi_contents(String hugi_contents) {
		this.hugi_contents = hugi_contents;
	}
	public String getHugi_redate() {
		return hugi_redate;
	}
	public void setHugi_redate(String hugi_redate) {
		this.hugi_redate = hugi_redate;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public GiverVO getGiver() {
		return giver;
	}
	public void setGiver(GiverVO giver) {
		this.giver = giver;
	}
	public CustomerVO getCustomerVO() {
		return customerVO;
	}
	public void setCustomerVO(CustomerVO customerVO) {
		this.customerVO = customerVO;
	}
	
	
	
}
