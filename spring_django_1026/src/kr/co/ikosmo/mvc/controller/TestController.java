package kr.co.ikosmo.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.ikosmo.mvc.dao.BoardDAO;
import kr.co.ikosmo.mvc.vo.BoardVO;

@Controller
public class TestController {
   @Autowired
   private BoardDAO dao;
   
   @GetMapping(value="/blog.do")
   public String boardList(Model m) {
//      List<BoardVO> lisv = dao.getBoardList();
//      m.addAttribute("lisv",lisv);
      return "blog";
      }
      
	@GetMapping(value="/index.do")
	public String index(Model m) {
	
		return "index";
		}
         
	@GetMapping(value="/services.do")
	public String services(Model m) {
	   return "services";
	   }

            
	@GetMapping(value="/testimonial.do")
	public String testimonial(Model m) {
	   return "testimonial";
	   }
	
	@GetMapping(value="/contact.do")
	public String contact(Model m) {
	   return "contact";
	   }

            
	@GetMapping(value="/about.do")
	public String about(Model m) {
	   return "about";
	   }  

}