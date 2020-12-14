package kr.co.kosmo.mvc.dao;

import kr.co.kosmo.mvc.dto.Member_AOP_DTO;

public interface MemberAopInter {
	
	public void addMem(Member_AOP_DTO vo);
	public int idChk(String id);
	public Member_AOP_DTO loginCheck(Member_AOP_DTO vo);
	
	//public void addLoginLogging()

}
