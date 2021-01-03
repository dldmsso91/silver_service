package kr.co.kosmo.mvc.dao;

import java.util.HashMap;

import kr.co.kosmo.mvc.dto.MemberVO;

public interface MemberDAO {
	
	//--------치민
	// 회원가입
	public void register(MemberVO vo) throws Exception;
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	// 회원정보 수정
	public void memberUpdate(MemberVO vo)throws Exception;
	// 아이디 중복체크
	public int idChk(MemberVO vo) throws Exception;
	// 회원 탈퇴
	public void memberDelete(MemberVO vo)throws Exception;
	
	//--------은내
	//customerNO update(세션용)
	public void update_customerNo_mem(HashMap<String, Integer> map) throws Exception;
	//giverNO update(세션용)
	public void update_giverNo_mem(HashMap<String, Integer> map) throws Exception;
	
	
}