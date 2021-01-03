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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.Career_SubVO;
import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_Area_SubVO;
import kr.co.kosmo.mvc.dto.Giver.HugiVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.dto.Giver.License_SubVO;
import kr.co.kosmo.mvc.dto.Giver.Service_matchingVO;
import kr.co.kosmo.mvc.dto.Giver.WorktimeVO;
import kr.co.kosmo.mvc.service.MemberService;
import kr.co.kosmo.mvc.service.Giver.GiverService;

@Controller
public class GiverController_len {

	
	@Autowired
	GiverService giver_service;
	
	@Autowired
	MemberService service;
	
	
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
	@RequestMapping(value="/my_giver_resume_detail_en")
	public String my_giver_resume_detail_en(){
		return "giver/len/my_giver_resume_detail_en";
	}  
	@RequestMapping(value="/level_of_satisfaction_customer_en")
	public String level_of_satisfaction_customer_en() {
		return "giver/len/level_of_satisfaction_customer_en";
	}
	
	@RequestMapping(value="/mypage_test")
	public String mypage_test() {
		return "mypage/test/test_body";
	}
	
	
	
	
	//-------------------------------------------------------------------은내
	
	
	//--------------------지원완료 및 giver_no를 memberVO에 update
	@RequestMapping(value="/succesed_apply_giver_en")
	public String succesed_apply_giver_en(Model model,HttpSession session) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());		
		int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());		

		model.addAttribute("giver_no",giver_no);

		System.out.println("succesed_apply_giver_en giver_no : "+giver_no);
		System.out.println("succesed_apply_giver_en u_no : "+u_no);
		
		service.update_giverNo_mem(u_no, giver_no);
		
		return "giver/len/succesed_apply_giver_en";
	}  
	

	
	//--------------------도우미 추천 페이지 및 giver_no를 memberVO에 update
	@RequestMapping(value="/recommend_service_en")
	public String recommend_service_en(Model model,GiverVO vo,HttpSession session) throws Exception{	
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());	
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());	
		
		model.addAttribute("Default",giver_service.selectGiverList(vo));	
		model.addAttribute("Customer_no",customer_no);	

		System.out.println("succesed_apply_giver_en Customer_no : "+customer_no);
		System.out.println("succesed_apply_giver_en u_no : "+u_no);
		
		//memberVO에 customer_no 업데이트(세션용)
		service.update_customerNo_mem(u_no, customer_no);
		
		return "giver/len/recommend_service_en";
	}  	

	
	
	//--------------------신청완료페이지
	@RequestMapping(value="/succesed_apply_service_en",method = RequestMethod.GET)
	public String succesed_apply_service_en(Model model,int giver_no,int customer_no) throws Exception{
		
		System.out.println("succesed_apply_service_en Controller"+customer_no);
		System.out.println("succesed_apply_service_en Controller"+giver_no);
		
		model.addAttribute("Customer_no",customer_no);
		model.addAttribute("Giver_no",giver_no);
		giver_service.apply_to_giver_insert(giver_no, customer_no);
		return "giver/len/succesed_apply_service_en";
	}  


	

	//--------------------도우미 상세 이력서 열람 페이지
	@RequestMapping(value="/giver_resume_detail_en")
	public String giver_resume_detail_en(Model model,GiverVO vo) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map = giver_service.selectGiver_list(vo);
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("License",map.get("License"));
		
		return "giver/len/giver_resume_detail_en";
	}  

	
	//--------- 내가 신청한 도우미 이력서 열람하기 select
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
		model.addAttribute("License",map.get("License"));
		return "len/mypage_my_giver_resume_detail_en";
	}
	

	//--------------------내 이력서 열람 페이지
	@RequestMapping(value="/giver_resume_en")
	public String giver_resume_en(Model model,GiverVO vo,MemberVO mem,int giver_no) throws Exception{
		vo.setGiver_no(giver_no);
		model.addAttribute("giver_no",giver_no);		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.selectGiver_list(vo);
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("License",map.get("License"));
		return "giver/len/giver_resume_en";
	}	
	
	//------------------------------------------------MyPage 부분

	//-----------내 신청서 확인하기
	@RequestMapping(value="/my_apply")
	public String my_apply(Model model,HttpSession session) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		System.out.println("my_apply Controller 출력 완료!"+u_no);
	
		model.addAttribute("Default",giver_service.select_default_customer_info(u_no));
		return "mypage/giver_mypage/my_apply_en";
	}
	//-----------내 서비스 확인하기_list
	@RequestMapping(value="/my_service_now")
	public String my_service_now(Model model,HttpSession session) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		System.out.println("my_service_now Controller 출력 완료!"+u_no);

		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.cheack_my_service_customer(u_no);
		
		model.addAttribute("apply",map.get("apply"));
		model.addAttribute("matching",map.get("matching"));		

		return "mypage/giver_mypage/my_service_now_en";
	}
	
	//-----------내 이력서 확인하기
	@RequestMapping(value="/my_resume")
	public String my_resume(Model model,HttpSession session) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		System.out.println("hugi_update_suc Controller 출력 완료!"+u_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.select_MyResume_list(u_no);
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("License",map.get("License"));
		return "mypage/giver_mypage/my_resume_en";
	}
	
	//-----------내 이력서 삭제하기
	@RequestMapping("/my_resume_delete_en")
	public String  my_resume_delete(Model model, GiverVO gvo, CareerVO cvo, LicenseVO lvo, Hope_Business_AreaVO hvo,Giver_SatisfactionVO svo,int giver_no) throws Exception {
		gvo.setGiver_no(giver_no);
		cvo.setGiver_no(giver_no);
		lvo.setGiver_no(giver_no);
		hvo.setGiver_no(giver_no);
	//	svo.setGiver_no(giver_no);
		//자식테이블 먼저 삭제
		giver_service.deleteGiver_seed(cvo, lvo, hvo, svo);
		//부모테이블 삭제
		giver_service.deleteGiver(gvo);
		return "index";
	}
	//-----------내 신청서 삭제하기
	@RequestMapping("/delete_customer")
	public String  delete_customer(Model model, HugiVO hvo, Service_matchingVO svo, Apply_to_giverVO avo,CustomerVO cvo,int customer_no) throws Exception {

		hvo.setCustomer_no(customer_no);
		svo.setCustomer_no(customer_no);
		avo.setCustomer_no(customer_no);
		cvo.setCustomer_no(customer_no);
		
		//자식테이블 먼저 삭제
		giver_service.deleteCustomer_seed(hvo, svo, avo);
		//부모테이블 삭제
		giver_service.deleteCustomer(cvo);
		return "index";
	}
		
	//고객 상세정보
	@RequestMapping(value="/customer_detail")
	public String customer_detail(Model model,int customer_no,HttpSession session)  throws Exception{

		//고객정보
		System.out.println("customer_detail"+customer_no);
		model.addAttribute("custsomer",giver_service.select_customer_detail(customer_no));
		
		
		//insert시 넘길 giver_no 가져오기 
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.select_MyResume_list(u_no);
		model.addAttribute("giver_no",map.get("Default"));		
		return "mypage/giver_mypage/customer_detail_en";
	}

	
	
	
	//---------도우미 후기 등록 페이지
	@RequestMapping(value="/my_Hugi_giver")
	public String my_Hugi_giver(Model model,HttpSession session,int customer_no) {
	
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
	
		model.addAttribute("customer_no",customer_no);
		model.addAttribute("u_no",u_no);
		
		return "mypage/giver_mypage/hugi_giver_en";
	}	
	
	//--------------------후기 등록완료 페이지_도우미용
	@RequestMapping(value="/insert_hugi_giver")
	public String insert_hugi_giver(Model model,HugiVO hvo)throws Exception{
		System.out.println("u_no"+hvo.u_no);
		System.out.println("customer_no"+hvo.customer_no);
		System.out.println("hugi_score"+hvo.hugi_score);
		System.out.println("hugi_contents"+hvo.hugi_contents);
		
		giver_service.insert_hugi_giver(hvo);
		return "redirect:my_matching_list";
	}	

	//--------------------후기 삭제
	@RequestMapping(value="/deleteHugi",method = RequestMethod.POST)
	public String deleteHugi(HugiVO hvo)throws Exception{
		giver_service.delete_Hugi(hvo);
		System.out.println("deleteHugi Controller 출력 완료!");
		return "redirect:my_hugi_list";
	}	

	//--------------------후기 수정페이지
	@RequestMapping(value="/updateHugi",method = RequestMethod.POST)
	public String updateHugi(Model model,HugiVO hvo,int hugi_no)throws Exception{
		System.out.println("updateHugi Controller 출력 완료!"+hugi_no);
				
		model.addAttribute("hugi_no",hugi_no);
		model.addAttribute("hugi_detail",giver_service.select_hugi_detail(hvo));
		return "mypage/giver_mypage/hugi_giver_update_en";
	}	

	//--------------------후기 수정 완료
	@RequestMapping(value="/suc_update_Hugi")
	public String suc_updateHugi(Model model,HugiVO hvo)throws Exception{
		System.out.println("hugi_no"+hvo.hugi_no);
		System.out.println("u_no"+hvo.u_no);
		System.out.println("customer_no"+hvo.customer_no);
		System.out.println("hugi_score"+hvo.hugi_score);
		System.out.println("hugi_contents"+hvo.hugi_contents);		
		giver_service.update_Hugi(hvo);
		return "redirect:my_hugi_list";
	}	

	
	//--------------------후기 리스트페이지
	@RequestMapping(value="/my_hugi_list")
	public String hugi_list_giver(Model model,HttpSession session)throws Exception{
		
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		System.out.println("hugi_update_suc Controller 출력 완료!"+u_no);
		
		model.addAttribute("hugi",giver_service.select_hugi(u_no));
		return "mypage/giver_mypage/customer_hugi_list_yj";
	}	

	
	//--------------------신청내역 리스트 페이지
	
	@RequestMapping(value="/my_apply_service")
	public String my_apply_service(Model model,HttpSession session) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		model.addAttribute("apply",giver_service.select_apply_to_Giver(u_no));
		return "mypage/giver_mypage/apply_list_en";
	}  


	
	//--------------------매칭완료페이지
	@RequestMapping(value="/insert_matching")
	public String insert_matching(Model model,int giver_no,int customer_no,Service_matchingVO service_matchingVO,Apply_to_giverVO avo,HttpSession session) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
			
		System.out.println("내 고유 번호 : "+u_no);
		System.out.println("내 지원서 번호 : "+giver_no);
		System.out.println("고객 신청서 번호 : "+customer_no);

		//매칭 테이블에 insert
		service_matchingVO.setU_no(u_no);
		service_matchingVO.setGiver_no(giver_no);
		service_matchingVO.setCustomer_no(customer_no);
		
		giver_service.insert_matching(service_matchingVO);
		
		
		//매칭 테이블에 insert시 대기신청서 delete
		avo.setGiver_no(giver_no);
		avo.setCustomer_no(customer_no);
		giver_service.delete_apply(avo);
				
		return "mypage/giver_mypage/suc_matching_en";
	}
	
	//--------------------매칭 목록 확인하기
	@RequestMapping(value="/my_matching_list")
	public String select_metching_list(Model model,HttpSession session) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		
		model.addAttribute("matching_list",giver_service.select_metching_list(u_no));	
		
		return "mypage/giver_mypage/matching_list_en";
	}  

	//--------------------매칭내역 확인하기에서 customer_no 넘기기.
	@RequestMapping(value="/my_matching_giver")
	public String select_metching_info(Model model,HttpSession session,Service_matchingVO svo,int customer_no) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		
		//내 지원서 확인하기.
		model.addAttribute("matching_giver",giver_service.select_metching_giver(u_no));	
		
		//고객 신청서 확인하기 
		svo.setU_no(u_no);
		svo.setCustomer_no(customer_no);
		model.addAttribute("matching_customer",giver_service.select_metching_customer(svo));	
		
		//테스트 값
		System.out.println("매칭에 들어올 멤버번호"+u_no);
		System.out.println("매칭에 들어올 고객번호"+customer_no);
		
		return "mypage/giver_mypage/matching_lnfo_en";
	}  

	//--------------------매칭 삭제하기
	@RequestMapping(value="/delete_matching")
	public String delete_matching(Model model,HttpSession session,Service_matchingVO svo,int customer_no) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		
		//매칭 삭제하기 
		svo.setU_no(u_no);
		svo.setCustomer_no(customer_no);
		giver_service.delete_matching(svo);	
		
		//테스트 값
		System.out.println("매칭삭제에 들어올 멤버번호"+u_no);
		System.out.println("매칭삭제에 들어올 고객번호"+customer_no);
		
		return "redirect:my_matching_list";
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
	      model.addAttribute("License",map.get("License"));
	      
	      
	      return "giver/len/my_resume_update_en";
	   }  
