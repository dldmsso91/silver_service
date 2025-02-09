package kr.co.kosmo.mvc.dao;



import java.util.List;

import kr.co.kosmo.mvc.dto.BoardVO;
import kr.co.kosmo.mvc.dto.SearchCriteria;
public interface BoardDAO {

	// 게시글 작성
	public void write(BoardVO boardVO) throws Exception;
	// 게시물 목록 조회	
	public List<BoardVO> list(SearchCriteria scri) throws Exception;
	// 게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	// 게시물 조회
	public BoardVO read(int bno) throws Exception;
	// 게시물 수정
	public void update(BoardVO boardVO) throws Exception;	
	// 게시물 삭제
	public void delete(int bno) throws Exception;
}
