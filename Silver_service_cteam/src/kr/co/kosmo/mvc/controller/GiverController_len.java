package kr.co.kosmo.mvc.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.service.Giver.GiverService;


@Controller
public class GiverController_len {

	
	@Autowired
	GiverService giver_service;

	
	@RequestMapping(value = {"/apply_services_en"})
	public String apply_services_en() {
		return "giver/len/apply_services_en";
	}
	
	
	@RequestMapping(value="/apply_services_type_en")
	public String apply_services_type() {
		return "giver/len/apply_services_type_en";
	}          
	@RequestMapping(value="/caregiver_service_main_en")
	public String caregiver_service_main() {
		return "giver/len/caregiver_service_main_en";
	}  
	
	
	@RequestMapping(value="/walking_service_main_en")
	public String walking_service_main() {
		return "giver/len/walking_service_main_en";
	}  
	
	
	@RequestMapping(value="/life_service_main_en")
	public String life_service_main_en() {
		return "giver/len/life_service_main_en";
	}  
	
	
	@RequestMapping(value="/apply_caregiver_detail_en")
	public String apply_caregiver_detail_en() {
		return "giver/len/apply_caregiver_detail_en";
	}  
	
	@RequestMapping(value="/recommend_service_en")
	public String recommend_service_en() {
		return "giver/len/recommend_service_en";
	}  
	
	
	@RequestMapping(value="/resume_giver_en")
	public String resume_giver_en() {
		return "giver/len/resume_giver_en";
	}  
	
	@RequestMapping(value="/giver_resume_detail_en")
	public String giver_resume_detail_en() {
		return "giver/len/giver_resume_detail_en";
	}  
	
	@RequestMapping(value="/my_giver_resume_detail_en")
	public String my_giver_resume_detail_en() {
		return "giver/len/my_giver_resume_detail_en";
	}  
	
	@RequestMapping(value="/my_resume_update_en")
	public String my_resume_update_en() {
		return "giver/len/my_resume_update_en";
	}  
	
	@RequestMapping(value="/my_service_en")
	public String my_service_en() {
		return "giver/len/my_service_en";
	}  
	
	@RequestMapping(value="/succesed_apply_service_en")
	public String succesed_apply_service_en() {
		return "giver/len/succesed_apply_service_en";
	}  
	
	@RequestMapping(value="/succesed_apply_giver_en")
	public String succesed_apply_giver_en() {
		return "giver/len/succesed_apply_giver_en";
	}  

	@RequestMapping(value="/my_resume_en")
	public String my_resume_en() {
		return "giver/len/my_resume_en";
	}

	
	@RequestMapping(value="/mypage_my_giver_resume_detail_en")
	public String mypage_my_giver_resume_detail_en() {
		return "len/mypage_my_giver_resume_detail_en";
	}

	@RequestMapping(value="/level_of_satisfaction_customer_en")
	public String level_of_satisfaction_customer_en() {
		return "giver/len/level_of_satisfaction_customer_en";
	}
	@RequestMapping(value="/mypage_customer_en")
	public String mypage_customer_en() {
		return "giver/len/mypage_customer_en";
	}	
	
	
	
	
	//----------------------Join 테이블 전체 리스트--------------------------------	
	@RequestMapping(value = "/giver_test_list")
	public String giver_resultmap_list(Model model) throws Exception{
		List<GiverVO> list = giver_service.selectGiverByNo_list();
		model.addAttribute("giver",list);
		System.out.println("===> giver_resultmap_list()_Controller 호출");
		return "test/list";
	}	

	
	@RequestMapping("/giver_test_delte")
	public String  deleteGiver(Model model,GiverVO vo ) throws Exception {
		giver_service.deleteGiver(vo);
		return "test/succeed_del";
	}

	
	
	
}