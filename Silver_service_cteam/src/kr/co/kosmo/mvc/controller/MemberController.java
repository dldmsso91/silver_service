package kr.co.kosmo.mvc.controller;





import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}

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
			throw new RuntimeException("---예외처리발생");
		}
		return "redirect:/index";
	}
	// 濡쒓렇�씤
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
			session.setAttribute("customer_no", login.getCustomer_no());
			session.setAttribute("giver_no", login.getGiver_no());
			
		}
		
		return "redirect:/";
	}
	//濡쒓렇�븘�썐
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	

	/*
	 * // 占쎌돳占쎌뜚占쎄맒占쎄쉭占쎌젟癰귣똻�쒙옙�돳(占쎈뼄占쎈솭)
	 * 
	 * @RequestMapping(value="/memberView") public String memberView(String u_id
	 * ,Model model) { model.addAllAttributes("dto",memberService.viewMember(u_id));
	 * logger.info("占쎄깻�뵳占쏙옙釉놂옙釉섓옙�뵠占쎈탵 :" +u_id); return "memberView"; }
	 * 
	 */
	
	/*
	 * // 占쎌돳占쎌뜚占쎄맒占쎄쉭占쎌젟癰귣똻�쒙옙�돳
	 * 
	 * @RequestMapping(value = "/readmember" , method = RequestMethod.GET) public
	 * String readmember(MemberVO memberVO ,@ModelAttribute("scri") SearchCriteria
	 * scri,Model model) throws Exception{ logger.info("readmember");
	 * model.addAttribute("readmember",service.readmember(memberVO.getU_id()));
	 * model.addAttribute("scri",scri);
	 * 
	 * return "readmember"; }
	 */
	
	
	// 占쎌돳占쎌뜚占쎌젟癰귣똻�땾占쎌젟
//	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
//	public String registerUpdateView() throws Exception{
//		
//		return "memberUpdateView";
//	}
//                                                                                                                                      

	//留덉씠�럹�씠吏� �씠�룞
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "mypage/default_mypage/memberUpdateView";
	}
	
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
		
		service.memberUpdate(vo);
		
		session.invalidate();
		
		return "redirect:/";
	}
	// �쉶�썝 �깉�눜 get
		@RequestMapping(value="memberDeleteView", method = RequestMethod.GET)
		public String memberDeleteView() throws Exception{
			return "memberDeleteView";
		}
		
		
		// �쉶�썝 �깉�눜 post
			@RequestMapping(value="memberDelete", method = RequestMethod.POST)
			public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
				
				// �꽭�뀡�뿉 �엳�뒗 member瑜� 媛��졇�� member蹂��닔�뿉 �꽔�뼱以띾땲�떎.
				MemberVO member = (MemberVO) session.getAttribute("member");
				// �꽭�뀡�뿉�엳�뒗 鍮꾨�踰덊샇
				String sessionPass = member.getU_password();
				// vo濡� �뱾�뼱�삤�뒗 鍮꾨�踰덊샇
				String voPass = vo.getU_password();
				
				if(!(sessionPass.equals(voPass))) {
					rttr.addFlashAttribute("msg", false);
					return "redirect:memberDeleteView";
				}
				service.memberDelete(vo);
				session.invalidate();
				return "redirect:/";
			}
			// 아이디 찾기 폼
			@RequestMapping(value = "/find_id_form")
			public String find_id_form() throws Exception{
				return "find_id_form";
			}
			// 아이디 찾기
			@RequestMapping(value = "/find_id", method = RequestMethod.POST)
			public String find_id(HttpServletResponse response, @RequestParam("u_email") String u_email, Model md) throws Exception{
				md.addAttribute("u_id", service.find_id(response, u_email));
				return "find_id";
			}
			 

			/*
			 * // 이메일 중복 체크
			 * 
			 * @ResponseBody
			 * 
			 * @RequestMapping(value="/emailChk", method = RequestMethod.POST) public int
			 * emailChk(MemberVO vo) throws Exception { int result = service.emailChk(vo);
			 * return result; }
			 */
			/* 비밀번호 찾기 */
			@RequestMapping(value = "/findpw", method = RequestMethod.GET)
			public void findPwGET() throws Exception{
			}
			@RequestMapping(value = "/findpw", method = RequestMethod.POST)
			public void findPwPOST(@ModelAttribute MemberVO vo, HttpServletResponse response) throws Exception{
				service.findPw(response, vo);
			}

			
	}
