package com.cteam.www.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class SongController {
	//게시판목록
	@GetMapping(value="/list_scm.do")
	public String list_scm(Model m) {
	      return "list_scm";
	}
	//메인페이지
	@GetMapping(value="/index.do")
	public String index(Model m) {
	
		return "index";
		}
	//소식게시판목록
	@GetMapping(value="/list2_scm.do")
	public String list2_scm(Model m) {
	      return "list2_scm";
	}
	//로그인페이지
	@GetMapping(value="/login_scm.do")
	public String login_scm(Model m) {
	      return "login_scm";
	}
	//고객센터
	@GetMapping(value="/ServiceCenter_scm.do")
	public String ServiceCenter_scm(Model m) {
	      return "ServiceCenter_scm";
	}
	//나의페이지
	@GetMapping(value="/mypage_scm.do")
	public String mypage_scm(Model m) {
	      return "mypage_scm";
	}
	//회원가입
	@GetMapping(value="/hoewon_scm.do")
	public String hoewon_scm(Model m) {
	      return "hoewon_scm";
	}
	   

}