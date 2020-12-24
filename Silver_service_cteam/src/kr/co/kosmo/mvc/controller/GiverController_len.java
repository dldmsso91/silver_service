package kr.co.kosmo.mvc.controller;





import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.service.Giver.GiverService;

@Controller
public class GiverController_len {

	
	@Autowired
	GiverService giver_service;
	
	
	@Autowired
	GiverDAO dao;
	
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
	@RequestMapping(value="/resume_giver_en")
	public String resume_giver_en() {
		return "giver/len/resume_giver_en";
	}  
	@RequestMapping(value="/my_service_en")
	public String my_service_en() {
		return "giver/len/my_service_en";
	}  
	
	@RequestMapping(value="/succesed_apply_service_en")
	public String succesed_apply_service_en() {
		return "giver/len/succesed_apply_service_en";
	}  

	@RequestMapping(value="/my_giver_resume_detail_en",method = {RequestMethod.GET,RequestMethod.POST})
	public String my_giver_resume_detail_en(){
		return "giver/len/my_giver_resume_detail_en";
	}  
	
	@RequestMapping(value="/level_of_satisfaction_customer_en")
	public String level_of_satisfaction_customer_en() {
		return "giver/len/level_of_satisfaction_customer_en";
	}
	
	

	
	
	
	//-------------------------------------------------------------------은내
	
	
	
	@RequestMapping(value="/succesed_apply_giver_en")
	public String succesed_apply_giver_en(Model model,int giver_no) {
		
		model.addAttribute("giver_no",giver_no);

		return "giver/len/succesed_apply_giver_en";
	}  

	@RequestMapping(value="/recommend_service_en")
	public String recommend_service_en(Model model,GiverVO vo,int customer_no,CustomerVO Cvo) throws Exception{
		System.out.println(vo.getU_no());
		List<GiverVO> recommend = giver_service.recommend_giver(vo);			
			
		Cvo.setCustomer_no(customer_no);
		model.addAttribute("Customer_no",customer_no);
		model.addAttribute("recommend",recommend);	
		System.out.println("Recommend Controller");		

		return "giver/len/recommend_service_en";
	}  	
	
	
	@RequestMapping(value="/giver_resume_detail_en",method = {RequestMethod.GET,RequestMethod.POST})
	public String giver_resume_detail_en(Model model,GiverVO vo,MemberVO mem,int giver_no) throws Exception{
		
		System.out.println("출력좀 되라"+giver_no);
		vo.setGiver_no(giver_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.selectGiver_list(vo);
		
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("Satisfaction",map.get("Satisfaction"));
		model.addAttribute("License",map.get("License"));
		
		return "giver/len/giver_resume_detail_en";
	}  

	@RequestMapping(value="/my_resume_en")
	public String my_resume_en(Model model,GiverVO vo,MemberVO mem,int giver_no) throws Exception{
		
		vo.setGiver_no(giver_no);
		model.addAttribute("giver_no",giver_no);		
	
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.selectGiver_list(vo);
		
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("Satisfaction",map.get("Satisfaction"));
		model.addAttribute("License",map.get("License"));
				
		return "giver/len/my_resume_en";
	}
		
	
	//내 이력서 삭제하기
	@RequestMapping("/my_resume_delete_en")
	public String  my_resume_delete(Model model, GiverVO Gvo, CareerVO Cvo, LicenseVO Lvo, Hope_Business_AreaVO Hvo,Giver_SatisfactionVO Svo,int giver_no) throws Exception {
		
		Gvo.setGiver_no(giver_no);
		Cvo.setGiver_no(giver_no);
		Lvo.setGiver_no(giver_no);
		Hvo.setGiver_no(giver_no);
		Svo.setGiver_no(giver_no);
		
		//자식테이블 먼저 삭제
		giver_service.deleteGiver_seed(Cvo, Lvo, Hvo, Svo);
		
		//부모테이블 삭제
		giver_service.deleteGiver(Gvo);
		return "index";
	}
	
	@RequestMapping(value = "/saveSatisfaction", method = RequestMethod.POST)
	public String insertTEST(Giver_SatisfactionVO vo) throws Exception {
		giver_service.insertSatisfaction(vo);
		
		System.out.println("===> insertSatisfaction()_Controller 호출");			
		System.out.println("selectGiverByNo_list controller확인2"+vo.getCustomer_satisfaction_complain());		
		System.out.println("selectGiverByNo_list controller확인2"+vo.getCustomer_satisfaction_score());			
		
		return  "giver/len/Satisfaction_succeed_en";
	}
	
	
	@RequestMapping(value="/mypage_my_giver_resume_detail_en")
	public String mypage_my_giver_resume_detail_en(Model model,GiverVO vo,MemberVO mem)  throws Exception{
		
		//테스트 값
		vo.setGiver_no(2);
		vo.setU_no(1);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.selectGiver_list(vo);
		
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("Satisfaction",map.get("Satisfaction"));
		model.addAttribute("License",map.get("License"));
		
		
		return "len/mypage_my_giver_resume_detail_en";
	}
	

	
	
	
	
	
	
	
	
	
	
	
	//-------------------------------------------용진
		
	   @RequestMapping(value="/my_resume_update_en")
	   public String my_resume_update_en(Model model,GiverVO vo,int giver_no) throws Exception{
	      
	      //테스트 값
	      vo.setGiver_no(giver_no);
	      model.addAttribute("giver_no",giver_no);   
	      
	      Map<String, Object> map = new HashMap<String, Object>();
	      map = giver_service.selectGiver_list(vo);
	      
	      model.addAttribute("Default",map.get("Default"));
	      model.addAttribute("Career",map.get("Career"));
	      model.addAttribute("Area",map.get("Area"));
	      model.addAttribute("Satisfaction",map.get("Satisfaction"));
	      model.addAttribute("License",map.get("License"));
	      
	      
	      return "giver/len/my_resume_update_en";
	   }  

	   // 업데이트문
	   @RequestMapping(value= "/updateGiver",method = {RequestMethod.GET,RequestMethod.POST})   
	   public String updateAll(@ModelAttribute("giver") GiverVO vo,LicenseVO lo,CareerVO co,Hope_Business_AreaVO ho,MemberVO mo,Model model,HttpServletRequest request,int giver_no) throws Exception{
		   request.setCharacterEncoding("euc-kr");
		   //테스트 값
		   	  vo.setGiver_no(giver_no);
		   	model.addAttribute("giver_no",giver_no);
		      lo.setGiver_no(giver_no);
		      co.setGiver_no(giver_no);
		      ho.setGiver_no(giver_no);
		      mo.setU_no(giver_no);
			  System.out.println("------------------------------vo.giver_no"+vo.getGiver_no());
		      giver_service.updateDefault_info(vo);
			  giver_service.update_license_info(lo);
			  giver_service.update_Career_info(co);
			  giver_service.update_Hope_Business_Area_info(ho);
			  giver_service.updatemember(mo);
			  
		      return "redirect:my_resume_en?giver_no="+giver_no;
	   
	   }
	
	
}