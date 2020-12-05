package com.cteam.www.mvc.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BisController {

	@GetMapping(value = "/bus_info.do")
	public String bus_info(Model m) {
		return "bus_info_sw";
	}
	@GetMapping(value = "/bus_main.do")
	public String bus_main(Model m) {
		return "bus_main_sw";
	}
}