package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.NewBoardVO;
import kr.co.kosmo.mvc.dto.NewCriteria;
import kr.co.kosmo.mvc.dto.NewSearchCriteria;

@Repository
public class NewBoardDAOImpl implements NewBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	//새소식 작성
	@Override
	public void write1(NewBoardVO newboardVO) throws Exception{
		sqlSession.insert("newboardMapper.newinsert", newboardVO);
	} 
	// 새소식 목록 조회
	@Override
	public List<NewBoardVO> list(NewSearchCriteria scri) throws Exception {
		
		return sqlSession.selectList("newboardMapper.listPage",scri);

	}
	// 새소식 총 갯수
	@Override
	public int listCount(NewSearchCriteria scri) throws Exception{
		return sqlSession.selectOne("newboardMapper.listCount",scri);
	}
	// 새소식 조회
	@Override
	public NewBoardVO read(int bno) throws Exception {
			System.out.println("=n=================>"+bno);
		return sqlSession.selectOne("newboardMapper.read", bno);
	}
	// 새소식 수정
	public void update1(NewBoardVO newboardVO) throws Exception {
		
		sqlSession.update("newboardMapper.update", newboardVO);
	}
	// 새소식 삭제
	@Override
	public void delete1(int bno) throws Exception {
		
		sqlSession.delete("newboardMapper.delete", bno);
	}
	
	
}
