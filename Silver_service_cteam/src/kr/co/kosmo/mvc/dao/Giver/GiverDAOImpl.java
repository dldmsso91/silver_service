package kr.co.kosmo.mvc.dao.Giver;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;

import java.util.List;

@Repository
public class GiverDAOImpl implements GiverDAO {

	@Autowired
	private SqlSession sqlSession;
	
	

	
	@Override
	public void deleteGiver(GiverVO Dvo) throws Exception {
		System.out.println("===> sqlSession deleteGiver()_DAO �샇異�");
		sqlSession.delete("giverMapper.deleteGiver",Dvo);
	}	 
	
	@Override
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception {
		System.out.println("===> sqlSession insertTEST()_DAO �샇異�"+satisfactionVO.getCustomer_satisfaction_complain());		
		sqlSession.insert("giverMapper.insert_Satisfaction", satisfactionVO);
	}
			
	
	
	@Override
	public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception {
		System.out.println("===> sqlSession selectGiverByNo()_DAO �샇異�");
		
		return sqlSession.selectList("giverMapper.selectGiverByNo",vo);
	}
		
	
	@Override
	public List<GiverVO> selectDefault_info(GiverVO vo) throws Exception {
		System.out.println("===> sqlSession selectDefault_info()_DAO �샇異�");
		
		return sqlSession.selectList("giverMapper.selectDefault_info",vo);
	}		
	
	@Override
	public List<GiverVO> select_Career_info(GiverVO vo) throws Exception {
		System.out.println("===> sqlSession select_Default_info()_DAO �샇異�");
		
		return sqlSession.selectList("giverMapper.select_Career_info",vo);
	}		
	
	
	
	@Override
	   public List<GiverVO> select_Hope_Business_Area_info(GiverVO vo) throws Exception {
	      System.out.println("===> sqlSession select_license_info()_DAO �샇異�");

	      return sqlSession.selectList("giverMapper.select_Hope_Business_Area_info",vo);
	   }		
		
	@Override
	   public List<GiverVO> select_Giver_Satisfaction_info(GiverVO vo) throws Exception {
	      System.out.println("===> sqlSession select_license_info()_DAO �샇異�");

	      return sqlSession.selectList("giverMapper.select_Giver_Satisfaction_info",vo);
	   }		
		

	@Override
	public List<GiverVO> select_License(GiverVO vo) throws Exception{		

		return sqlSession.selectList("giverMapper.select_license_info",vo);
	}

	@Override
	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception {
	      System.out.println("===> sqlSession recommend_giver()_DAO �샇異�");
		return sqlSession.selectList("giverMapper.recommend_giver",vo);
	}
	


	 //-------------------- 동윤 -------------------------------------------------------------   
	// 도우미 기본정보 입력   
	   
	   @Override
	   public int insertGiver(GiverVO Gvo) throws Exception{
		   System.out.println("===> sqlSession insertGiver()_DAO 호출");
		   return sqlSession.insert("giverMapper.insert_giverinfo", Gvo);
	   }
	   

	   @Override
	   public int insertCareer(CareerVO Cvo) throws Exception{
		   System.out.println("===> sqlSession insertCareer()_DAO 호출");
		   return sqlSession.insert("giverMapper.insert_career", Cvo);
	   }
	   
	   @Override
	   public int insertLicense(LicenseVO Lvo) throws Exception{
		   System.out.println("===> sqlSession insertLicense()_DAO 호출");
		   return sqlSession.insert("giverMapper.insert_license", Lvo);
	   }
	   
	   @Override
	   public int insertHopeBusinessArea(Hope_Business_AreaVO Hvo) throws Exception{
		   System.out.println("===> sqlSession insertHopeBusinessArea()_DAO 호출");
		   return sqlSession.insert("giverMapper.insert_hope_area", Hvo);
	   }	
	
	   // �뾽�뜲�씠�듃 援щЦ
	   // 湲곕낯�젙蹂�
	   @Override
	   public void updateDefault_info(GiverVO vo) throws Exception{
		   System.out.println("===> sqlSession updateDefault_info()_DAO �샇異�");
		   
		   // #{giver_type},smoking= #{smoking}

		   
		   sqlSession.update("giverMapper.updateDefault_info",vo);
	   }
	   
	   
	   
	   
	   // 寃쎈젰
	   @Override
	   public void update_Career_info(CareerVO co) throws Exception{

		   System.out.println("===> sqlSession update_Career_info() DAO �샇異�");
		   System.out.println("career_name"+co.getCareer_name());
		   System.out.println("work_Period"+co.getWork_period_start());
		   System.out.println("work_Period"+co.getWork_period_end());
		   System.out.println("role"+co.getRole());
		   System.out.println("giver_no"+co.getGiver_no());
		   sqlSession.update("giverMapper.update_Career_info",co);
	   }
	   //�씪�씠�꽱�뒪
	   @Override
	   public void update_license_info(LicenseVO lo) throws Exception{
		   System.out.println("update_license_info �샇異�");
		   System.out.println("license_name"+lo.getLicense_name());
		   System.out.println("license_Institute"+lo.getLicense_institute());
		   System.out.println("giver_no"+lo.getGiver_no());
		   System.out.println("license_redate"+lo.getLicense_redate());
		   sqlSession.update("giverMapper.update_license_info",lo);
	   }
	   // �씗留앷렐臾댁��뿭
	   public void update_Hope_Business_Area_info(Hope_Business_AreaVO ho) throws Exception{
		   System.out.println("hope_business_city"+ho.getHope_business_city());
		   System.out.println("hope_business_town"+ho.getHope_business_town());
		   System.out.println("giver_no"+ho.getGiver_no());
		   System.out.println("update_Hope_Business_Area_info �샇異�");
		   sqlSession.update("giverMapper.update_Hope_Business_Area_info",ho);
	   }
	   // �씪�씪 留뚯”�룄
	   public void update_Giver_Satisfaction_info(Giver_SatisfactionVO go) throws Exception{
		   System.out.println("update_Giver_Satisfaction_info �샇異�");
		   System.out.println("customer_satisfaction_score"+go.getCustomer_satisfaction_score());
		   System.out.println("customer_satisfaction_complain"+go.getCustomer_satisfaction_complain());
		   sqlSession.update("giverMapper.update_Giver_Satisfaction_info",go);
	   }


	   
	   	
		
}