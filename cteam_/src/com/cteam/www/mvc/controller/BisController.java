package com.cteam.www.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class BisController {


//°ü¸®ÀÚ
	@GetMapping(value = "/about_admin.do")
	public String about_admin(Model m) {
		return "about_admin";
	}
}