package kr.co.kosmo.mvc.service.Giver;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;




@Service
public class GiverServiceImple implements GiverService {

	@Autowired
	private GiverDAO giver_dao;


	
	@Override
	public void deleteGiver(GiverVO vo) throws Exception {
		giver_dao.deleteGiver(vo);		
	}
	
	@Override
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception {
		System.out.println("===> sqlSession insertTEST()_Service 호출"+satisfactionVO.getCustomer_satisfaction_complain());			
		giver_dao.insertSatisfaction(satisfactionVO);
	}
	
	
	
	@Override
	public Map<String, Object> selectGiver_list(GiverVO vo) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("All", giver_dao.selectGiverByNo_list(vo));
		map.put("Default", giver_dao.selectDefault_info(vo));
		map.put("Career", giver_dao.select_Career_info(vo));
		map.put("Area", giver_dao.select_Hope_Business_Area_info(vo));
		map.put("Satisfaction", giver_dao.select_Giver_Satisfaction_info(vo));
		map.put("License", giver_dao.select_License(vo));		
		System.out.println("===> selectGiverByNo()_Service 호출");
		return map;
	}
	

	@Override
	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception {
		System.out.println("===> select_Giver_recommend_giver()_Service 호출");		
		return giver_dao.recommend_giver(vo);
	};	
	

	 //------------------------------------------ 동윤 지원자 insert ----------------------------
	   @Override
	   public void insertGiverAll( GiverVO Gvo, CareerVO Cvo, LicenseVO Lvo, Hope_Business_AreaVO Hvo) throws Exception{
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getGiver_type"+Gvo.getGiver_type());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_business_place"+Gvo.getHope_business_place());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_salary"+Gvo.getHope_salary());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getSmoking"+Gvo.getSmoking());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getSchool"+Gvo.getSchool());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getMajor"+Gvo.getMajor());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getPenalty"+Gvo.getPenalty());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getApply_giver_redate"+Gvo.getApply_giver_redate());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_worktime_start"+Gvo.getHope_worktime_start());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_worktime_end"+Gvo.getHope_worktime_end());
		   System.out.println("---------------------------------------------------------");
  
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getCareer_name"+Cvo.getCareer_name());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getWork_start_period"+Cvo.getWork_period_start());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getWork_end_period"+Cvo.getWork_period_end());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getRole"+Cvo.getRole());
		   System.out.println("---------------------------------------------------------");

		   System.out.println("===> sqlSession insertTEST()_Service 호출 Lvo getLicense_name"+Lvo.getLicense_name());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Lvo getLicense_institute"+Lvo.getLicense_Institute());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Lvo getLicense_redate"+Lvo.getLicense_Redate());
		   System.out.println("---------------------------------------------------------");
		   
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Hvo getHope_business_city"+Hvo.getHope_business_city());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Hvo getHope_business_town"+Hvo.getHope_business_town());
		   giver_dao.insertGiver(Gvo);
		   giver_dao.insertLicense(Lvo);
		   giver_dao.insertCareer(Cvo);
		   giver_dao.insertHopeBusinessArea(Hvo);
	   }
	   
	   
	   
	   
		@Override
		public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception {
			System.out.println("===> selectGiverByNo()_Service 호출");
			return giver_dao.selectGiverByNo_list(vo);
		}	
		@Override
		public List<GiverVO> selectDefault_info(GiverVO vo) throws Exception {
			System.out.println("===> selectDefault_info()_Service 호출");
			return giver_dao.selectDefault_info(vo);
		}
		
		@Override
		public List<GiverVO> select_Career_info(GiverVO vo) throws Exception {
			System.out.println("===> select_Career_info()_Service 호출");
			return giver_dao.select_Career_info(vo);
		}
		
		
		
		@Override
		public List<GiverVO> select_Hope_Business_Area_info(GiverVO vo) throws Exception{
			System.out.println("===> select_Hope_Business_Area_info()_Service 호출");				
			return giver_dao.select_Hope_Business_Area_info(vo);
		};
		
		
		@Override
		public List<GiverVO> select_Giver_Satisfaction_info(GiverVO vo) throws Exception{
			System.out.println("===> select_Giver_Satisfaction_info()_Service 호출");			
			return giver_dao.select_Giver_Satisfaction_info(vo);
		}


		@Override
		public List<GiverVO> select_license_info(GiverVO vo) throws Exception {
			// TODO Auto-generated method stub
			return giver_dao.select_License(vo);
		}	   
	   
	   // 업데이트 구문
	   // 기본

	   @Override
	   public void updateDefault_info(GiverVO vo) throws Exception {
		   giver_dao.updateDefault_info(vo);
		   
	   }
	   
	   @Override
	   public void update_Career_info(CareerVO co) throws Exception {
		   giver_dao.update_Career_info(co);
		   
	   }
	   
	   // 라이센스
	    public void update_license_info(LicenseVO lo) throws Exception{
	    	giver_dao.update_license_info(lo);
	    }
	    // 희망근무지역
	    public void update_Hope_Business_Area_info(Hope_Business_AreaVO ho) throws Exception{
	    	giver_dao.update_Hope_Business_Area_info(ho);
	    }
	    // 일일만족도
	    public void update_Giver_Satisfaction_info(Giver_SatisfactionVO go) throws Exception{
	    	giver_dao.update_Giver_Satisfaction_info(go);
	    }


	
}
