package kr.co.kosmo.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Song_Controller {


	@RequestMapping(value="board/list")
	public String list_scm() {
	      return "list";
	}
	@RequestMapping(value="index")
	public String index() {
		return "index";
	}		
	@RequestMapping(value="board/list2_scm")
	public String list2_scm() {
	      return "list2_scm";
	}
	@RequestMapping(value="login")
	public String login_scm() {
	      return "login";
	}
	@RequestMapping(value="member/ServiceCenter_scm")
	public String ServiceCenter_scm() {
	      return "ServiceCenter_scm";
	}
	@RequestMapping(value="member/mypage_scm")
	public String mypage_scm() {
	      return "mypage_scm";
	}
	@RequestMapping(value="/hoewon_scm")
	public String hoewon_scm() {
	      return "hoewon_scm";
	}
	   

}
