package kr.co.kosmo.mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;

import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.service.CustomerService;
import kr.co.kosmo.mvc.service.Giver.GiverService;



@Controller
public class Moon_Jeon_Controller {
	
	@Autowired
	GiverService giverService;
	
	@Autowired
	CustomerService customerservice;
	   
	@RequestMapping(value="/customer_hugi_detail_look_yj")
	   public String customer_hugi_detail_look_yj() {
	      return "customer_hugi_detail_look_yj";
	      }
	   
	@RequestMapping(value="/customer_hugi_list_yj")
	   public String customer_hugi_list_yj() {
	      return "customer_hugi_list_yj";
	      }
	   
	@RequestMapping(value="/customer_hugi_write_yj")
	   public String customer_hugi_write_yj() {
	      return "customer_hugi_write_yj";
	      }
	   
	@RequestMapping(value="/customer_service_apply_yj")
	   public String customer_service_apply_yj() {
		

	      return "customer_service_apply_yj";
	      }
	   
	@RequestMapping(value="/customer_service_check_yj")
	   public String customer_service_check_yj() {
	      return "customer_service_check_yj";
	      }
	   
	@RequestMapping(value="/customer_use_content._yj")
	   public String customer_use_content() {
	      return "customer_use_content";
	      }
	   
	@RequestMapping(value="/guide_Life_apply_yj")
	   public String guide_Life_apply_yj() {
	      return "guide_Life_apply_yj";
	      }
	   
	@RequestMapping(value="/guide_my_page_yj")
	   public String guide_my_page_yj() {
	      return "guide_my_page_yj";
	      }
	   
	@RequestMapping(value="/guide_nursing_apply_yj")
	   public String guide_nursing_apply_yj() {
	      return "guide_nursing_apply_yj";
	      }
	   
	@RequestMapping(value="/guide_worktime_yj")
	   public String boaguide_worktime_yjrdList() {
	      return "guide_worktime_yj";
	      }
	
	@RequestMapping(value="/guide_walk_apply_yj")
	   public String guide_walk_apply_yj() {
	      return "guide_walk_apply_yj";
	      }  
	
	
	   //----------------------���� insert��   ���� -------------------------------- DY
	/*
	@Autowired
	private GiverDAO giverdao;
		// ����� ������ ó���ϱ� giver_apply
		@PostMapping("giver_apply")
		// �����κ��� ���޵Ǵ� �Ķ�����̸��� Vo��ü�� ������Ƽ�� ���ƾ��Ѵ�.
		// ���� �ٸ��ٸ� ���� ���ε��� �ʰ� ��� ���޵Ǳ� ������ null������ �߻�.
		public ModelAndView insertGiverAll(GiverVO Gvo) throws Exception {
			ModelAndView mav = new ModelAndView();
			int res = giverdao.insertGiver(Gvo);

			if (res == 1) {// ���̹�Ƽ�� �۾��� ����
				mav.setViewName("success");
				//mav.addObject("giver_type", Gvo.getGiver_type());
			} else {
				mav.setViewName("error");
				//mav.addObject("giver_type", Gvo.getGiver_type());
			}
		
			return mav;
		}
		
		// �߰� �ؼ� �غ��� ���� ---------------------------------------------------

		// ����� ������ ó���ϱ� giver_apply
		@PostMapping("giver_apply")
		// �����κ��� ���޵Ǵ� �Ķ�����̸��� Vo��ü�� ������Ƽ�� ���ƾ��Ѵ�.
		// ���� �ٸ��ٸ� ���� ���ε��� �ʰ� ��� ���޵Ǳ� ������ null������ �߻�.
		public void insertCareer(Model model,CareerVO Cvo) throws Exception {
			int res = giverdao.insertCareer(Cvo);
			System.out.println("career" + res);	
		}
		
		// ����� ������ ó���ϱ� giver_apply
		@PostMapping("giver_apply")
		// �����κ��� ���޵Ǵ� �Ķ�����̸��� Vo��ü�� ������Ƽ�� ���ƾ��Ѵ�.
		// ���� �ٸ��ٸ� ���� ���ε��� �ʰ� ��� ���޵Ǳ� ������ null������ �߻�.
		public void insertLicense(Model model, LicenseVO Lvo) throws Exception {
			int res = giverdao.insertLicense(Lvo);
			System.out.println("license" + res);
		}
		
		// ����� ������ ó���ϱ� giver_apply
		@PostMapping("giver_apply")
		// �����κ��� ���޵Ǵ� �Ķ�����̸��� Vo��ü�� ������Ƽ�� ���ƾ��Ѵ�.
		// ���� �ٸ��ٸ� ���� ���ε��� �ʰ� ��� ���޵Ǳ� ������ null������ �߻�.
		public void insertHopeBusinessArea(Hope_Business_AreaVO Hvo) throws Exception {
			ModelAndView mav = new ModelAndView();
			int res = giverdao.insertHopeBusinessArea(Hvo);
			System.out.println("HopeBusinessArea" + res);

		}
		*/
	
	// --------------------------------------- �ѿ��Ÿ� �Ǵ� �κ� -----------------------
		@PostMapping("giver_apply")
		public String insertGiverAll( GiverVO Gvo, CareerVO Cvo, LicenseVO Lvo, Hope_Business_AreaVO Hvo,HttpSession session) throws Exception{
			
			
			
			giverService.insertGiverAll( Gvo, Cvo, Lvo, Hvo);
			session.setAttribute("giver_no", Gvo.getGiver_no()); 

			return "giver/len/succesed_apply_giver_en";
		}
		
		@PostMapping("customer_apply")
		public String insertCustomer( CustomerVO Cvo,HttpSession session) throws Exception {
			customerservice.insertCustomer(Cvo);
			session.setAttribute("customer_no", Cvo.getCustomer_no()); 

			return "giver/len/recommend_service_en";
		}
		
}
