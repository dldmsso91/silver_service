package kr.co.kosmo.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.Member_AOP_DTO;
@Repository
public class MemberAopDao implements MemberAopInter{
	// 자동 빈 묶기 
	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public void addMem(Member_AOP_DTO vo) {
		// mybatis의 mapper.xml에 정의한 네임스페이스.id로 호출 해서 해당 파라미터를 보낸다.
		ss.insert("mem_aop.add",vo);
	}
	@Override
	public int idChk(String id) {
		return ss.selectOne("mem_aop.idChk", id);
	}
	@Override
	public Member_AOP_DTO loginCheck(Member_AOP_DTO vo) {
		return ss.selectOne("mem_aop.loginchk", vo);
	}
}