// 도우미 업데이트 부분
	   @RequestMapping(value="TestUpdate",method = {RequestMethod.GET,RequestMethod.POST})
	   public String updateLicense(@ModelAttribute("giver")GiverVO vo,License_SubVO lvo,Career_SubVO cvo,Hope_Business_Area_SubVO hvo,HttpServletRequest request,Model model,int giver_no,MemberVO mo)throws Exception {
		   request.setCharacterEncoding("euc-kr");
	
		   vo.setGiver_no(giver_no);
		   model.addAttribute("giver_no",giver_no);
		   lvo.setGiver_no(giver_no);
		   hvo.setGiver_no(giver_no);

		   cvo.setGiver_no(giver_no);

		   giver_service.updateDefault_info(vo);
		   System.out.println("========="+vo.getHope_worktime_end());
		   System.out.println("============="+mo.getU_addr());
		   // 라이센스 테이블 업데이트
		   	List<String> list_l1 = lvo.getLicense_name();
			List<String> list_l2 = lvo.getLicense_Institute();
			List<String> list_l3 = lvo.getLicense_Redate();
			List<Integer> list_l4 = lvo.getLicense_no();
		

			LicenseVO licensevo = null;
			int l = list_l4.size();
			
			for(int i =0; i< l; i++) { 
	  			 licensevo = new LicenseVO();
	  			 licensevo.setLicense_name(list_l1.get(i)); 
				 licensevo.setLicense_Institute(list_l2.get(i)); 
				 licensevo.setLicense_Redate(list_l3.get(i));
				 licensevo.setLicense_no(list_l4.get(i));

				 giver_service.updateLicenseService(licensevo);
			 }
	  		//-----------------Career List update 부분 ---------------------------------
	  		
			List<String> list_c1 = cvo.getCareer_name();
			List<String> list_c2 = cvo.getRole();
			List<String> list_c3 = cvo.getWork_period_start();
			List<String> list_c4 = cvo.getWork_period_end();
			List<Integer> list_c5 = cvo.getCareer_no();


			CareerVO careervo = null;
			int c = list_c1.size();

	  		for(int i =0; i< c; i++) { 
	  			 careervo = new CareerVO();
	  			 careervo.setCareer_name(list_c1.get(i));
				 System.out.println(list_c1.get(i));
				 careervo.setRole(list_c2.get(i));
				 careervo.setWork_period_start(list_c3.get(i));
				 careervo.setWork_period_end(list_c4.get(i));
				 careervo.setCareer_no(list_c5.get(i));


				 giver_service.updateCareerService(careervo);

			 }
  			
  		//-----------------Hope_Business_Area List update 부분 ---------------------------------
  		List<String> list_h1 = hvo.getHope_business_city();
  		List<String> list_h2 = hvo.getHope_business_town();
  		List<Integer> list_h3 = hvo.getHope_business_area_no();

  		Hope_Business_AreaVO hopeAreavo = null;
  		int h = list_h1.size();
  		
  		for(int i =0; i< h; i++) { 
  			 hopeAreavo = new Hope_Business_AreaVO();
  			 hopeAreavo.setHope_business_city(list_h1.get(i));
  			 hopeAreavo.setHope_business_town(list_h2.get(i));
  			 hopeAreavo.setHope_business_area_no(list_h3.get(i));

  			 giver_service.updateHopeBusinessService(hopeAreavo);

		 }
  		
		   return "redirect:giver_resume_en?giver_no="+giver_no;
	   }
	   // 고객정보 업데이트
	   @RequestMapping(value="updateCustomer",method = {RequestMethod.GET,RequestMethod.POST})
	public String updateCustomer(Model model,GiverVO vo, CustomerVO Cvo,HttpSession session,int customer_no) throws Exception {
		   int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		   Cvo.setU_no(u_no);


		   session.setAttribute("Customer_no", Cvo.getCustomer_no());

			session.setAttribute("giver_type", Cvo.getGiver_type());  
			session.setAttribute("my_condition", Cvo.getMy_condition()); 
			session.setAttribute("my_allergy", Cvo.getMy_allergy()); 
			session.setAttribute("can_walk", Cvo.getCan_walk()); 
			session.setAttribute("Hope_start_date", Cvo.getHope_start_date()); 
			session.setAttribute("Hope_finish_date", Cvo.getHope_finish_date()); 
			session.setAttribute("Hope_service_place", Cvo.getHope_service_place()); 
			session.setAttribute("Hope_salary", Cvo.getHope_salary()); 
			session.setAttribute("Hope_start_servicetime", Cvo.getHope_start_servicetime()); 
			session.setAttribute("Hope_end_servicetime", Cvo.getHope_end_servicetime());
		  
		   System.out.println(Cvo.getCustomer_no());
			System.out.println("================================");
			System.out.println(Cvo.getCan_walk());
			System.out.println(Cvo.getGiver_type());
			System.out.println(Cvo.getCustomer_no());
			System.out.println(Cvo.getMy_condition());
			System.out.println(Cvo.getHope_salary());
			
			giver_service.updateCustomerService(Cvo);
		return  "redirect:my_apply_service_detail?customer_no="+customer_no;
	} 	
		// 신청정보 디테일 페이지
		@RequestMapping(value="/my_apply_service_detail",method = {RequestMethod.GET,RequestMethod.POST})
		public String my_apply_service_update(Model model,int customer_no,CustomerVO Cvo,HttpSession session) throws Exception{
			model.addAttribute("Customer_no",customer_no);

			
//			model.addAttribute("Customer",giver_service.selectCustomerService(Cvo));
			System.out.println("=============================Controller");
			System.out.println(Cvo.getCustomer_no());
			System.out.println(Cvo.getCan_walk());
//			System.out.println(giver_service.selectCustomerService(Cvo));
			
			return "giver/len/my_apply_service_detail";
		}  
		// 신청저보 수정 페이지

			@RequestMapping(value="/updatepage",method = {RequestMethod.GET,RequestMethod.POST})
			public String updatepage(Model model,int customer_no,CustomerVO Cvo,HttpSession session) throws Exception{
				model.addAttribute("Customer_no",customer_no);

				return "giver/len/my_apply_service_update";
			}  
			// 출퇴근
			@RequestMapping("/worktimetest")
			public String worktimetest(GiverVO gvo,WorktimeVO wvo,HttpSession session) {
			
				return "test/worktimetest";
			}
			      
		// 출퇴근 기록부
		@PostMapping("worktimein")
		public String insertWorktime(GiverVO gvo,WorktimeVO wvo,HttpSession session) throws Exception {
			
			gvo.setGiver_no(2);
			wvo.setGiver_no(2);
//			session.setAttribute("start_time", wvo.getStart_time());
//			session.setAttribute("end_time", wvo.getEnd_time());
			giver_service.worktimeInsertService(wvo);
			System.out.println(wvo.getStart_time());
			return "test/worktimelisttest";
		}
		@RequestMapping(value="/worktimelisttest")
		public String worktimelisttest(GiverVO gvo,WorktimeVO wvo,HttpSession session,Model model) throws Exception{	
//			int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
			wvo.setGiver_no(2);
			gvo.setGiver_no(2);
			
			model.addAttribute("worktime", giver_service.worktimeselectService(wvo));
			System.out.println(wvo.getStart_time());
			System.out.println(wvo.getEnd_time());
			
			return "worktimelisttest";
		} 
	
	
}