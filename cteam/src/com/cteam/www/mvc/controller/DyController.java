package com.cteam.www.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class DyController {

	@GetMapping(value="/dy_stats_admin.do")
	public String dy_stats_admin(Model m) {
	
		return "dy_stats_admin";
	}
	
	@GetMapping(value="/dy_voice_service_intro.do")
	public String dy_voice_service_intro(Model m) {
	
		return "dy_voice_service_intro";
	}
	
}