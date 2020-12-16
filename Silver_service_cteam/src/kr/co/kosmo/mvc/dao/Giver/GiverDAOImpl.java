package kr.co.kosmo.mvc.dao.Giver;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;

import java.util.List;

@Repository
public class GiverDAOImpl implements GiverDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	   public List<GiverVO> selectGiverByNo_list() throws Exception {
	      System.out.println("===> sqlSession selectGiverByNo()_DAO 호출");

	      return sqlSession.selectList("giverMapper.selectGiverByNo");
	   }

	
	@Override
	public void deleteGiver(GiverVO vo) throws Exception {
		System.out.println("===> sqlSession deleteGiver()_DAO 호출");
		sqlSession.delete("giverMapper.deleteGiver",vo);
	}




		   

}