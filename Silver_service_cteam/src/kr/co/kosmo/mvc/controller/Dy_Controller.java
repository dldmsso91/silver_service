package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Dy_Controller {
	
		@RequestMapping(value="/stats_admin_dy")
		public String stats_admin_dy() {
		
			return "stats_admin_dy";
		}
		
		@RequestMapping(value="/voice_service_intro_dy")
		public String voice_service_intro_dy() {
		
			return "voice_service_intro_dy";
		}
}
