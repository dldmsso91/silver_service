package kr.co.kosmo.mvc.dto.Giver;

import kr.co.kosmo.mvc.dto.MemberVO;

public class Service_matchingVO {

	private int service_matching_no;
	private int u_no;
	private int giver_no;
	private int customer_no;
	private String service_matching_redate;
	
	private MemberVO memberVO;
	private CustomerVO customerVO;	
	private GiverVO giverVO;	
	
	
	public int getService_matching_no() {
		return service_matching_no;
	}
	public void setService_matching_no(int service_matching_no) {
		this.service_matching_no = service_matching_no;
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
	public String getService_matching_redate() {
		return service_matching_redate;
	}
	public void setService_matching_redate(String service_matching_redate) {
		this.service_matching_redate = service_matching_redate;
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
	public GiverVO getGiverVO() {
		return giverVO;
	}
	public void setGiverVO(GiverVO giverVO) {
		this.giverVO = giverVO;
	}
	
	
}
