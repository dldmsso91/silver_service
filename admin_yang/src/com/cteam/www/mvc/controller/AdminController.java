package com.cteam.www.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class AdminController {
	  
	@GetMapping(value="/index.do")
	public String index(Model m) {
	
		return "index";
	}
	
	@GetMapping(value="/default.do")
	public String home(Model m) {
	
		return "default";
	}
	
	@GetMapping(value="/memberInfo.do")
	public String memberInfo(Model m) {
	
		return "memberInfo";
	}
	
	@GetMapping(value="/findMember.do")
	public String findMember(Model m) {
	
		return "findMember";
	}
	
	@GetMapping(value="/assignCaregiver.do")
	public String assignCaregiver(Model m) {
	
		return "assignCaregiver";
	}
	
	@GetMapping(value="/caregiverInfo.do")
	public String caregiverInfo(Model m) {
	
		return "caregiverInfo";
	}
	
	@GetMapping(value="/caregiverInfoDetail.do")
	public String caregiverInfoDetail(Model m) {
	
		return "caregiverInfoDetail";
	}
	
	@GetMapping(value="/memberInfoDetail.do")
	public String memberInfoDetail(Model m) {
	
		return "memberInfoDetail";
	}
	
	@GetMapping(value="/signup.do")
	public String signup(Model m) {
	
		return "signup";
	}
         
}