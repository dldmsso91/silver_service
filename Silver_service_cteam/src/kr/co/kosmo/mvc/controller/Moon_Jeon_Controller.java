package kr.co.kosmo.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;

import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.Career_SubVO;
import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_Area_SubVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.dto.Giver.License_SubVO;
import kr.co.kosmo.mvc.service.CustomerService;
import kr.co.kosmo.mvc.service.Giver.GiverService;


@Controller
public class Moon_Jeon_Controller {
	
	@Autowired
	GiverService giverService;
	
	@Autowired
	CustomerService customerservice;
	
	//---------- 로그인 시에만 이용 가능하게 만들기.
	@RequestMapping(value="/customer_hugi_detail_look_yj")
	   public String customer_hugi_detail_look_yj() {
	      return "customer_hugi_detail_look_yj";
	}
	   
	@RequestMapping(value="/customer_service_check_yj")
	   public String customer_service_check_yj() {
	      return "customer_service_check_yj";
	}
	   
	@RequestMapping(value="/customer_use_content._yj")
	   public String customer_use_content() {
	      return "customer_use_content";
	}
	
	@RequestMapping(value="/guide_worktime_yj")
	   public String boaguide_worktime_yjrdList() {
	      return "guide_worktime_yj";
	}

	@RequestMapping(value="/guide_my_page_yj")
	   public String guide_my_page_yj() {
	      return "guide_my_page_yj";
	}
	
	
	
	
//---------------------------------동윤 Controller ----------------------------------------
	
	@RequestMapping(value="/guide_Life_apply_yj")
	   public String guide_Life_apply_yj(HttpSession session) {
			int u_no;
			if(session.getAttribute("u_no")==null) {
				return "login";
			}
			else {
				u_no = Integer.parseInt(session.getAttribute("u_no").toString());
			}
		      return "dy/guide_Life_apply_yj";
	   }
	
	@RequestMapping(value="/guide_nursing_apply_yj")
	   public String guide_nursing_apply_yj(HttpSession session) {
			int u_no;
			if(session.getAttribute("u_no")==null) {
				return "login";
			}
			else {
				u_no = Integer.parseInt(session.getAttribute("u_no").toString());
			}
		    	return "dy/guide_nursing_apply_yj";
	   }
	   

	
	@RequestMapping(value="/guide_walk_apply_yj")
	   public String guide_walk_apply_yj(HttpSession session) {
				int u_no;
				if(session.getAttribute("u_no")==null) {
					return "login";
				}
				else {
					u_no = Integer.parseInt(session.getAttribute("u_no").toString());
				}
					return "dy/guide_walk_apply_yj";
	      }  
	
	@RequestMapping(value="/customer_service_apply_yj")
	   public String customer_service_apply_yj(HttpSession session) {
				int u_no;
				if(session.getAttribute("u_no")==null) {
					return "login";
				}
				else {
					u_no = Integer.parseInt(session.getAttribute("u_no").toString());
				}
					return "dy/customer_service_apply_yj";
	      }

	
	@Autowired
	GiverService giver_service;	
	// --------------------------------------- 전동윤 -----------------------
	@PostMapping("giver_apply")
	public String insertGiverAll(GiverVO gvo, Career_SubVO cvo, License_SubVO lvo, Hope_Business_Area_SubVO hvo,HttpSession session) {
		
		//u_no 의 Session값 받아오는 부분
		int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
		gvo.setU_no(u_no);

		//-----------------License List inset 부분 ---------------------------------
		
		List<String> list_l1 = lvo.getLicense_name();
		List<String> list_l2 = lvo.getLicense_Institute();
		List<String> list_l3 = lvo.getLicense_Redate();

		List<LicenseVO> list_l = new ArrayList<LicenseVO>();
		LicenseVO licensevo = null;
		int l = list_l1.size();

  		for(int i =0; i< l; i++) { 
  			 licensevo = new LicenseVO();
  			 licensevo.setLicense_name(list_l1.get(i)); 
			 System.out.println(list_l1.get(i));
			 licensevo.setLicense_Institute(list_l2.get(i)); 
			 licensevo.setLicense_Redate(list_l3.get(i));
			 list_l.add(licensevo); 
		 }
		 
  		//-----------------Career List inset 부분 ---------------------------------
  		
		List<String> list_c1 = cvo.getCareer_name();
		List<String> list_c2 = cvo.getRole();
		List<String> list_c3 = cvo.getWork_period_start();
		List<String> list_c4 = cvo.getWork_period_end();

		List<CareerVO> list_c = new ArrayList<CareerVO>();
		CareerVO careervo = null;
		int c = list_c1.size();

  		for(int i =0; i< c; i++) { 
  			 careervo = new CareerVO();
  			 careervo.setCareer_name(list_c1.get(i));
			 System.out.println(list_c1.get(i));
			 careervo.setRole(list_c2.get(i));
			 careervo.setWork_period_start(list_c3.get(i));
			 careervo.setWork_period_end(list_c4.get(i));
			 list_c.add(careervo); 
		 }
  			
  		//-----------------Hope_Business_Area List inset 부분 ---------------------------------
  		List<String> list_h1 = hvo.getHope_business_city();
  		List<String> list_h2 = hvo.getHope_business_town();
  		
  		List<Hope_Business_AreaVO> list_h = new ArrayList<Hope_Business_AreaVO>();
  		Hope_Business_AreaVO hopeAreavo = null;
  		int h = list_h1.size();
  		
  		for(int i =0; i< h; i++) { 
  			 hopeAreavo = new Hope_Business_AreaVO();
  			 hopeAreavo.setHope_business_city(list_h1.get(i));
  			System.out.println(list_h1.get(i));
  			 hopeAreavo.setHope_business_town(list_h2.get(i));
  			list_h.add(hopeAreavo);
		 }
  		
  		
  		//----------------Service 적용 부분 -----------------------------------------------
		giverService.insertGiverAll(gvo, list_c, list_l, list_h);

		
		//------------ giver_no 세션에 넣는 부분 ----------------------------
		session.setAttribute("giver_no", gvo.getGiver_no());

		// System.out.println(gvo.getFile());
		// System.out.println(gvo.getMy_IMG());

		return "redirect:succesed_apply_giver_en";
	}
		
		@PostMapping("customer_apply")
		public String insertCustomer(Model model,GiverVO vo, CustomerVO Cvo,HttpSession session) throws Exception {
			int u_no = Integer.parseInt(session.getAttribute("u_no").toString());
			Cvo.setU_no(u_no);
			customerservice.insertCustomer(Cvo);
			session.setAttribute("customer_no", Cvo.getCustomer_no()); 
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
			model.addAttribute("Default",giver_service.selectGiverList(vo));	
			
			return "redirect:recommend_service_en";
		}
		
}
