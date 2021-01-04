package kr.co.kosmo.mvc.service;

import kr.co.kosmo.mvc.dto.MemberVO;

public interface MemberService {
	//회원가입
	public void register(MemberVO vo) throws Exception;
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;	
	//회원정보수정
	public void memberUpdate(MemberVO vo) throws Exception;
	//아이디중복체크
	public int idChk(MemberVO vo) throws Exception;
	//회원탈퇴
	public void memberDelete(MemberVO vo) throws Exception;
	
	//--------은내
	//customerNo update(세션용)	
	public void update_customerNo_mem(int u_no, int customer_no) throws Exception;

	//giverNo update(세션용)	
	public void update_giverNo_mem(int u_no, int giver_no) throws Exception;

	//신청서 삭제 시 멤버에 customer_no 0으로 정보변경 테스트 중 	
	public void delete_customerNo_mem(int u_no) throws Exception;

	//지원서 삭제 시 멤버에 giver_no 0으로 정보변경 테스트 중 	
	public void delete_giverNo_mem(int u_no) throws Exception;

	
	
}