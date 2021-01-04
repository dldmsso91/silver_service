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
	
	//--------���궡
	//customerNO update(�꽭�뀡�슜)
	public void update_customerNo_mem(HashMap<String, Integer> map) throws Exception;

	//giverNO update(�꽭�뀡�슜)
	public void update_giverNo_mem(HashMap<String, Integer> map) throws Exception;

	//�떊泥��꽌 �궘�젣 �떆 硫ㅻ쾭�뿉 customer_no 0�쑝濡� �젙蹂대�寃� �뀒�뒪�듃 以� 	
	public void delete_customerNo_mem(int u_no) throws Exception;

	//吏��썝�꽌 �궘�젣 �떆 硫ㅻ쾭�뿉 giver_no 0�쑝濡� �젙蹂대�寃� �뀒�뒪�듃 以� 
	public void delete_giverNo_mem(int u_no) throws Exception;
	
	
}