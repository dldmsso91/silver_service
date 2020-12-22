package kr.co.kosmo.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.service.Giver.GiverService;



@Controller
public class Moon_Jeon_Controller {
	
	@Autowired
	GiverService giverService;
	   
	@RequestMapping(value="/customer_hugi_detail_look_yj")
	   public String customer_hugi_detail_look_yj() {
	      return "yj/customer_hugi_detail_look_yj";
	      }
	   
	@RequestMapping(value="/customer_hugi_list_yj")
	   public String customer_hugi_list_yj() {
	      return "yj/customer_hugi_list_yj";
	      }
	   
	@RequestMapping(value="/customer_hugi_write_yj")
	   public String customer_hugi_write_yj() {
	      return "yj/customer_hugi_write_yj";
	      }
	   
	@RequestMapping(value="/customer_service_apply_yj")
	   public String customer_service_apply_yj() {
	      return "yj/customer_service_apply_yj";
	      }
	   
	@RequestMapping(value="/customer_service_check_yj")
	   public String customer_service_check_yj() {
	      return "yj/customer_service_check_yj";
	      }
	   
	@RequestMapping(value="/customer_use_content._yj")
	   public String customer_use_content() {
	      return "yj/customer_use_content";
	      }
	   
	@RequestMapping(value="/guide_Life_apply_yj")
	   public String guide_Life_apply_yj() {
	      return "yj/guide_Life_apply_yj";
	      }
	   
	@RequestMapping(value="/guide_my_page_yj")
	   public String guide_my_page_yj() {
	      return "yj/guide_my_page_yj";
	      }
	   
	@RequestMapping(value="/guide_nursing_apply_yj")
	   public String guide_nursing_apply_yj() {
	      return "yj/guide_nursing_apply_yj";
	      }
	   
	@RequestMapping(value="/guide_worktime_yj")
	   public String boaguide_worktime_yjrdList() {
	      return "yj/guide_worktime_yj";
	      }
	
	@RequestMapping(value="/guide_walk_apply_yj")
	   public String guide_walk_apply_yj() {
	      return "yj/guide_walk_apply_yj";
	      }  
	
	
		
	   //----------------------다중 insert문   동윤 -------------------------------- DY
	/*
	@Autowired
	private GiverDAO giverdao;
		// 도우미 지원자 처리하기 giver_apply
		@PostMapping("giver_apply")
		// 폼으로부터 전달되는 파라미터이름이 Vo객체의 프로퍼티랑 같아야한다.
		// 만약 다르다면 값이 매핑되지 않고 디비에 전달되기 때문에 null에러가 발생.
		public ModelAndView insertGiverAll(GiverVO Gvo) throws Exception {
			ModelAndView mav = new ModelAndView();
			int res = giverdao.insertGiver(Gvo);

			if (res == 1) {// 마이바티스 작업이 성공
				mav.setViewName("success");
				//mav.addObject("giver_type", Gvo.getGiver_type());
			} else {
				mav.setViewName("error");
				//mav.addObject("giver_type", Gvo.getGiver_type());
			}
		
			return mav;
		}
		
		// 추가 해서 해보는 구간 ---------------------------------------------------

		// 도우미 지원자 처리하기 giver_apply
		@PostMapping("giver_apply")
		// 폼으로부터 전달되는 파라미터이름이 Vo객체의 프로퍼티랑 같아야한다.
		// 만약 다르다면 값이 매핑되지 않고 디비에 전달되기 때문에 null에러가 발생.
		public void insertCareer(Model model,CareerVO Cvo) throws Exception {
			int res = giverdao.insertCareer(Cvo);
			System.out.println("career" + res);	
		}
		
		// 도우미 지원자 처리하기 giver_apply
		@PostMapping("giver_apply")
		// 폼으로부터 전달되는 파라미터이름이 Vo객체의 프로퍼티랑 같아야한다.
		// 만약 다르다면 값이 매핑되지 않고 디비에 전달되기 때문에 null에러가 발생.
		public void insertLicense(Model model, LicenseVO Lvo) throws Exception {
			int res = giverdao.insertLicense(Lvo);
			System.out.println("license" + res);
		}
		
		// 도우미 지원자 처리하기 giver_apply
		@PostMapping("giver_apply")
		// 폼으로부터 전달되는 파라미터이름이 Vo객체의 프로퍼티랑 같아야한다.
		// 만약 다르다면 값이 매핑되지 않고 디비에 전달되기 때문에 null에러가 발생.
		public void insertHopeBusinessArea(Hope_Business_AreaVO Hvo) throws Exception {
			ModelAndView mav = new ModelAndView();
			int res = giverdao.insertHopeBusinessArea(Hvo);
			System.out.println("HopeBusinessArea" + res);

		}
		*/
	
	// --------------------------------------- 둘오거면 되는 부분 -----------------------
		@PostMapping("giver_apply")
		public String insertGiverAll( GiverVO Gvo, CareerVO Cvo, LicenseVO Lvo, Hope_Business_AreaVO Hvo) throws Exception{
			giverService.insertGiverAll( Gvo, Cvo, Lvo, Hvo);
			
			return "success";
		}
		
		
}
