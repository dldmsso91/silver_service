package kr.co.kosmo.mvc.dto.Giver;


import kr.co.kosmo.mvc.dto.MemberVO;

public class GiverVO {
	
		private int giver_no;
		private int u_no;
		private String giver_type;
		private String hope_business_place;
		private int hope_salary;
		private String smoking;
		private String school;
		private String major;
		private int penalty;		
		private String apply_giver_redate;
		
		
		private MemberVO memberVO;
		
		
		
		private CareerVO careerVO;
		private Giver_SatisfactionVO giver_satisfactionVO;
		private LicenseVO licenseVO;
		private Hope_Business_AreaVO hope_business_areaVO;
		
		
		
		
		
		
		//constructor
		
		public GiverVO() {
			super();
		}

		public GiverVO(int u_no) {
			super();
			this.u_no = u_no;
		}
		
		
		
		
		
		//method
		
		public int getGiver_no() {
			return giver_no;
		}
		public void setGiver_no(int giver_no) {
			this.giver_no = giver_no;
		}
		public int getU_no() {
			return u_no;
		}
		public void setU_no(int u_no) {
			this.u_no = u_no;
		}
		public String getGiver_type() {
			return giver_type;
		}
		public void setGiver_type(String giver_type) {
			this.giver_type = giver_type;
		}
		public String getHope_business_place() {
			return hope_business_place;
		}
		public void setHope_business_place(String hope_business_place) {
			this.hope_business_place = hope_business_place;
		}
		public int getHope_salary() {
			return hope_salary;
		}
		public void setHope_salary(int hope_salary) {
			this.hope_salary = hope_salary;
		}
		public String getSmoking() {
			return smoking;
		}
		public void setSmoking(String smoking) {
			this.smoking = smoking;
		}
		public String getSchool() {
			return school;
		}
		public void setSchool(String school) {
			this.school = school;
		}
		public String getMajor() {
			return major;
		}
		public void setMajor(String major) {
			this.major = major;
		}
		public int getPenalty() {
			return penalty;
		}
		public void setPenalty(int penalty) {
			this.penalty = penalty;
		}
		public String getApply_giver_redate() {
			return apply_giver_redate;
		}
		public void setApply_giver_redate(String apply_giver_redate) {
			this.apply_giver_redate = apply_giver_redate;
		}


		
		
		
		

		public MemberVO getMemberVO() {
			return memberVO;
		}
		public void setMemberVO(MemberVO memberVO) {
			this.memberVO = memberVO;
		}
		public CareerVO getCareerVO() {
			return careerVO;
		}
		public void setCareerVO(CareerVO careerVO) {
			this.careerVO = careerVO;
		}
		public Giver_SatisfactionVO getGiver_satisfactionVO() {
			return giver_satisfactionVO;
		}
		public void setGiver_satisfactionVO(Giver_SatisfactionVO giver_satisfactionVO) {
			this.giver_satisfactionVO = giver_satisfactionVO;
		}
		public LicenseVO getLicenseVO() {
			return licenseVO;
		}
		public void setLicenseVO(LicenseVO licenseVO) {
			this.licenseVO = licenseVO;
		}
		public Hope_Business_AreaVO getHope_business_areaVO() {
			return hope_business_areaVO;
		}
		public void setHope_business_areaVO(Hope_Business_AreaVO hope_business_areaVO) {
			this.hope_business_areaVO = hope_business_areaVO;
		}
		
		
		
		
		
		
		



				

}