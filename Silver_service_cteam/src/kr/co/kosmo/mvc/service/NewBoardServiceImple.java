package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.NewBoardDAO;
import kr.co.kosmo.mvc.dto.NewBoardVO;

@Service
public class NewBoardServiceImple implements NewBoardService   {
	
	@Autowired
	private NewBoardDAO dao;
	
	// 새소식 작성 
	@Override
	public void write(NewBoardVO newboardVO) throws Exception{
		dao.write(newboardVO);
	}
	// 새소식 목록 조회
	@Override
	public List<NewBoardVO> list() throws Exception {

		return dao.list();
	}
	//새소식 조회
	@Override
	public NewBoardVO read(int bno) throws Exception {
		System.out.println("=s=================>"+bno);
		return dao.read(bno);
	}
	//새소식 수정
	@Override
	public void update(NewBoardVO newboardVO) throws Exception {
		System.out.println("=s=================>"+"newboardVO");
		dao.update(newboardVO);
	}
	//새소식 삭제
	@Override
	public void delete(int bno) throws Exception {
		System.out.println("=d=================>"+bno);
		dao.delete(bno);
	}
	

}
