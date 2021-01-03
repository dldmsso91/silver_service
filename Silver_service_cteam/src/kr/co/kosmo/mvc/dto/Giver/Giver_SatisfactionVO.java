package kr.co.kosmo.mvc.dto.Giver;

public class Giver_SatisfactionVO {

	   private int giver_satisfaction_no;
	   private int u_no;
	   private int customer_no;
	   private int customer_satisfaction_score;
	   private String customer_satisfaction_complain;   
	   private String giver_Satisfaction_redate;
	   
	   
	   
   public int getGiver_satisfaction_no() {
	   return giver_satisfaction_no;
   }
   public void setGiver_satisfaction_no(int giver_satisfaction_no) {
	   this.giver_satisfaction_no = giver_satisfaction_no;
   }
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public int getCustomer_no() {
		return customer_no;
	}
	public void setCustomer_no(int customer_no) {
		this.customer_no = customer_no;
	}
	public int getCustomer_satisfaction_score() {
		return customer_satisfaction_score;
	}
	public void setCustomer_satisfaction_score(int customer_satisfaction_score) {
		this.customer_satisfaction_score = customer_satisfaction_score;
	}
	public String getCustomer_satisfaction_complain() {
		return customer_satisfaction_complain;
	}
	public void setCustomer_satisfaction_complain(String customer_satisfaction_complain) {
		this.customer_satisfaction_complain = customer_satisfaction_complain;
	}
	public String getGiver_Satisfaction_redate() {
		return giver_Satisfaction_redate;
	}
	public void setGiver_Satisfaction_redate(String giver_Satisfaction_redate) {
		this.giver_Satisfaction_redate = giver_Satisfaction_redate;
	}


	
	
}
