package com.cteam.www.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class DyController {

	@GetMapping(value="/stats_admin_dy.do")
	public String stats_admin_dy(Model m) {
	
		return "stats_admin_dy";
	}
	
	@GetMapping(value="/voice_service_intro_dy.do")
	public String voice_service_intro_dy(Model m) {
	
		return "voice_service_intro_dy";
	}
	
}