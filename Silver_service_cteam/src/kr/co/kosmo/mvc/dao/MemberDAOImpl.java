package kr.co.kosmo.mvc.dao;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.MemberVO;



@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired SqlSession sql;
	// 회원가입

	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("memberMapper.register", vo);
	}
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return sql.selectOne("memberMapper.login", vo);
	}
	//서비스에서 보낸 파라미터들을 memberUpdate(MemberVO vo)에 담습니다.
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		// vo에 담긴 파라미터들은 memberMapper.xml에 memberMapper라는 namespace에 
		// 아이디가 memberUpdate인 쿼리에 파라미터들을 넣어줍니다.
		sql.update("memberMapper.memberUpdate", vo); 
	}
}
