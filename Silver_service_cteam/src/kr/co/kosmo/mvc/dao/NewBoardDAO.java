package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.NewBoardVO;

public interface  NewBoardDAO {

	//새소식 작성
	public void write(NewBoardVO newboardVO) throws  Exception;
	//새소식 목록 조회
	public List<NewBoardVO> list() throws Exception;
	//새소식 조회
	public NewBoardVO read(int bno) throws Exception;
	//새소식 수정
	public void update(NewBoardVO newboardVO) throws Exception;
	//새소식 삭제
	public void delete(int bno) throws Exception;
	
}
