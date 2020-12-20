package kr.co.kosmo.mvc.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.MemberDAO;
import kr.co.kosmo.mvc.dto.MemberVO;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired MemberDAO dao;
	
	@Override
	public void register(MemberVO vo) throws Exception {
		
		dao.register(vo);
		
	}
	
	@Override	
	public MemberVO login(MemberVO vo) throws Exception {
	
		return dao.login(vo);
	}
	

	//Controller�뿉�꽌 蹂대궡�뒗 �뙆�씪誘명꽣�뱾�쓣 memberUpdate(MemberVO vo)濡� 諛쏄퀬
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		
		//諛쏆� vo瑜� DAO濡� 蹂대궡以띾땲�떎.
		dao.memberUpdate(vo);
		
	}
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}
}
