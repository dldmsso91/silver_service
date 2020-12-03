package com.cteam.www.mvc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class CommunityController {

	
	@GetMapping(value="/communityService.do")
	public String communityService(Model m) {
		return "communityService_jw";
	}
	
	@GetMapping(value="/medicalLocation.do")
	public String medicalLocation(Model m) {
		return "medicalLocation_jw";
	}
	
	@GetMapping(value="/silverhallLocation.do")
	public String silverhallLocation(Model m) {
		return "silverhallLocation_jw";
	}
	
	@GetMapping(value="/elderlyhomeLocation.do")
	public String elderlyhomeLocation(Model m) {
		return "elderlyhomeLocation_jw";
	}
}