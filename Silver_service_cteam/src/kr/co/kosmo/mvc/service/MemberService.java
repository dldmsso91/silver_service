package kr.co.kosmo.mvc.service;

import javax.servlet.http.HttpServletResponse;

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
	// 아이디 찾기
	public String find_id(HttpServletResponse response, String u_email) throws Exception;

	/*
	 * // 이메일 중복 public int emailChk(MemberVO vo) throws Exception;
	 */
	//이메일발송
	public void sendEmail(MemberVO vo, String div) throws Exception;
	//비밀번호찾기
	public void findPw(HttpServletResponse resp, MemberVO vo) throws Exception;
	
	//--------���궡
	//customerNo update(�꽭�뀡�슜)	
	public void update_customerNo_mem(int u_no, int customer_no) throws Exception;

	//giverNo update(�꽭�뀡�슜)	
	public void update_giverNo_mem(int u_no, int giver_no) throws Exception;

	//�떊泥��꽌 �궘�젣 �떆 硫ㅻ쾭�뿉 customer_no 0�쑝濡� �젙蹂대�寃� �뀒�뒪�듃 以� 	
	public void delete_customerNo_mem(int u_no) throws Exception;

	//吏��썝�꽌 �궘�젣 �떆 硫ㅻ쾭�뿉 giver_no 0�쑝濡� �젙蹂대�寃� �뀒�뒪�듃 以� 	
	public void delete_giverNo_mem(int u_no) throws Exception;

	
	
}