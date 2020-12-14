package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Len_Controller {

	

	@RequestMapping(value = {"/apply_services_en"})
	public String apply_services_en() {

		return "apply_services_en";
	}
	
	
	@RequestMapping(value="/apply_services_type_en")
	public String apply_services_type() {
		return "apply_services_type_en";
	}          
	@RequestMapping(value="/caregiver_service_main_en")
	public String caregiver_service_main() {
		return "caregiver_service_main_en";
	}  
	
	
	@RequestMapping(value="/walking_service_main_en")
	public String walking_service_main() {
		return "walking_service_main_en";
	}  
	
	
	@RequestMapping(value="/life_service_main_en")
	public String life_service_main_en() {
		return "life_service_main_en";
	}  
	
	
	@RequestMapping(value="/apply_caregiver_detail_en")
	public String apply_caregiver_detail_en() {
		return "apply_caregiver_detail_en";
	}  
	
	@RequestMapping(value="/recommend_service_en")
	public String recommend_service_en() {
		return "recommend_service_en";
	}  
	
	
	@RequestMapping(value="/resume_giver_en")
	public String resume_giver_en() {
		return "resume_giver_en";
	}  
	
	@RequestMapping(value="/giver_resume_detail_en")
	public String giver_resume_detail_en() {
		return "giver_resume_detail_en";
	}  
	
	@RequestMapping(value="/my_giver_resume_detail_en")
	public String my_giver_resume_detail_en() {
		return "my_giver_resume_detail_en";
	}  
	
	@RequestMapping(value="/my_resume_update_en")
	public String my_resume_update_en() {
		return "my_resume_update_en";
	}  
	
	@RequestMapping(value="/my_service_en")
	public String my_service_en() {
		return "my_service_en";
	}  
	
	@RequestMapping(value="/succesed_apply_service_en")
	public String succesed_apply_service_en() {
		return "succesed_apply_service_en";
	}  
	
	@RequestMapping(value="/succesed_apply_giver_en")
	public String succesed_apply_giver_en() {
		return "succesed_apply_giver_en";
	}  

	@RequestMapping(value="/my_resume_en")
	public String my_resume_en() {
		return "my_resume_en";
	}

	
	@RequestMapping(value="/mypage_my_giver_resume_detail_en")
	public String mypage_my_giver_resume_detail_en() {
		return "mypage_my_giver_resume_detail_en";
	}

	@RequestMapping(value="/level_of_satisfaction_customer_en")
	public String level_of_satisfaction_customer_en() {
		return "level_of_satisfaction_customer_en";
	}
	@RequestMapping(value="/mypage_customer_en")
	public String mypage_customer_en() {
		return "mypage_customer_en";
	}
	
}
