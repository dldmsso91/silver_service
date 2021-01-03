package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.dto.NewBoardVO;
import kr.co.kosmo.mvc.dto.NewCriteria;
import kr.co.kosmo.mvc.dto.NewSearchCriteria;

public interface  NewBoardService {

	//새소식 작성	
	public void write1(NewBoardVO newboardVO) throws Exception;
	//새소식 목록 조회
	public List<NewBoardVO> list(NewSearchCriteria scri) throws Exception;
	//새소식 총 갯수
	public int listCount(NewSearchCriteria scri) throws Exception;
	//새소식 목록 조회
	public NewBoardVO read(int bno) throws Exception;
	//새소식 수정
	public void update1(NewBoardVO newboardVO) throws Exception;
	//새소식 삭제
	public void delete1(int bno) throws Exception;

}
