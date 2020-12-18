package kr.co.kosmo.mvc.controller;




import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.dto.Giver.GiverVO;
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


	
	
	
	
	
	
	

	
	
	
	//----------------------Join select문--------------------------------	
	@RequestMapping(value = "/giver_test_list")
	public String selectGiverByNo_list(Model model,GiverVO vo) throws Exception{	

		//테스트 값
		vo.setU_no(1);
		
		
		
		List<GiverVO> list = giver_service.selectGiverByNo_list(vo);
		System.out.println("selectGiverByNo_list controller확인");
		
		//확인용 반복문
		for (GiverVO a : list){			
			System.out.println("selectGiverByNo_list controller확인2"+a.getApply_giver_redate());
		};
		

		model.addAttribute("giver",list);
		return "test/list";
	}	

	
	@RequestMapping("/giver_test_delte")
	public String  deleteGiver(Model model,GiverVO vo ) throws Exception {
		
		vo.setU_no(1);
		
		giver_service.deleteGiver(vo);
		return "test/succeed_del";
	}

	
	
	
}