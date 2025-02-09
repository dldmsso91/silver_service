package com.cteam.www.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class TestController {

   
   @GetMapping(value="/blog.do")
   public String boardList(Model m) {
      return "blog";
      }
      
	@GetMapping(value="/index.do")
	public String index(Model m) {
	
		return "index";
		}
         
	@GetMapping(value="/apply_services.do")
	public String services(Model m) {
	   return "apply_services";
	   }
	
	@GetMapping(value="/apply_services_type.do")
	public String apply_services_type(Model m) {
	   return "apply_services_type";
	   }          
	
	@GetMapping(value="/testimonial.do")
	public String testimonial(Model m) {
	   return "testimonial";
	   }
	
	@GetMapping(value="/contact.do")
	public String contact(Model m) {
	   return "contact";
	   }

            
	@GetMapping(value="/about.do")
	public String about(Model m) {
	   return "about_sw";
	   }  
	@GetMapping(value="/caregiver_service_main.do")
	public String caregiver_service_main(Model m) {
		return "caregiver_service_main";
	}  
	@GetMapping(value="/walking_service_main.do")
	public String walking_service_main(Model m) {
		return "walking_service_main";
	}  
	@GetMapping(value="/life_service_main.do")
	public String life_service_main(Model m) {
		return "life_service_main";
	}  
	
	
	// bus
		@GetMapping(value = "/about_bis.do")
		public String about_bis(Model m) {
			return "about_bis_sw";
		}

}