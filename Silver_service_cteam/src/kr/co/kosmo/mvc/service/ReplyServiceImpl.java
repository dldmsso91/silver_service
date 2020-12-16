package kr.co.kosmo.mvc.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.ReplyDAO;
import kr.co.kosmo.mvc.dto.ReplyVO;


@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	private ReplyDAO dao;
	
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception{
		return dao.readReply(bno);
	}
	@Override
	public void writeReply(ReplyVO vo) throws Exception{
		dao.writdReply(vo);
	}
	//댓글 수정
	@Override
	public void updateReply(ReplyVO vo) throws Exception{
		dao.updateReply(vo);
	}
	//댓글 삭제
	@Override
	public void deleteReply(ReplyVO vo) throws Exception{
		dao.deleteReply(vo);
	}
	//선택된 댓글 조회
	@Override
	public ReplyVO selectReply(int rno) throws Exception{
		return dao.selectReply(rno);
	}
}
