package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class bus_Controller {
	
	
	@RequestMapping(value = "/bus_info")
	public String bus_info() {
		return "bus_info_sw";
	}
	@RequestMapping(value = "/bus_main")
	public String bus_main() {
		return "bus_main_sw";
	}
	@RequestMapping(value = "/bus_service")
	public String bus_service() {
		return "bus_service_sw";
	}
}
