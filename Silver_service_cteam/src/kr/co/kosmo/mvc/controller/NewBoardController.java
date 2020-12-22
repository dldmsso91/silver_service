package kr.co.kosmo.mvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.kosmo.mvc.dto.NewBoardVO;
import kr.co.kosmo.mvc.service.NewBoardService;

@Controller
@RequestMapping("/newboard/*") 
public class NewBoardController {

	private static final Logger logger = LoggerFactory.getLogger(NewBoardController.class);
	
	@Autowired
	NewBoardService service;
	
	//새소식 글작성 화면
	@RequestMapping(value="/newboard/new_writeView",method= RequestMethod.GET)
	public void new_writeView() throws Exception{
		logger.info("new_writeView");
	
	}
	
	//새소식 글 작성
	@RequestMapping(value ="write", method = RequestMethod.POST)
	public String write(NewBoardVO newboardVO) throws Exception {
		service.write(newboardVO);
		return "redirect:/";
	}
	//새소식 목록 조회
	@RequestMapping(value = "/new_list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		
		model.addAttribute("list",service.list());
		
		
		return "newboard/new_list";
		
	}
	// 새소식 조회
	@RequestMapping(value = "/new_readView", method = RequestMethod.GET)
	public String read(int bno, Model model) throws Exception{
		logger.info("read");
		int bnov = bno;
		System.out.println("Bnov "+bnov);
		model.addAttribute("read", service.read(bnov));
		
		return "newboard/new_readView";
	}
	// 새소식 수정뷰
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(NewBoardVO newboardVO, Model model) throws Exception{
		logger.info("updateView");
		
		model.addAttribute("update", service.read(newboardVO.getNbno()));
		
		return "newboard/new_updateView";
	}
	
	// 게시판 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(NewBoardVO newboardVO) throws Exception{
		logger.info("update");
		
		service.update(newboardVO);
		
		return "redirect:/newboard/new_list";
	}

	// 게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(NewBoardVO newboardVO) throws Exception{
		logger.info("delete");
		
		service.delete(newboardVO.getNbno());
		
		return "redirect:/newboard/new_list";
	}
	

	


}
