package com.cteam.www.mvc.controller;


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
	
	
	@GetMapping(value="/test1.do")
	public String teset(Model m) {
	
		return "test1";
		}
         
	
	@GetMapping(value="/testimonial.do")
	public String testimonial(Model m) {
	   return "testimonial";
	   }
	
	@GetMapping(value="/contact.do")
	public String contact(Model m) {
	   return "contact";
	   }

            
	@GetMapping(value="/bus_service.do")
	public String bus_service(Model m) {
	   return "bus_service_sw";
	   }  
	
	
	
	
	
	//--------------------------------------------------------------en_controller
	@GetMapping(value="/apply_services_en.do")
	public String services(Model m) {
		return "apply_services_en";
	}
	
	@GetMapping(value="/apply_services_type_en.do")
	public String apply_services_type(Model m) {
		return "apply_services_type_en";
	}          
	@GetMapping(value="/caregiver_service_main_en.do")
	public String caregiver_service_main(Model m) {
		return "caregiver_service_main_en";
	}  
	
	
	@GetMapping(value="/walking_service_main_en.do")
	public String walking_service_main(Model m) {
		return "walking_service_main_en";
	}  
	
	
	@GetMapping(value="/life_service_main_en.do")
	public String life_service_main_en(Model m) {
		return "life_service_main_en";
	}  
	
	
	@GetMapping(value="/apply_caregiver_detail_en.do")
	public String apply_caregiver_detail_en(Model m) {
		return "apply_caregiver_detail_en";
	}  
	
	@GetMapping(value="/recommend_service_en.do")
	public String recommend_service_en(Model m) {
		return "recommend_service_en";
	}  
	
	
	@GetMapping(value="/resume_giver_en.do")
	public String resume_giver_en(Model m) {
		return "resume_giver_en";
	}  
	
	@GetMapping(value="/giver_resume_detail_en.do")
	public String giver_resume_detail_en(Model m) {
		return "giver_resume_detail_en";
	}  
	
	@GetMapping(value="/my_giver_resume_detail_en.do")
	public String my_giver_resume_detail_en(Model m) {
		return "my_giver_resume_detail_en";
	}  
	
	@GetMapping(value="/my_resume_update_en.do")
	public String my_resume_update_en(Model m) {
		return "my_resume_update_en";
	}  
	
	@GetMapping(value="/my_service_en.do")
	public String my_service_en(Model m) {
		return "my_service_en";
	}  
	
	@GetMapping(value="/succesed_apply_service_en.do")
	public String succesed_apply_service_en(Model m) {
		return "succesed_apply_service_en";
	}  
	
	@GetMapping(value="/succesed_apply_giver_en.do")
	public String succesed_apply_giver_en(Model m) {
		return "succesed_apply_giver_en";
	}  

	@GetMapping(value="/my_resume_en.do")
	public String my_resume_en(Model m) {
		return "my_resume_en";
	}
	
	
	
	//--------------------------------------------------------------en_controller_end
	
//	@GetMapping(value="/about.do")
//	public String about_sw(Model m) {
//	   return "about_sw";
//	   }  
	//------------------------------------------------
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping(value="/ServiceWrite.do")
	public String ServiceWrite(Model m) {
		return "ServiceWrite";
	}  
	
	
	
	

	
	@GetMapping(value="/hugi_service.do")
	public String hugi_service(Model m) {
		return "hugi_service";
	}
}
	
	