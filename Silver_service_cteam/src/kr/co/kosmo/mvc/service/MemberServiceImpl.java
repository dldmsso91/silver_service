package kr.co.kosmo.mvc.service;



import java.util.HashMap;

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
	//회원 삭제
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		dao.memberDelete(vo);
}
	
	
	
	//--------은내
	//customerNo update(세션용)	
	@Override
	public void update_customerNo_mem(int u_no, int customer_no) throws Exception {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("u_no", u_no);
		map.put("customer_no", customer_no);
		dao.update_customerNo_mem(map);
	}

	//giverNo update(세션용)	
	@Override
	public void update_giverNo_mem(int u_no, int giver_no) throws Exception {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("u_no", u_no);
		map.put("giver_no", giver_no);
		dao.update_giverNo_mem(map);
	}
	
}
