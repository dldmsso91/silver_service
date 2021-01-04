package kr.co.kosmo.mvc.dto.Giver;

import kr.co.kosmo.mvc.dto.MemberVO;

public class Terminate_giver_serviceVO {

	private int terminate_giver_service_no;
	private int u_no;
	private int giver_no;
	private int customer_no;
	private String terminate_giver_service_redate;
	
	private MemberVO memberVO;
	private CustomerVO customerVO;	
	private GiverVO giverVO;
	
	
	
	public int getTerminate_giver_service_no() {
		return terminate_giver_service_no;
	}
	public void setTerminate_giver_service_no(int terminate_giver_service_no) {
		this.terminate_giver_service_no = terminate_giver_service_no;
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
	public String getTerminate_giver_service_redate() {
		return terminate_giver_service_redate;
	}
	public void setTerminate_giver_service_redate(String terminate_giver_service_redate) {
		this.terminate_giver_service_redate = terminate_giver_service_redate;
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
