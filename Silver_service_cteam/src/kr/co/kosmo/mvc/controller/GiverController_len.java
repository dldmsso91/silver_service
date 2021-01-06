package kr.co.kosmo.mvc.controller;





import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;


import kr.co.kosmo.mvc.dto.MemberVO;


import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.Career_SubVO;
import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;

import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_Area_SubVO;
import kr.co.kosmo.mvc.dto.Giver.HugiVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.dto.Giver.License_SubVO;
import kr.co.kosmo.mvc.dto.Giver.Service_matchingVO;
import kr.co.kosmo.mvc.dto.Giver.Terminate_giver_serviceVO;
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
	public String recommend_service_en(Model model,HttpSession session) throws Exception{
		
		//u_no 세션값 가져오기
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());	
		//customer_no 세션값 가져오기(앞에서 insert될 때, 동윤씨가 만들어논 세션. 유저에있는 세션이 아님.)
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());	

		//유저테이블인 memberVO에 customer_no 업데이트(세션용)
		service.update_customerNo_mem(u_no, customer_no);

		
		//---------------------------------------------------------고객 주소 가져가기 
		//객체세션안의 주소값 불러오기
		MemberVO member = (MemberVO) session.getAttribute("member");
		String addr1 = member.getU_addr1();
		System.out.println("세션안의 고객 주소값"+addr1);
		
		//불러온 주소값을 문자열로 나누기
		String[] array = addr1.split(" ");
		for(int i=0;i<array.length;i++) {
			System.out.println("array 반복 시 테스트 출력 :"+array[i]);
			}
		
		//문자열로 나눈 값 중에 필요한 값 변수로 저장
		String addr_user = array[1];
		System.out.println("addr_user :"+addr_user);	
		
		//---------------------------------------------------------고객 신청정보 가져가기 

		System.out.println("세션안의 고객 신청번호"+customer_no);
		System.out.println("succesed_apply_giver_en Customer_no : "+customer_no);
		System.out.println("succesed_apply_giver_en u_no : "+u_no);

		
		//인자값으로 보낼 map 생성
		HashMap<String, Object> map = new HashMap<String, Object>();			
		
		//위에서 만든 고객 주소 인자값에 넣기
		map.put("addr_user", addr_user);

		
		//DB에서 고객정보 가져오기(여기서 지금 신청서가 있는 고객만 나오는 문제 생김)
		List<CustomerVO> customer_info =giver_service.select_default_customer_info(customer_no);
		
		System.out.println("customer_info에 주소값이 들어있는지 확인하는 출력:"+customer_info);
		
		//DB에서 들고온 고객 정보를 반복문을 통해 map에 넣기 
		for(CustomerVO c : customer_info) {			
			
			String giver_type_user =c.getGiver_type();
			String hope_service_place_user =c.getHope_service_place();
			int hope_salary_user =c.getHope_salary();
			
			//DB에서 들고온 고객 정보값 테스트 출력 
			System.out.println("고객이 원하는 도우미 타입"+giver_type_user);
			System.out.println("고객이 원하는 장소"+hope_service_place_user);
			System.out.println("고객이 원하는 금액"+hope_salary_user);
			
			map.put("giver_type_user", giver_type_user);
			map.put("hope_service_place_user", hope_service_place_user);
			map.put("hope_salary_user", hope_salary_user);
		}    

		//map으로 들어온 값 테스트 출력 
		System.out.println("map : 고객이 원하는 도우미 타입"+map.get("giver_type_user"));
		System.out.println("map : 고객이 원하는 장소"+map.get("hope_service_place_user"));
		System.out.println("map : 고객이 원하는 금액"+map.get("hope_salary_user"));
		System.out.println("map : 고객의 집주소"+map.get("addr_user"));
		
		
		//view페이지로 보낼 파라미터들 
		model.addAttribute("test",giver_service.recommend_giver(map));	
		model.addAttribute("Default",giver_service.selectGiverList());	
		model.addAttribute("customer_no",customer_no);	

		
		
		return "giver/len/recommend_service_en";
	}  	

	
	

	
	//--------------------신청완료페이지
	@RequestMapping(value="/succesed_apply_service_en",method = RequestMethod.GET)
	public String succesed_apply_service_en(Model model,int giver_no,int customer_no) throws Exception{
		
		System.out.println("succesed_apply_service_en Controller"+customer_no);
		System.out.println("succesed_apply_service_en Controller"+giver_no);
		
		model.addAttribute("customer_no",customer_no);
		model.addAttribute("Giver_no",giver_no);
		giver_service.apply_to_giver_insert(giver_no, customer_no);
		return "giver/len/succesed_apply_service_en";
	}  


	

	//--------------------도우미 상세 이력서 열람 페이지
	@RequestMapping(value="/giver_resume_detail_en")
	public String giver_resume_detail_en(Model model,int giver_no) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map = giver_service.selectGiver_list(giver_no);
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("License",map.get("License"));
		
		return "giver/len/giver_resume_detail_en";
	}  


	//--------------------내 이력서 열람 페이지
	@RequestMapping(value="/giver_resume_en")
	public String giver_resume_en(Model model,int giver_no) throws Exception{

		model.addAttribute("giver_no",giver_no);		

		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.selectGiver_list(giver_no);
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
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
		System.out.println("my_apply Controller 출력 완료!"+customer_no);
	
		model.addAttribute("Default",giver_service.select_default_customer_info(customer_no));
		return "mypage/giver_mypage/my_apply_en";
	}
	
	
	
	//-----------내 서비스 확인하기_list
	@RequestMapping(value="/my_service_now")
	public String my_service_now(Model model,HttpSession session) throws Exception{
		
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());	

		
		System.out.println("my_service_now Controller u_no출력 완료!"+u_no);
		System.out.println("my_service_now Controller customer_no출력 완료!"+customer_no);

		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.cheack_my_service_customer(u_no, customer_no);

		//신청한 서비스
		model.addAttribute("apply",map.get("apply"));
		
		//매칭된 서비스
		model.addAttribute("matching_customer_info",map.get("matching_customer_info"));		
		model.addAttribute("matching_giver_info",map.get("matching_giver_info"));		

		//종료된 서비스 
		model.addAttribute("terminate_customer_info",giver_service.select_terminate_customer(customer_no));		
	
		return "mypage/giver_mypage/my_service_now_en";
	}
	
	
	
	//--------- 내가 신청한 도우미 이력서 열람하기 select
	@RequestMapping(value="/apply_giver_detail")
	public String apply_giver_detail(Model model,int giver_no)  throws Exception{

		System.out.println("apply_giver_detail"+giver_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.selectGiver_list(giver_no);
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("License",map.get("License"));
		return "mypage/giver_mypage/my_giver_resume_en";
	}
	
	
	
	//--------- 내가 신청한 도우미 취소하기 delete
	@RequestMapping(value="/my_service_cencle_en")
	public String my_service_cencle_en(Model model,HttpSession session,Apply_to_giverVO avo,Service_matchingVO svo,int giver_no)  throws Exception{
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		
		System.out.println("my_service_cencle_en customer_no : "+customer_no);
		System.out.println("my_service_cencle_en giver_no : "+giver_no);
		System.out.println("my_service_cencle_en u_no : "+u_no);

		//취소 누를 시 대기신청서 delete
		avo.setGiver_no(giver_no);
		avo.setCustomer_no(customer_no);
		giver_service.delete_apply(avo);
		
		
		//취소 누를 시 매칭 delete		
		svo.setCustomer_no(customer_no);
		svo.setU_no(u_no);
		giver_service.delete_matching(svo);
		
		return "redirect:my_service_now";
	}
	
	
	
	
		

	//-----------내 이력서 확인하기
	@RequestMapping(value="/my_resume")
	public String my_resume(Model model,HttpSession session) throws Exception{
		int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
		System.out.println("hugi_update_suc Controller 출력 완료!"+giver_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.select_MyResume_list(giver_no);
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("License",map.get("License"));
		return "mypage/giver_mypage/my_resume_en";
	}
	
	//-----------내 이력서 삭제하기
	@RequestMapping("/my_resume_delete_en")
	public String  my_resume_delete(Model model, HttpSession session) throws Exception {
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());

		//자식테이블 먼저 삭제
		giver_service.deleteGiver_seed(giver_no);
		//부모테이블 삭제
		giver_service.deleteGiver(giver_no);
		
		//U_MEMBER테이블 giver_no 0값으로 수정
		service.delete_giverNo_mem(u_no);
		
		return "index";
	}
	//mypage안에서 내 이력서 수정하기 페이지 
	@RequestMapping(value="/my_resume_update_mypage")
	public String my_resume_update_mypage(Model model,HttpSession session) throws Exception{      
		int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());

		model.addAttribute("giver_no",giver_no);   
		System.out.println("my_resume_update_mypage"+giver_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.selectGiver_list(giver_no);
		
		model.addAttribute("Default",map.get("Default"));
		model.addAttribute("Career",map.get("Career"));
		model.addAttribute("Area",map.get("Area"));
		model.addAttribute("License",map.get("License"));
		
		return "mypage/giver_mypage/my_resume_update_mypage";
	}  
	

	//mypage안에서 내 이력서 수정완료 
	   @RequestMapping(value="update_myResume_mypage",method = {RequestMethod.GET,RequestMethod.POST})
	   public String update_myResume_mypage(@ModelAttribute("giver")GiverVO vo,License_SubVO lvo,Career_SubVO cvo,Hope_Business_Area_SubVO hvo,Model model,HttpSession session)throws Exception {
		   int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
	
		   vo.setGiver_no(giver_no);
		   lvo.setGiver_no(giver_no);
		   hvo.setGiver_no(giver_no);
		   cvo.setGiver_no(giver_no);
		   model.addAttribute("giver_no",giver_no);

		   giver_service.updateDefault_info(vo);

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
		
		   return "redirect:my_resume";
	   }	
	
	//-----------내 신청서 삭제하기
	@RequestMapping("/delete_customer")
	public String  delete_customer(Model model,HttpSession session) throws Exception {

		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
		
		//자식테이블 먼저 삭제
		giver_service.deleteCustomer_seed(customer_no);
		//부모테이블 삭제
		giver_service.deleteCustomer(customer_no);
		
		//U_MEMBER테이블 customer_no 0값으로 수정
		service.delete_customerNo_mem(u_no);
		
		return "index";		
	}
	//-----------내 신청서 수정하기
	@RequestMapping("/update_my_apply")
	public String  update_my_apply(Model model,HttpSession session) throws Exception {
		
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
		System.out.println("my_apply Controller 출력 완료!"+customer_no);
	
		model.addAttribute("Default",giver_service.select_default_customer_info(customer_no));
		return "mypage/giver_mypage/my_apply_update_mypage";		
	}
	//-----------내 신청서 수정완료
	@RequestMapping(value="/updateCustomer_mypage",method = {RequestMethod.GET,RequestMethod.POST})
	public String  updateCustomer_mypage(Model model,HttpSession session,CustomerVO Cvo) throws Exception {
		
		    System.out.println(Cvo.getCustomer_no());
			System.out.println("================================");
			System.out.println(Cvo.getCan_walk());
			System.out.println(Cvo.getGiver_type());
			System.out.println(Cvo.getCustomer_no());
			System.out.println(Cvo.getMy_condition());
			System.out.println(Cvo.getHope_salary());
			
			giver_service.updateCustomerService(Cvo);
		return "redirect:my_apply";		
	}
		
	//고객 상세정보
	@RequestMapping(value="/customer_detail")
	public String customer_detail(Model model,int customer_no,HttpSession session)  throws Exception{

		//고객정보
		System.out.println("customer_detail"+customer_no);
		model.addAttribute("custsomer",giver_service.select_customer_detail(customer_no));
		
		
		//insert시 넘길 giver_no 가져오기 
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
		System.out.println("customer_detail u_no:"+u_no);
		System.out.println("customer_detail giver_no:"+giver_no);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map = giver_service.select_MyResume_list(giver_no);
		model.addAttribute("giver_no",map.get("Default"));		
		return "mypage/giver_mypage/customer_detail_en";
	}

	
	
	//---------도우미용 후기 등록 페이지
	@RequestMapping(value="/my_Hugi_giver")
	public String my_Hugi_giver(Model model,HttpSession session,int customer_no) {
	
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
	
		model.addAttribute("customer_no",customer_no);
		model.addAttribute("u_no",u_no);
		model.addAttribute("giver_no",giver_no);
		
		return "mypage/giver_mypage/hugi_giver_en";
	}	
	
	//---------고객용 후기 등록 페이지
	@RequestMapping(value="/my_Hugi_customer")
	public String my_Hugi_customer(Model model,HttpSession session,int giver_no) {
		
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
		
		model.addAttribute("giver_no",giver_no);
		model.addAttribute("u_no",u_no);
		model.addAttribute("customer_no",customer_no);
		
		return "mypage/giver_mypage/hugi_customer_en";
	}	
	
	//--------------------후기 등록완료 페이지_도우미용
	@RequestMapping(value="/insert_hugi_giver")
	public String insert_hugi_giver(Model model,HugiVO hvo)throws Exception{
		System.out.println("u_no"+hvo.u_no);
		System.out.println("customer_no"+hvo.customer_no);
		System.out.println("customer_no"+hvo.giver_no);
		System.out.println("hugi_score"+hvo.hugi_score);
		System.out.println("hugi_contents"+hvo.hugi_contents);
		
		giver_service.insert_hugi_giver(hvo);
		return "redirect:my_matching_list";
	}	
	//--------------------후기 등록완료 페이지_고객용
	@RequestMapping(value="/insert_hugi_customer")
	public String insert_hugi_customer(Model model,HugiVO hvo)throws Exception{
		System.out.println("u_no"+hvo.u_no);
		System.out.println("customer_no"+hvo.customer_no);
		System.out.println("customer_no"+hvo.giver_no);
		System.out.println("hugi_score"+hvo.hugi_score);
		System.out.println("hugi_contents"+hvo.hugi_contents);
		
		giver_service.insert_hugi_customer(hvo);
		return "redirect:my_hugi_list_customer";
	}	

	//--------------------후기 삭제(도우미용)
	@RequestMapping(value="/deleteHugi",method = RequestMethod.POST)
	public String deleteHugi(HugiVO hvo)throws Exception{
		giver_service.delete_Hugi(hvo);
		System.out.println("deleteHugi Controller 출력 완료!");
		return "redirect:my_hugi_list";
	}	
	//--------------------후기 삭제(고객용)
	@RequestMapping(value="/deleteHugi_customer",method = RequestMethod.POST)
	public String deleteHugi_customer(HugiVO hvo)throws Exception{
		giver_service.delete_Hugi(hvo);
		System.out.println("deleteHugi Controller 출력 완료!");
		return "redirect:my_hugi_list_customer";
	}	

	//--------------------후기 수정페이지(도우미용)
	@RequestMapping(value="/updateHugi",method = RequestMethod.POST)
	public String updateHugi(Model model,HugiVO hvo,int hugi_no)throws Exception{
		System.out.println("updateHugi Controller 출력 완료!"+hugi_no);
				
		model.addAttribute("hugi_no",hugi_no);
		model.addAttribute("hugi_detail",giver_service.select_hugi_detail(hvo));
		return "mypage/giver_mypage/hugi_giver_update_en";
	}	
	//--------------------후기 수정페이지(고객용)
	@RequestMapping(value="/updateHugi_customer",method = RequestMethod.POST)
	public String updateHugi_customer(Model model,HugiVO hvo,int hugi_no)throws Exception{
		System.out.println("updateHugi Controller 출력 완료!"+hugi_no);
		
		model.addAttribute("hugi_no",hugi_no);
		model.addAttribute("hugi_detail",giver_service.select_hugi_detail(hvo));
		return "mypage/giver_mypage/hugi_customer_update_en";
	}	

	//--------------------후기 수정 완료(도우미용)
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
	//--------------------후기 수정 완료(고객용)
	@RequestMapping(value="/suc_update_Hugi_customer")
	public String suc_update_Hugi_customer(Model model,HugiVO hvo)throws Exception{
		System.out.println("hugi_no"+hvo.hugi_no);
		System.out.println("u_no"+hvo.u_no);
		System.out.println("customer_no"+hvo.customer_no);
		System.out.println("hugi_score"+hvo.hugi_score);
		System.out.println("hugi_contents"+hvo.hugi_contents);		
		giver_service.update_Hugi(hvo);
		return "redirect:my_hugi_list_customer";
	}	

	
	//--------------------후기 리스트페이지(도우미용)
	@RequestMapping(value="/my_hugi_list")
	public String hugi_list_giver(Model model,HttpSession session)throws Exception{
		
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		System.out.println("hugi_update_suc Controller 출력 완료!"+u_no);
		
		model.addAttribute("hugi",giver_service.select_hugi(u_no));
		return "mypage/giver_mypage/giver_hugi_list_yj";
	}	

	
	//--------------------후기 리스트페이지(고객용)
	@RequestMapping(value="/my_hugi_list_customer")
	public String hugi_list_customer(Model model,HttpSession session)throws Exception{
		
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		System.out.println("hugi_update_suc Controller 출력 완료!"+u_no);
		
		model.addAttribute("hugi",giver_service.select_hugi_customer(u_no));
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

		avo.setCustomer_no(customer_no);
		giver_service.delete_apply(avo);
		System.out.println("야 삭제해");
				
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

	//--------------------매칭 삭제하기(고객용)
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
	//--------------------매칭 삭제하기(도우미용)
	@RequestMapping(value="/delete_matching_giver")
	public String delete_matching_giver(Model model,HttpSession session,Service_matchingVO svo,int customer_no) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		
		//매칭 삭제하기 
		svo.setU_no(u_no);
		svo.setCustomer_no(customer_no);
		giver_service.delete_matching_giver(svo);	
		
		//테스트 값
		System.out.println("매칭삭제에 들어올 멤버번호"+u_no);
		System.out.println("매칭삭제에 들어올 고객번호"+customer_no);
		
		return "redirect:my_matching_list";
	}  
	
	//--------------------서비스 종료하기
	@RequestMapping(value="/terminate_service")
	public String terminate_matching(Model model,HttpSession session,Service_matchingVO svo,int customer_no,int giver_no,Terminate_giver_serviceVO tvo) throws Exception{
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		
		//테스트 값
		System.out.println("매칭삭제에 들어올 멤버번호"+u_no);
		System.out.println("매칭삭제에 들어올 고객번호"+customer_no);
		System.out.println("매칭삭제에 들어올 도우미번호"+giver_no);
		
		
		//매칭 삭제하기 
		svo.setU_no(u_no);
		svo.setCustomer_no(customer_no);
		giver_service.delete_matching(svo);	
		
		//서비스 종료테이블에 insert 
		tvo.setU_no(u_no);
		tvo.setGiver_no(giver_no);
		tvo.setCustomer_no(customer_no);
		giver_service.insert_terminate(tvo);
		
		return "redirect:my_matching_list";
	}  
	
	
	//--------------------종료된 서비스 list(도우미용)
	@RequestMapping(value="/my_terminate_list")
	public String my_terminate_list(Model model,HttpSession session) throws Exception{
		int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
		
		//테스트 값
		System.out.println("매칭삭제에 들어올 giver번호"+giver_no);

		model.addAttribute("terminate_giver",giver_service.select_terminate_giver(giver_no));
		
		return "mypage/giver_mypage/giver_terminate_list_en";
	}  
	
	//--------------------종료된 서비스 list(고객용)
	@RequestMapping(value="/my_terminate_list_customer")
	public String my_terminate_list_customer(Model model,HttpSession session) throws Exception{
		int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
		
		//테스트 값
		System.out.println("매칭삭제에 들어올 giver번호"+customer_no);
		
		model.addAttribute("terminate_customer",giver_service.select_terminate_customer(customer_no));
		
		return "mypage/giver_mypage/customer_terminate_list_en";
	}  
	
	
	
	
	
	

	   
	   
	   
	   
	
	//-------------------------------------------용진
	
	   @RequestMapping(value="/my_resume_update_en")
	   public String my_resume_update_en(Model model,GiverVO vo,int giver_no) throws Exception{      
	      //테스트 값
	      vo.setGiver_no(giver_no);
	      model.addAttribute("giver_no",giver_no);   
	      
	      Map<String, Object> map = new HashMap<String, Object>();
	      map = giver_service.selectGiver_list(giver_no);
	      
	      model.addAttribute("Default",map.get("Default"));
	      model.addAttribute("Career",map.get("Career"));
	      model.addAttribute("Area",map.get("Area"));
	      model.addAttribute("License",map.get("License"));
	      
	      
	      return "giver/len/my_resume_update_en";
	   }  
//도우미 업데이트 부분
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
		
		   return "redirect:my_resume?giver_no="+giver_no;
	   }
	   // 고객정보 업데이트
	   @RequestMapping(value="updateCustomer",method = {RequestMethod.GET,RequestMethod.POST})
	public String updateCustomer(Model model,GiverVO vo, CustomerVO Cvo,HttpSession session,int customer_no) throws Exception {
		   int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		   Cvo.setU_no(u_no);
		   Cvo.getGiver_type();
		   Cvo.getMy_condition();
		   Cvo.getMy_allergy();
		   Cvo.getCan_walk();
		   Cvo.getHope_start_date();
		   Cvo.getHope_finish_date();
		   Cvo.getHope_service_place();
		   Cvo.getHope_salary();
		   Cvo.getHope_start_servicetime();
		   Cvo.getHope_end_servicetime();
		   Cvo.getCustomer_no();
		   
		   

//		   session.setAttribute("Customer_no", Cvo.getCustomer_no());
//
//			session.setAttribute("giver_type", Cvo.getGiver_type());  
//			session.setAttribute("my_condition", Cvo.getMy_condition()); 
//			session.setAttribute("my_allergy", Cvo.getMy_allergy()); 
//			session.setAttribute("can_walk", Cvo.getCan_walk()); 
//			session.setAttribute("Hope_start_date", Cvo.getHope_start_date()); 
//			session.setAttribute("Hope_finish_date", Cvo.getHope_finish_date()); 
//			session.setAttribute("Hope_service_place", Cvo.getHope_service_place()); 
//			session.setAttribute("Hope_salary", Cvo.getHope_salary()); 
//			session.setAttribute("Hope_start_servicetime", Cvo.getHope_start_servicetime()); 
//			session.setAttribute("Hope_end_servicetime", Cvo.getHope_end_servicetime());
//		  
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
		public String my_apply_service_update(Model model,CustomerVO Cvo,HttpSession session) throws Exception{

			
			int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
			System.out.println("my_apply Controller 출력 완료!"+customer_no);
		
			model.addAttribute("Default",giver_service.select_default_customer_info(customer_no));			
			
//			
//			int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
//			
//			
//			model.addAttribute("Customer_no",customer_no);
//
//			
////			model.addAttribute("Customer",giver_service.selectCustomerService(Cvo));
//			System.out.println("=============================Controller");
//			System.out.println(Cvo.getCustomer_no());
//			System.out.println(Cvo.getCan_walk());
////			System.out.println(giver_service.selectCustomerService(Cvo));
//			
			return "giver/len/my_apply_service_detail";
		}  
		
		
		
		// 신청정보 수정 페이지

			@RequestMapping(value="/updatepage",method = {RequestMethod.GET,RequestMethod.POST})
			public String updatepage(Model model, HttpSession session) throws Exception{
				int customer_no = Integer.parseInt(session.getAttribute("customer_no").toString());
				System.out.println("my_apply Controller 출력 완료!"+customer_no);
			
				model.addAttribute("Default",giver_service.select_default_customer_info(customer_no));			
				
				
				//				model.addAttribute("Customer_no",customer_no);

				return "giver/len/my_apply_service_update";
			}  
			// 출퇴근
			@RequestMapping("/worktimeInsert")
			public String worktimetest(Model model,GiverVO gvo,WorktimeVO wvo,HttpSession session) throws Exception {
				int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
				int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
				
				System.out.println("worktimeInsers 출력 완료!"+u_no);
				Map<String, Object> map = new HashMap<String, Object>();
				map = giver_service.select_MyResume_list(u_no);
				model.addAttribute("Default",map.get("Default"));

				
				model.addAttribute("giver_no",map.get("giver_no"));
				
				System.out.println(giver_no);
				return "mypage/giver_mypage/worktimeInsert";
			}
			      
		// 출퇴근 기록부 인설트
		@PostMapping("worktimein")
		public String insertWorktime(WorktimeVO wvo,HttpSession session) throws Exception {

			System.out.println("G_work_no"+wvo.getG_work_no());
			System.out.println("Start_time"+wvo.getStart_time());
			System.out.println("End_time"+wvo.getEnd_time());
			System.out.println("Giver_no"+wvo.getGiver_no());
			System.out.println("getU_no"+wvo.getU_no());
			
			giver_service.worktimeInsertService(wvo);
			
			
//			return "redirect:worktimelisttest?giver_no="+giver_no;
			return "redirect:worktimelisttest";
		}
		
		
		
		// 출근기록 select
		@RequestMapping(value="/worktimelisttest",method = {RequestMethod.GET,RequestMethod.POST})
		public String worktimelisttest(GiverVO gvo,WorktimeVO wvo,HttpSession session,Model model) throws Exception{	
			int giver_no = Integer.parseInt(session.getAttribute("giver_no").toString());
			
			System.out.println("테스트프린트 "+giver_no);
			
			//List<WorktimeVO> list = null;
			
			
			//list = giver_service.worktimeselectone(giver_no);
				

			 
			System.out.println("넌 어딧니"+giver_service.worktimeselectone(giver_no));
//			
			model.addAttribute("list",giver_service.worktimeselectone(giver_no));
			return "mypage/giver_mypage/worktimelisttest";
		} 
		
		
		
//		@RequestMapping(value="/worktimelisttest",method = {RequestMethod.GET,RequestMethod.POST})
//		public String worktimelisttest(GiverVO gvo,WorktimeVO wvo,HttpSession session,Model model) throws Exception{	
//			return "worktimelisttest";
//		} 
//		// 퇴근 기록 업데이트
		@RequestMapping(value="worktimup",method = {RequestMethod.GET,RequestMethod.POST})
		public String worktimeUpdate(GiverVO gvo,WorktimeVO wvo,HttpSession session,Model model) throws Exception{
			int g_work_no = Integer.parseInt(session.getAttribute("g_work_no").toString());
			wvo.setGiver_no(g_work_no);
			System.out.println("퇴근기록업데이트 테스트");
			System.out.println(g_work_no);
			giver_service.worktimeupdateService(wvo);
			session.setAttribute("end_time", wvo.getEnd_time());
			System.out.println(wvo.getG_work_no());
			System.out.println(wvo.getStart_time());
			System.out.println(wvo.getEnd_time());
			return "mypage/giver_mypage/worktimelisttest";
		}
		// 출퇴근 리스트
		@RequestMapping(value="/worktimelist",method = {RequestMethod.GET,RequestMethod.POST})
		public ModelAndView worktimeselect(Model model,GiverVO gvo,WorktimeVO wvo,HttpSession session) throws Exception {
			int g_work_no = Integer.parseInt(session.getAttribute("g_work_no").toString());
//			model.addAttribute("apply",giver_service.worktimeselectService(g_work_no));
			List<WorktimeVO> list = giver_service.worktimeselectService(g_work_no);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("mypage/giver_mypage/worktimelist");
			mav.addObject("work",list);
//			model.addAttribute("work", giver_service.worktimeselectService(wvo));
			System.out.println(wvo.getStart_time()+wvo.getEnd_time()+wvo.getGiver_no()+wvo.getG_work_no());
			return mav;
		}
		// 도우미 마이페이지
		@RequestMapping("/guide_my_page")
		public String guide_my_page(GiverVO gvo,WorktimeVO wvo,Apply_to_giverVO avo,HttpSession session,Model model) throws Exception {

			giver_service.apply_to_giver_selectService(avo);
			model.addAttribute("apply", giver_service.apply_to_giver_selectService(avo));
			avo.getCustomer_no();
			avo.getApply_to_giver_no();
			return "mypage/giver_mypage/guide_my_page";
		}
		      
	
	
}