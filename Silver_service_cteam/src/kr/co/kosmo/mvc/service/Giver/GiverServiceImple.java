package kr.co.kosmo.mvc.service.Giver;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.catalina.tribes.group.interceptors.TwoPhaseCommitInterceptor.MapEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.Giver.GiverDAO;
import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.HugiVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;
import kr.co.kosmo.mvc.dto.Giver.Service_matchingVO;
import kr.co.kosmo.mvc.dto.Giver.WorktimeVO;




@Service
public class GiverServiceImple implements GiverService {

	@Autowired
	private GiverDAO giver_dao;

	//------------------------------------------ 은내 상세이력서select, 추천도우미 select, 일일만족도insert, 지원서 삭제 ----------------------------
	
	//------------------------------------giver 탈퇴 delete문 start		
	//giver 탈퇴(자식들)	
	@Override
	public void deleteGiver_seed(CareerVO cvo, LicenseVO lvo, Hope_Business_AreaVO hvo,Giver_SatisfactionVO svo) throws Exception {
		giver_dao.deletecareer(cvo);
		giver_dao.deleteGiver_Satisfaction(svo);
		giver_dao.deleteHope_Business_Area(hvo);
		giver_dao.deletelicense(lvo);
	}
	//giver 탈퇴(부모)		
	@Override
	public void deleteGiver(GiverVO gvo) throws Exception {
		giver_dao.deleteGiver(gvo);		
	}
	//------------------------------------giver 탈퇴 delete문 end		

	
	//------------------------------------customer 탈퇴 delete문 start		
	//customer 탈퇴(자식들)	
	@Override
	public void deleteCustomer_seed(HugiVO hvo, Service_matchingVO svo, Apply_to_giverVO avo) throws Exception {
		giver_dao.deleteHugi(hvo);
		giver_dao.deleteApply_to_giver(avo);
		giver_dao.deleteService_matching(svo);		
	}
	//customer 탈퇴(부모)		
	@Override
	public void deleteCustomer(CustomerVO cvo) throws Exception {
		giver_dao.deleteCustomer(cvo);	
	}	
	//------------------------------------customer 탈퇴 delete문 end		
	
	
	
	
	
	
	
	//일일만족도 등록	
	@Override
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception {
		System.out.println("===> sqlSession insertTEST()_Service 출력"+satisfactionVO.getCustomer_satisfaction_complain());			
		giver_dao.insertSatisfaction(satisfactionVO);
	}
	
	
	
	//추천도우미 select 	
//	@Override
//	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception {
//		System.out.println("===> select_Giver_recommend_giver()_Service 출력");		
//		return giver_dao.recommend_giver(vo);
//	};	
	
	//추천도우미 대체용 select 	
	@Override
	public List<GiverVO> selectGiverList(GiverVO vo) throws Exception {
		System.out.println("===> selectGiverList()_Service 출력");			
		return giver_dao.selectGiverList(vo);
	}
	
	
	//마음에드는 도우미에게 서비스 신청 insert문	
	@Override
	public void apply_to_giver_insert(int giver_no, int customer_no) throws Exception {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("giver_no", giver_no);
		map.put("customer_no", customer_no);
		
		giver_dao.apply_to_giver_insert(map);
		System.out.println("apply_to_giver_insert Service : giver_no"+map.get("giver_no"));
		System.out.println("apply_to_giver_insert Service : giver_no"+map.get("giver_no"));
	}
	
	
	
