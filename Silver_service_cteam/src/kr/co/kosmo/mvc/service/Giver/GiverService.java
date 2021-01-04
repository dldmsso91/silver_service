package kr.co.kosmo.mvc.service.Giver;



import java.util.List;
import java.util.Map;

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
import kr.co.kosmo.mvc.dto.Giver.Terminate_giver_serviceVO;
import kr.co.kosmo.mvc.dto.Giver.WorktimeVO;



public interface GiverService {


	
	
	
	
	//------------------------------------------ 은내----------------------------

	//일일만족도 등록
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception;


	//도우미에게 신청 등록
	public void apply_to_giver_insert(int giver_no, int customer_no) throws Exception;
	
	//------------------------------------giver 탈퇴 delete문 start	
	//giver 탈퇴(자식들)	
	public void deleteGiver_seed(int giver_no) throws Exception;
	//giver 탈퇴(부모)	
	public void deleteGiver(int giver_no) throws Exception;
	//------------------------------------giver 탈퇴 delete문 end	

	
	//------------------------------------customer 탈퇴 delete문 start	
	//customer 탈퇴(자식들)	
	public void deleteCustomer_seed(int customer_no) throws Exception;
	//customer 탈퇴(부모)	
	public void deleteCustomer(int customer_no) throws Exception;
	//------------------------------------customer 탈퇴 delete문 end	

	

	
	//추천도우미 select 
//	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception;
	


	
	
	//------------------------------------내 이력서 확인하기용 select문 start	
	//상세페이지 info select (Map방식)
	public Map<String, Object> select_MyResume_list(int giver_no) throws Exception;
	//------------------------------------내 이력서 확인하기용 select문 end		

	
	
	//------------------------------------내 신청서 확인하기용 select문 start	
	public List<CustomerVO> select_default_customer_info(int customer_no) throws Exception;
	//------------------------------------내 신청서 확인하기용 select문 end		
	
	
	
	
	//------------------------------------내 서비스 확인하기용(고객) select문 start		
	//상세페이지 info select (Map방식)
	public Map<String, Object> cheack_my_service_customer(int u_no,int customer_no) throws Exception;
	//------------------------------------내 서비스 확인하기용(고객) select문 end	
		
	
	
	//------------------------------------도우미 이력서 확인하기용 select문 start	
	//상세페이지 info select (Map방식)
	public Map<String, Object> selectGiver_list(int giver_no) throws Exception;
	
	//상세페이지 info select (이전 방식-다른작업자 분이 쓰시고 계셔서 냅둠.)
	public List<GiverVO> selectGiverList() throws Exception;
	public List<GiverVO> selectGiverByNo_list(int giver_no) throws Exception;	
	public List<GiverVO> selectDefault_info(int giver_no) throws Exception;
	public List<GiverVO> select_Career_info(int giver_no) throws Exception;
	public List<GiverVO> select_license_info(int giver_no) throws Exception;
	public List<GiverVO> select_Hope_Business_Area_info(int giver_no) throws Exception;
	//------------------------------------도우미 이력서 확인하기용 select문 end	
	


	
	//-------Mypage
	
	//고객 상세정보
	public List<CustomerVO> select_customer_detail(int customer_no) throws Exception;
	
	
	//도우미에게 서비스 신청한 list select	
	public List<Apply_to_giverVO> select_apply_to_Giver(int u_no) throws Exception;
	
	//후기 등록(도우미용)
	public void insert_hugi_giver(HugiVO hvo) throws Exception;

	//후기 등록(고객용)
	public void insert_hugi_customer(HugiVO hvo) throws Exception;

	//후기 select	(도우미용)
	public List<HugiVO> select_hugi(int u_no) throws Exception;

	//후기 select	(고객용)
	public List<HugiVO> select_hugi_customer(int u_no) throws Exception;
	
	
	
	//후기 delete	
	public void delete_Hugi(HugiVO hvo) throws Exception;
	
	//후기 detail select(update용)	
	public List<HugiVO> select_hugi_detail(HugiVO hvo) throws Exception;
	
	//후기 update	
	public void update_Hugi(HugiVO hvo) throws Exception;
	
	
	//서비스 매칭 insert
	public void insert_matching(Service_matchingVO service_matchingVO) throws Exception;	
	
	
	//서비스 매칭시 신청리스트에서 해당 신청서 delete
	public void delete_apply(Apply_to_giverVO avo) throws Exception;

		
	//매칭테이블에서 목록 가져오기(매칭확인부분에 쓰일것.)
	public List<Service_matchingVO> select_metching_list(int u_no) throws Exception;
	
	
	//매칭테이블에서 도우미 정보를 가져오기(매칭확인부분에 쓰일것.)
	public List<Service_matchingVO> select_metching_giver(int u_no) throws Exception;
	
	
	//매칭테이블에서 고객 정보를 가져오기(매칭확인부분에 쓰일것.)
	public List<Service_matchingVO> select_metching_customer(Service_matchingVO svo) throws Exception;

	//매칭테이블에서 도우미 정보를 가져오기(매칭확인부분에 쓰일것.)
	public List<Service_matchingVO> select_giver_matching(int customer_no) throws Exception;
	
	
	//서비스 매칭시 신청리스트에서 해당 신청서 delete
	public void delete_matching(Service_matchingVO svo) throws Exception;

	
	//서비스 종료 insert
	public void insert_terminate(Terminate_giver_serviceVO tvo) throws Exception;	
		
	
	//서비스 종료 정보를 가져오기(도우미용)
	public List<Terminate_giver_serviceVO> select_terminate_giver(int giver_no) throws Exception;

	//서비스 종료 정보를 가져오기(고객용)
	public List<Terminate_giver_serviceVO> select_terminate_customer(int customer_no) throws Exception;
	
	
	
	
	
	
	
	
	
	
	
	//------------------------------------------ 동윤 지원자 insert ----------------------------
	   public void insertGiverAll( GiverVO gvo, List<CareerVO> cvo, List<LicenseVO> lvo, List<Hope_Business_AreaVO> hvo) ;     
	   
			   
	   
	   
 //------------------------------------------ 용진 지원자 update ----------------------------
	   
	   // 업데이트
	   // 기본
	   public void updateDefault_info(GiverVO vo) throws Exception;

	   // 멤버
	   public void updatemember(MemberVO mo) throws Exception;
	   // 업데이트 라이센스
	   public void updateLicenseService(LicenseVO lvo) throws Exception;
	   // 업데이트 고객신청정보
	   public void updateCustomerService(CustomerVO cvo) throws Exception;
	   // 출퇴근 기록부
	   public void worktimeInsertService(WorktimeVO wvo) throws Exception;
	   // 출퇴근 기록 리스트
	   public List<WorktimeVO> worktimeselectService(WorktimeVO wvo) throws Exception;

	   // 업데이트 경력
	   public void updateCareerService(CareerVO cvo) throws Exception;
	   // 업데이트 희망지역
	   public void updateHopeBusinessService(Hope_Business_AreaVO hvo) throws Exception;

	   	   	
	   	   	

}