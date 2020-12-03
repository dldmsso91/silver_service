package com.cteam.www.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class TestController {

	@GetMapping(value="/stats_admin.do")
	public String stats_admin(Model m) {
	
		return "stats_admin";
	}
	
	@GetMapping(value="/index.do")
	public String index(Model m) {
	
		return "index";
		}
}