	//------------------------------------내 이력서 확인하기용 select문 start	
	//상세페이지 info select (Map방식)	
	@Override
	public Map<String, Object> select_MyResume_list(int u_no) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("Default", giver_dao.select_MyDefault_info(u_no));
		map.put("Career", giver_dao.select_MyCareer_info(u_no));
		map.put("Area", giver_dao.select_MyHope_Business_Area_info(u_no));
		map.put("License", giver_dao.select_MyLicense(u_no));		
		System.out.println("===> selectGiverByNo()_Service 출력"+map.get("Area"));
		return map;
	}
	//------------------------------------내 이력서 확인하기용 select문 end	
	
	
	
	
	//------------------------------------내 이력서 확인하기용 select문 start	
	//상세페이지 info select (Map방식)	
	@Override
	public Map<String, Object> selectGiver_list(GiverVO vo) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("All", giver_dao.selectGiverByNo_list(vo));
		map.put("Default", giver_dao.selectDefault_info(vo));
		map.put("Career", giver_dao.select_Career_info(vo));
		map.put("Area", giver_dao.select_Hope_Business_Area_info(vo));
		map.put("License", giver_dao.select_License(vo));		
		System.out.println("===> selectGiverByNo()_Service 출력");
		return map;
	}
	
	
	//맵 없이 테스트용으로 만든 select(-다른작업자 분이 쓰시고 계셔서 냅둠)
	@Override
	public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception {
		System.out.println("===> selectGiverByNo()_Service 출력");
		return giver_dao.selectGiverByNo_list(vo);
	}	
	@Override
	public List<GiverVO> selectDefault_info(GiverVO vo) throws Exception {
		System.out.println("===> selectDefault_info()_Service 출력");
		return giver_dao.selectDefault_info(vo);
	}
	@Override
	public List<GiverVO> select_Career_info(GiverVO vo) throws Exception {
		System.out.println("===> select_Career_info()_Service 출력");
		return giver_dao.select_Career_info(vo);
	}
	@Override
	public List<GiverVO> select_Hope_Business_Area_info(GiverVO vo) throws Exception{
		System.out.println("===> select_Hope_Business_Area_info()_Service 출력");				
		return giver_dao.select_Hope_Business_Area_info(vo);
	};
	@Override
	public List<GiverVO> select_license_info(GiverVO vo) throws Exception {
		System.out.println("===> select_license_info()_Service 출력");			
		return giver_dao.select_License(vo);
	}	   
	//------------------------------------내 이력서 확인하기용 select문 end	
	
	
	
	
	
	//------------------------------------내 신청서 확인하기용 select문 start	
	@Override
	public List<CustomerVO> select_default_customer_info(int u_no) throws Exception {
		return giver_dao.select_default_customer_info(u_no);
	}
	//------------------------------------내 신청서 확인하기용 select문 end	


	
	//------------------------------------내 서비스 확인하기용(고객) select문 start			
	@Override
	public Map<String, Object> cheack_my_service_customer(int u_no) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("apply", giver_dao.select_customer_apply(u_no));
		map.put("matching", giver_dao.select_customer_matching(u_no));
		return map;
	}
	//------------------------------------내 서비스 확인하기용(고객) select문 end		
	
	
	
	
	
	@Override
	public List<Apply_to_giverVO> select_apply_to_Giver(int u_no) throws Exception {
		System.out.println("===> select_hugi_Giver()_Service 출력");			
		return giver_dao.select_apply_to_Giver(u_no);
	}
	
	

	
	//-------Mypage
	
	//후기 확인하기	
	@Override
	public List<HugiVO> select_hugi(int u_no) throws Exception {
		return giver_dao.select_hugi(u_no);
	}


	//후기 등록	
	@Override
	public void insert_hugi_giver(HugiVO hvo) throws Exception {
		System.out.println(" hugi_insert : Hugi_contents"+hvo.getHugi_contents());
		giver_dao.insert_hugi_giver(hvo);
	}	
	
	//후기 삭제	
	@Override
	public void delete_Hugi(HugiVO hvo) throws Exception {
		System.out.println(" delete_Hugi Service 출력 완료!");
		giver_dao.delete_Hugi(hvo);
	}

	//후기 detail select(update용)	
	@Override
	public List<HugiVO> select_hugi_detail(HugiVO hvo) throws Exception {
		System.out.println("select_hugi_detail 출력 완료!");
		return giver_dao.select_hugi_detail(hvo);
	}

	//후기 update	
	@Override
	public void update_Hugi(HugiVO hvo) throws Exception {
		giver_dao.update_Hugi(hvo);
	}

	//고객 상세정보
	@Override
	public List<CustomerVO> select_customer_detail(int customer_no) throws Exception {
		return giver_dao.select_customer_detail(customer_no);
	}
	
	//서비스 매칭 등록하기
	@Override
	public void insert_matching(Service_matchingVO service_matchingVO) throws Exception {
		giver_dao.insert_matching(service_matchingVO);
	}

	//서비스 매칭시 신청리스트에서 해당 신청서 delete	
	@Override
	public void delete_apply(Apply_to_giverVO avo) throws Exception {
		giver_dao.delete_apply(avo);
	}
	
	
	//매칭테이블에서 목록 가져오기(매칭확인부분에 쓰일것.)
	@Override
	public List<Service_matchingVO> select_metching_list(int u_no) throws Exception {
		return giver_dao.select_metching_list(u_no);
	}

	
	//매칭테이블에서 도우미 정보를 가져오기(매칭확인부분에 쓰일것.)
	@Override
	public List<Service_matchingVO> select_metching_giver(int u_no) throws Exception {
		return giver_dao.select_metching_giver(u_no);
	}
	
	//매칭테이블에서 고객 정보를 가져오기(매칭확인부분에 쓰일것.)
	@Override
	public List<Service_matchingVO> select_metching_customer(Service_matchingVO svo) throws Exception {
		return giver_dao.select_metching_customer(svo);
	}
	
	//매칭 delete	
	@Override
	public void delete_matching(Service_matchingVO svo) throws Exception {
		giver_dao.delete_matching(svo);
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	   //------------------------------------------ 동윤 지원자 insert ----------------------------
	   @Override
	   public void insertGiverAll( GiverVO gvo, List<CareerVO> cvo, List<LicenseVO> lvo, List<Hope_Business_AreaVO> hvo) {
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getGiver_type"+gvo.getGiver_type());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_business_place"+gvo.getHope_business_place());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_salary"+gvo.getHope_salary());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getSmoking"+gvo.getSmoking());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getSchool"+gvo.getSchool());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getMajor"+gvo.getMajor());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getPenalty"+gvo.getPenalty());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getApply_giver_redate"+gvo.getApply_giver_redate());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_worktime_start"+gvo.getHope_worktime_start());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getHope_worktime_end"+gvo.getHope_worktime_end());
		   System.out.println("===> sqlSession insertTEST()_Service 호출 Gvo getMy_IMG"+gvo.getMy_IMG());
		   System.out.println("---------------------------------------------------------");
		   
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getCareer_name"+cvo.getCareer_name());
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getWork_start_period"+cvo.getWork_period_start());
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getWork_end_period"+cvo.getWork_period_end());
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Cvo getRole"+cvo.getRole());
		   System.out.println("---------------------------------------------------------");
		   
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Lvo getLicense_name"+lvo.getLicense_name());
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Lvo getLicense_institute"+lvo.getLicense_Institute());
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Lvo getLicense_redate"+lvo.getLicense_Redate());
		   System.out.println("---------------------------------------------------------");
		   
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Hvo getHope_business_city"+hvo.getHope_business_city());
		   //System.out.println("===> sqlSession insertTEST()_Service 호출 Hvo getHope_business_town"+hvo.getHope_business_town());
		   giver_dao.insertGiver(gvo);
		   giver_dao.insertLicense(lvo);
		   giver_dao.insertCareer(cvo);
		   giver_dao.insertHopeBusinessArea(hvo);
	   }
	   
	   
	   
	   
	   //------------------------------------------ 용진 지원자 update ----------------------------	   
	   // 업데이트 구문
	   // 기본

	   @Override
	   public void updateDefault_info(GiverVO vo) throws Exception {
		   giver_dao.updateDefault_info(vo);
		   
	   }
	    // 멤버
	   @Override
	    public void updatemember(MemberVO mo) throws Exception{
	    	giver_dao.updatemember(mo);
	    }
	@Override
	public void updateLicenseService(LicenseVO lvo) throws Exception {
			giver_dao.updateLicense(lvo);
		
	}
	@Override
	public void updateCustomerService(CustomerVO cvo) throws Exception {
		 giver_dao.updateCustomer(cvo);
		
	}
	@Override
	public void worktimeInsertService(WorktimeVO wvo) throws Exception {
		giver_dao.worktimeInsert(wvo);
		
	}
	@Override
	public List<WorktimeVO> worktimeselectService(WorktimeVO wvo) throws Exception {
		System.out.println("selectService 호출=================");
		System.out.println(wvo.getStart_time());
		return giver_dao.worktimeselect(wvo);
		
	}
	@Override
	public void updateCareerService(CareerVO cvo) throws Exception {
		giver_dao.updateCareer(cvo);
		
	}
	@Override
	public void updateHopeBusinessService(Hope_Business_AreaVO hvo) throws Exception {
		giver_dao.updateHopeBusiness(hvo);
		
	}








	
}
