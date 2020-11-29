package kr.co.ikosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ikosmo.mvc.vo.BoardVO;

@Repository
public class BoardDAO {

   
   @Autowired
   private SqlSessionTemplate ss;
   
   public List<BoardVO> getBoardList(){
      
      //
      return ss.selectList("board.list"); //mapper에 가서 보고 와야한다. mapper 의 namespace랑 id
   }
}