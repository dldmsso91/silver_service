package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.NewBoardVO;

@Repository
public class NewBoardDAOImpl implements NewBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	//새소식 작성
	@Override
	public void write(NewBoardVO newboardVO) throws Exception{
		sqlSession.insert("newboardMapper.newinsert", newboardVO);
	} 
	// 새소식 목록 조회
	@Override
	public List<NewBoardVO> list() throws Exception {
		
		return sqlSession.selectList("newboardMapper.list");

	}
	// 새소식 조회
	@Override
	public NewBoardVO read(int bno) throws Exception {
			System.out.println("=n=================>"+bno);
		return sqlSession.selectOne("newboardMapper.read", bno);
	}
	// 새소식 수정
	public void update(NewBoardVO newboardVO) throws Exception {
		
		sqlSession.update("newboardMapper.update", newboardVO);
	}
	// 새소식 삭제
	@Override
	public void delete(int bno) throws Exception {
		
		sqlSession.delete("newboardMapper.delete", bno);
	}
	
	
}
