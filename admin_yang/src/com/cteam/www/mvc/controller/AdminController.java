package com.cteam.www.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class AdminController {
	  
	@GetMapping(value="/index.do")
	public String index(Model m) {
	
		return "index_jw";
	}
	
	@GetMapping(value="/login.do")
	public String home(Model m) {
	
		return "login_jw";
	}
	
	@GetMapping(value="/memberInfo.do")
	public String memberInfo(Model m) {
	
		return "memberInfo_jw";
	}
	
	@GetMapping(value="/findMember.do")
	public String findMember(Model m) {
	
		return "findMember_jw";
	}
	
	@GetMapping(value="/assignCaregiver.do")
	public String assignCaregiver(Model m) {
	
		return "assignCaregiver_jw";
	}
	
	@GetMapping(value="/caregiverInfo.do")
	public String caregiverInfo(Model m) {
	
		return "caregiverInfo_jw";
	}
	
	@GetMapping(value="/caregiverInfoDetail.do")
	public String caregiverInfoDetail(Model m) {
	
		return "caregiverInfoDetail_jw";
	}
	
	@GetMapping(value="/memberInfoDetail.do")
	public String memberInfoDetail(Model m) {
	
		return "memberInfoDetail_jw";
	}
	
	@GetMapping(value="/signup.do")
	public String signup(Model m) {
	
		return "signup_jw";
	}
	
	@GetMapping(value="/stats_admin_dy.do")
	public String stats_admin_dy(Model m) {
	
		return "stats_admin_dy";
	}
         
}