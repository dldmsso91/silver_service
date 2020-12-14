package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Moon_Controller {
	   
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
	
	      
}
