package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.NewBoardDAO;
import kr.co.kosmo.mvc.dto.NewBoardVO;
import kr.co.kosmo.mvc.dto.NewCriteria;
import kr.co.kosmo.mvc.dto.NewSearchCriteria;

@Service
public class NewBoardServiceImple implements NewBoardService   {
	
	@Autowired
	private NewBoardDAO dao;
	
	// 새소식 작성 
	@Override
	public void write1(NewBoardVO newboardVO) throws Exception{
		dao.write1(newboardVO);
	}
	// 새소식 목록 조회
	@Override
	public List<NewBoardVO> list(NewSearchCriteria scri) throws Exception {

		return dao.list(scri);
	}
	// 새소식 총 갯수
	@Override
	public int listCount(NewSearchCriteria scri) throws Exception{
		return dao.listCount(scri);
	}
	//새소식 조회
	@Override
	public NewBoardVO read(int bno) throws Exception {
		System.out.println("=s=================>"+bno);
		return dao.read(bno);
	}
	//새소식 수정
	@Override
	public void update1(NewBoardVO newboardVO) throws Exception {
		System.out.println("=s=================>"+"newboardVO");
		dao.update1(newboardVO);
	}
	//새소식 삭제
	@Override
	public void delete1(int bno) throws Exception {
		System.out.println("=d=================>"+bno);
		dao.delete1(bno);
	}
	

}
