package com.cteam.www.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class MoonController {
	   
	   @GetMapping(value="/customer_hugi_detail_look_yj.do")
	   public String customer_hugi_detail_look_yj(Model m) {
	      return "customer_hugi_detail_look_yj";
	      }
	   
	   @GetMapping(value="/customer_hugi_list_yj.do")
	   public String customer_hugi_list_yj(Model m) {
	      return "customer_hugi_list_yj";
	      }
	   
	   @GetMapping(value="/customer_hugi_write_yj.do")
	   public String customer_hugi_write_yj(Model m) {
	      return "customer_hugi_write_yj";
	      }
	   
	   @GetMapping(value="/customer_service_apply_yj.do")
	   public String customer_service_apply_yj(Model m) {
	      return "customer_service_apply_yj";
	      }
	   
	   @GetMapping(value="/customer_service_check_yj.do")
	   public String customer_service_check_yj(Model m) {
	      return "customer_service_check_yj";
	      }
	   
	   @GetMapping(value="/customer_use_content._yj.do")
	   public String customer_use_content(Model m) {
	      return "customer_use_content";
	      }
	   
	   @GetMapping(value="/guide_Life_apply_yj.do")
	   public String guide_Life_apply_yj(Model m) {
	      return "guide_Life_apply_yj";
	      }
	   
	   @GetMapping(value="/guide_my_page_yj.do")
	   public String guide_my_page_yj(Model m) {
	      return "guide_my_page_yj";
	      }
	   
	   @GetMapping(value="/guide_nursing_apply_yj.do")
	   public String guide_nursing_apply_yj(Model m) {
	      return "guide_nursing_apply_yj";
	      }
	   
	   @GetMapping(value="/guide_worktime_yj.do")
	   public String boaguide_worktime_yjrdList(Model m) {
	      return "guide_worktime_yj";
	      }
	      
	
}