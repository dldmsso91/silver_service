package kr.co.kosmo.mvc.dto.Giver;

import kr.co.kosmo.mvc.dto.MemberVO;

public class Apply_to_giverVO {
	
	private int apply_to_giver_no;
	private int giver_no;
	private int customer_no;
	private String apply_service_redate;
	
	private MemberVO memberVO;
	private CustomerVO customerVO;
	
	
	
	
	public int getApply_to_giver_no() {
		return apply_to_giver_no;
	}
	public void setApply_to_giver_no(int apply_to_giver_no) {
		this.apply_to_giver_no = apply_to_giver_no;
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
	public String getApply_service_redate() {
		return apply_service_redate;
	}
	public void setApply_service_redate(String apply_service_redate) {
		this.apply_service_redate = apply_service_redate;
	}
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
	
}
