package kr.co.kosmo.mvc.dao;



import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.MemberVO;



	

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired SqlSession sql;

	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("memberMapper.register", vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return sql.selectOne("memberMapper.login", vo);
	}

	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		sql.update("memberMapper.memberUpdate", vo); 
	}
	// 아이디 중복 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("memberMapper.idChk", vo);
		return result;
	}
   	// 업데이트와 마찬가지로 흐름은 같습니다.
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		// MemberVO에 담긴 값들을 보내줍니다.
		// 그럼 xml에서 memberMapper.memberDelete에 보시면
		//  #{userId}, #{userPass}에 파라미터값이 매칭이 되겠지요.
		sql.delete("memberMapper.memberDelete", vo);
		
	}
	// 아이디 찾기 
	@Override
	public String find_id(String  u_email) throws Exception {
		return sql.selectOne("memberMapper.find_id", u_email);

	}

	/*
	 * //이메일 중복체크
	 * 
	 * @Override public int emailChk(MemberVO vo) throws Exception { int result =
	 * sql.selectOne("memberMapper.emailChk", vo); return result; }
	 */
	

	/*
	 * // 비밀번호 변경
	 * 
	 * @Transactional public int updatePw(MemberVO vo) throws Exception{ return
	 * sql.update("memberMapper.updatePw", vo); }
	 */
	//비밀번호변경
	  @Override
	  public int updatePw(MemberVO vo) throws Exception {
	  	return sql.update("memberMapper.updatePw", vo);
	  }
	  
	  public int idChk(String u_id) {
		int result = sql.selectOne("memberMapper.idChk", u_id);
		return result;
	}

	public MemberVO emailCheck(String u_id) {
		MemberVO result = sql.selectOne("memberMapper.emailChk", u_id);
		return result;
	
	}
	
	//--------은내
	//customerNo update(세션용)	
	@Override
	public void update_customerNo_mem(HashMap<String, Integer> map) throws Exception {
		sql.update("memberMapper.update_customerNo_mem",map);
	}
	//giverNo update(세션용)	
	@Override
	public void update_giverNo_mem(HashMap<String, Integer> map) throws Exception {
		sql.update("memberMapper.update_giverNo_mem",map);		
	}
	//신청서 삭제 시 멤버에 customer_no 0으로 정보변경 테스트 중 	
	@Override
	public void delete_customerNo_mem(int u_no) throws Exception {
		sql.update("memberMapper.delete_customerNo_mem",u_no);		
	}
	//지원서 삭제 시 멤버에 giver_no 0으로 정보변경 테스트 중 
	@Override
	public void delete_giverNo_mem(int u_no) throws Exception {
		sql.update("memberMapper.delete_giverNo_mem",u_no);		
	}
}

