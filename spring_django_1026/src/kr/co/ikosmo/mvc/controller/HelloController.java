package kr.co.ikosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	
	@RequestMapping(value = "/blog2")
	public String hello(Model m) {
		
		m.addAttribute("msg", "�ȳ��ϼ���!");
		return "blog.jsp";
		
	}

}
