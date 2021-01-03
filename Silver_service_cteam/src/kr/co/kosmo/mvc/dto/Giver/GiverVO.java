package kr.co.kosmo.mvc.dto.Giver;




import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

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
		private String hope_worktime_start;
		private String hope_worktime_end;		
		private String apply_giver_redate;
		private String my_IMG;
		
		
		private MemberVO memberVO;
		private CustomerVO customerVO;
		
		
		
		private List<CareerVO> careerVO;
		private List<Giver_SatisfactionVO> giver_satisfactionVO;
		private List<LicenseVO> licenseVO;
		private List<Hope_Business_AreaVO> hope_business_areaVO;
		
		
		//-----------------------------------------------
		MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
		
		public MultipartFile getFile() {
			return file;
		}
		public void setFile(MultipartFile file) {
			this.file = file;
			
			// 업로드 파일 접근
			if(! file.isEmpty()){
				this.my_IMG = file.getOriginalFilename();
				
				//***********************************************
				// 해당 경로로 변경
				File f = new File("D:\\work\\Silver_service_cteam\\WebContent\\resources\\upload\\"+my_IMG);
				
				try {
					file.transferTo(f);
					
				} catch (IllegalStateException e) {				
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}
		}
		
		
		
		//constructor
		
		public GiverVO() {
			super();
		}

		public GiverVO(int u_no) {
			super();
			this.u_no = u_no;
		}
		public GiverVO(int u_no,int giver_no) {
			this.u_no = u_no;
			this.giver_no = giver_no;
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
		public String getHope_worktime_start() {
			return hope_worktime_start;
		}

		public void setHope_worktime_start(String hope_worktime_start) {
			this.hope_worktime_start = hope_worktime_start;
		}

		public String getHope_worktime_end() {
			return hope_worktime_end;
		}

		public void setHope_worktime_end(String hope_worktime_end) {
			this.hope_worktime_end = hope_worktime_end;
		}
		
		public String getMy_IMG() {
			return my_IMG;
		}
		
		public void setMy_IMG(String my_IMG) {
			this.my_IMG = my_IMG;
		}
		
		
		
		
		
		//Class variable method

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

		
		
		
		
		public List<LicenseVO> getLicenseVO() {
			return licenseVO;
		}

		public void setLicenseVO(List<LicenseVO> licenseVO) {
			this.licenseVO = licenseVO;
		}

		public List<CareerVO> getCareerVO() {
			return careerVO;
		}

		public void setCareerVO(List<CareerVO> careerVO) {
			this.careerVO = careerVO;
		}

		public List<Giver_SatisfactionVO> getGiver_satisfactionVO() {
			return giver_satisfactionVO;
		}

		public void setGiver_satisfactionVO(List<Giver_SatisfactionVO> giver_satisfactionVO) {
			this.giver_satisfactionVO = giver_satisfactionVO;
		}

		public List<Hope_Business_AreaVO> getHope_business_areaVO() {
			return hope_business_areaVO;
		}

		public void setHope_business_areaVO(List<Hope_Business_AreaVO> hope_business_areaVO) {
			this.hope_business_areaVO = hope_business_areaVO;
		}
		
		
		
		
		
		
		



				

}