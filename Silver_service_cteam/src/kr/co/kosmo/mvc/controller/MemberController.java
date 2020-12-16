package kr.co.kosmo.mvc.controller;




import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.kosmo.mvc.dto.BoardVO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.ReplyVO;
import kr.co.kosmo.mvc.dto.SearchCriteria;
import kr.co.kosmo.mvc.service.MemberService;



@Controller
/* @RequestMapping("/member/") */
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService service;
	
	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		
		service.register(vo);
		
		return "redirect:/";
	}
	// 로그인
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		MemberVO login = service.login(vo);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/";
	}
	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/login";
	}
	
	

	/*
	 * // 회원상세정보조회(실패)
	 * 
	 * @RequestMapping(value="/memberView") public String memberView(String u_id
	 * ,Model model) { model.addAllAttributes("dto",memberService.viewMember(u_id));
	 * logger.info("클릭한아이디 :" +u_id); return "memberView"; }
	 * 
	 */
	
	/*
	 * // 회원상세정보조회
	 * 
	 * @RequestMapping(value = "/readmember" , method = RequestMethod.GET) public
	 * String readmember(MemberVO memberVO ,@ModelAttribute("scri") SearchCriteria
	 * scri,Model model) throws Exception{ logger.info("readmember");
	 * model.addAttribute("readmember",service.readmember(memberVO.getU_id()));
	 * model.addAttribute("scri",scri);
	 * 
	 * return "readmember"; }
	 */
	
	
	// 회원정보수정
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "memberUpdateView";
	}
                                                                                                                                      
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
		service.memberUpdate(vo);
		
		session.invalidate();
		
		return "redirect:login";
	}
}