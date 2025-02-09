package kr.co.kosmo.mvc.dao;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.ReplyVO;


@Repository
public class ReplyDAOImpl implements ReplyDAO {

		@Autowired SqlSession sql;
		
		//댓글조회
		@Override
		public List<ReplyVO> readReply(int bno) throws Exception{
			return sql.selectList("replyMapper.readReply",bno);
		}
		//댓글작성
		@Override
		public void writdReply(ReplyVO vo) throws Exception{
			sql.insert("replyMapper.writeReply",vo);
		}
		//댓글수정
		@Override
		public void updateReply(ReplyVO vo) throws Exception{
			sql.update("replyMapper.updateReply",vo);
		}
		//댓글삭제
		@Override
		public void deleteReply(ReplyVO vo) throws Exception{
			sql.delete("replyMapper.deleteReply",vo);
		}
		//선택된 댓글 조회
		@Override
		public ReplyVO selectReply(int rno) throws Exception{
			return sql.selectOne("replyMapper.selectReply",rno);
		}
		
}
