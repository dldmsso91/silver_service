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
	   return "about";
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
	@GetMapping(value="/apply_services_detail.do")
	public String apply_services_detail(Model m) {
		return "apply_services_detail";
	}  
	@GetMapping(value="/apply_caregiver_detail.do")
	public String apply_caregiver_detail(Model m) {
		return "apply_caregiver_detail";
	}  
	@GetMapping(value="/recommend_service.do")
	public String recommend_service(Model m) {
		return "recommend_service";
	}  
	@GetMapping(value="/test.do")
	public String test(Model m) {
		return "test";
	}  
	@GetMapping(value="/succesed_apply_service.do")
	public String succesed_apply_service(Model m) {
		return "succesed_apply_service";
	}  
	@GetMapping(value="/hugi.do")
	public String hugi(Model m) {
		return "hugi";
	}   
	@GetMapping(value="/hugilist.do")
	public String hugilist(Model m) {
		return "hugilist";
	}    
	@GetMapping(value="/Writehugi.do")
	public String Writehugi(Model m) {
		return "Writehugi";
	}     
	@GetMapping(value = "/ServiceWrite.do")
	public String ServiceWrite(Model m) {
		return "ServiceWrite";
	}     
	@GetMapping(value = "/Helpsupport.do")
	public String Helpsupport(Model m) {
		return "Helpsupport";
	}     
	@GetMapping(value = "/Lifesupport.do")
	public String Lifesupport(Model m) {
		return "Lifesupport";
	}  
	@GetMapping(value = "/service_commit.do")
	public String service_commit(Model m) {
		return "service_commit";
	}
	@GetMapping(value = "/mypage_service.do")
	public String mypage_service(Model m) {
		return "mypage_service";
	}
	@GetMapping(value = "/time.do")
	public String time(Model m) {
		return "time";
	}
	@GetMapping(value = "/help_mypage_list.do")
	public String help_mypage_list(Model m) {
		return "help_mypage_list";
	}
}

