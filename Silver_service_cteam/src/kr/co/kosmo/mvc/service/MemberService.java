package kr.co.kosmo.mvc.service;

import kr.co.kosmo.mvc.dto.MemberVO;

public interface MemberService {
	//회원가입
	public void register(MemberVO vo) throws Exception;
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;	
	//회원정보수정
	public void memberUpdate(MemberVO vo) throws Exception;
	

}