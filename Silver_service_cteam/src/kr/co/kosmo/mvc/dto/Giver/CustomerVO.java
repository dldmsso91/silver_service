package kr.co.kosmo.mvc.dto.Giver;

import kr.co.kosmo.mvc.dto.MemberVO;

public class CustomerVO {
	
		private int customer_no;
		private int u_no;
		private int giver_no;
		private String giver_type;
		private String my_condition;
		private String my_allergy;
		private String can_walk;
		private String hope_start_date;
		private String hope_finish_date;
		private String hope_service_place;
		private int hope_salary;
		private String hope_start_servicetime;		
		private String hope_end_servicetime;		
		private int penalty;		
		private String apply_customer_redate;
		
		
		private MemberVO memberVO;

		
		
		
		

		public CustomerVO() {

		}
		public CustomerVO(int customer_no) {
			this.customer_no = customer_no;
		}
		
		
		
		
		
		public int getCustomer_no() {
			return customer_no;
		}
		public void setCustomer_no(int customer_no) {
			this.customer_no = customer_no;
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
		public String getGiver_type() {
			return giver_type;
		}
		public void setGiver_type(String giver_type) {
			this.giver_type = giver_type;
		}
		public String getMy_condition() {
			return my_condition;
		}
		public void setMy_condition(String my_condition) {
			this.my_condition = my_condition;
		}
		public String getMy_allergy() {
			return my_allergy;
		}
		public void setMy_allergy(String my_allergy) {
			this.my_allergy = my_allergy;
		}
		public String getCan_walk() {
			return can_walk;
		}
		public void setCan_walk(String can_walk) {
			this.can_walk = can_walk;
		}
		public String getHope_start_date() {
			return hope_start_date;
		}
		public void setHope_start_date(String hope_start_date) {
			this.hope_start_date = hope_start_date;
		}
		public String getHope_finish_date() {
			return hope_finish_date;
		}
		public void setHope_finish_date(String hope_finish_date) {
			this.hope_finish_date = hope_finish_date;
		}

		public String getHope_service_place() {
			return hope_service_place;
		}
		public void setHope_service_place(String hope_service_place) {
			this.hope_service_place = hope_service_place;
		}
		public int getHope_salary() {
			return hope_salary;
		}
		public void setHope_salary(int hope_salary) {
			this.hope_salary = hope_salary;
		}
		public String getHope_start_servicetime() {
			return hope_start_servicetime;
		}
		public void setHope_start_servicetime(String hope_start_servicetime) {
			this.hope_start_servicetime = hope_start_servicetime;
		}
		public String getHope_end_servicetime() {
			return hope_end_servicetime;
		}
		public void setHope_end_servicetime(String hope_end_servicetime) {
			this.hope_end_servicetime = hope_end_servicetime;
		}
		public int getPenalty() {
			return penalty;
		}
		public void setPenalty(int penalty) {
			this.penalty = penalty;
		}
		public String getApply_customer_redate() {
			return apply_customer_redate;
		}
		public void setApply_customer_redate(String apply_customer_redate) {
			this.apply_customer_redate = apply_customer_redate;
		}
		public MemberVO getMemberVO() {
			return memberVO;
		}
		public void setMemberVO(MemberVO memberVO) {
			this.memberVO = memberVO;
		}

	

		



				

}