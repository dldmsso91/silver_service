package kr.co.kosmo.mvc.dao;

import java.util.HashMap;

import kr.co.kosmo.mvc.dto.MemberVO;

public interface MemberDAO {
	
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
	// 아이디 찾기
	public String find_id(String u_email ) throws Exception;
	// 이메일 중복체크
	/* public int emailChk(MemberVO vo) throws Exception; */
	// 비밀번호 변경
	public int updatePw(MemberVO vo) throws Exception;

	public int idChk(String u_id) throws Exception;
	
	//--------은내
	//customerNO update(세션용)
	public void update_customerNo_mem(HashMap<String, Integer> map) throws Exception;

	//giverNO update(세션용)
	public void update_giverNo_mem(HashMap<String, Integer> map) throws Exception;

	//신청서 삭제 시 멤버에 customer_no 0으로 정보변경 테스트 중 	
	public void delete_customerNo_mem(int u_no) throws Exception;

	//지원서 삭제 시 멤버에 giver_no 0으로 정보변경 테스트 중 
	public void delete_giverNo_mem(int u_no) throws Exception;
	
	
}