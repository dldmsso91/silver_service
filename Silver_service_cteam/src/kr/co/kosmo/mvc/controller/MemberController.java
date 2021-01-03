package kr.co.kosmo.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.service.MemberService;



@Controller
/* @RequestMapping("/member/") */
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService service;
	
	// �쉶�썝媛��엯 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register");
		int result = service.idChk(vo);
		try {
			if(result == 1) {
				return "register";
			}else if(result == 0) {
				service.register(vo);
			}
			// 요기에서~ 입력된 아이디가 존재한다면 -> 다시 회원가입 페이지로 돌아가기 
			// 존재하지 않는다면 -> register
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/index";
	}
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		MemberVO login = service.login(vo);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
			session.setAttribute("u_no", login.getU_no());
			session.setAttribute("u_id", login.getU_id());
		}
		
		return "redirect:/";
	}
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	

	/*
	 * // �쉶�썝�긽�꽭�젙蹂댁“�쉶(�떎�뙣)
	 * 
	 * @RequestMapping(value="/memberView") public String memberView(String u_id
	 * ,Model model) { model.addAllAttributes("dto",memberService.viewMember(u_id));
	 * logger.info("�겢由��븳�븘�씠�뵒 :" +u_id); return "memberView"; }
	 * 
	 */
	
	/*
	 * // �쉶�썝�긽�꽭�젙蹂댁“�쉶
	 * 
	 * @RequestMapping(value = "/readmember" , method = RequestMethod.GET) public
	 * String readmember(MemberVO memberVO ,@ModelAttribute("scri") SearchCriteria
	 * scri,Model model) throws Exception{ logger.info("readmember");
	 * model.addAttribute("readmember",service.readmember(memberVO.getU_id()));
	 * model.addAttribute("scri",scri);
	 * 
	 * return "readmember"; }
	 */
	
	
	// �쉶�썝�젙蹂댁닔�젙
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "memberUpdateView";
	}
                                                                                                                                      
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
		service.memberUpdate(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	// 회원 탈퇴 get
		@RequestMapping(value="memberDeleteView", method = RequestMethod.GET)
		public String memberDeleteView() throws Exception{
			return "memberDeleteView";
		}
		
		
		// 회원 탈퇴 post
			@RequestMapping(value="memberDelete", method = RequestMethod.POST)
			public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
				
				// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
				MemberVO member = (MemberVO) session.getAttribute("member");
				// 세션에있는 비밀번호
				String sessionPass = member.getU_password();
				// vo로 들어오는 비밀번호
				String voPass = vo.getU_password();
				
				if(!(sessionPass.equals(voPass))) {
					rttr.addFlashAttribute("msg", false);
					return "redirect:memberDeleteView";
				}
				service.memberDelete(vo);
				session.invalidate();
				return "redirect:/";
			}
	}
