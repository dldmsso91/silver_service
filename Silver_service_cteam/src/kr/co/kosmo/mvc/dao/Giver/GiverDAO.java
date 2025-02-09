package kr.co.kosmo.mvc.dao.Giver;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.dto.Giver.CustomerVO;
import kr.co.kosmo.mvc.dto.BoardVO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.SearchCriteria;
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


public interface GiverDAO {


	
	
	
	
	// 추천지금 테스트중(검색으로가자그냥)
	public List<GiverVO> giver_list_page(SearchCriteria scri) throws Exception;
	// 도우미 총 갯수
	public int giver_listCount(SearchCriteria scri) throws Exception;	
	
	
	
	
	//test전체 select
	public List<GiverVO> selectGiverByNo_list(int giver_no) throws Exception;
	
	//도우미에게 서비스 신청한 list select
	public List<Apply_to_giverVO> select_apply_to_Giver(int u_no) throws Exception;

	
	//------------------------------------내 이력서 확인하기용 select문 start	
	//상세페이지 info select 
	public List<GiverVO> select_MyDefault_info(int giver_no) throws Exception;
	public List<GiverVO> select_MyCareer_info(int giver_no) throws Exception;
	public List<GiverVO> select_MyHope_Business_Area_info(int giver_no) throws Exception;
	public List<GiverVO> select_MyLicense(int giver_no) throws Exception;
	//------------------------------------내 이력서 확인하기용 select문 end
	
	
	//------------------------------------도우미 이력서 확인하기용 select문 start	
	//상세페이지 info select 
	public List<GiverVO> selectDefault_info(int giver_no) throws Exception;
	public List<GiverVO> select_Career_info(int giver_no) throws Exception;
	public List<GiverVO> select_Hope_Business_Area_info(int giver_no) throws Exception;
	public List<GiverVO> select_License(int giver_no) throws Exception;	
	//------------------------------------도우미 이력서 확인하기용 select문 end
	
	
	//------------------------------------내 신청서 확인하기용 select문 start	
	public List<CustomerVO> select_default_customer_info(int customer_no) throws Exception;
	//------------------------------------내 신청서 확인하기용 select문 end

	
	
	//------------------------------------내 서비스 확인하기용(고객) select문 start	
	public List<Apply_to_giverVO> select_customer_apply(int customer_no) throws Exception;
	public List<Service_matchingVO> select_customer_matching(int u_no) throws Exception;
	public List<Service_matchingVO> select_giver_matching(int customer_no) throws Exception;
	//------------------------------------내 서비스 확인하기용(고객) select문 end
	
	
//	추천도우미 select 
	public List<GiverVO> recommend_giver(HashMap<String, Object> map) throws Exception;

	
	//----------- 추천도우미 대체용으로 쓰고있음 select	
	public List<GiverVO> selectGiverList() throws Exception;

	//------------------------------------giver 탈퇴 start
	public void deleteHope_Business_Area(int giver_no) throws Exception;
	public void deletelicense(int giver_no) throws Exception;
	public void deletecareer(int giver_no) throws Exception;
	public void deleteGiver_Satisfaction(int giver_no) throws Exception;
	public void deleteHugi_G(int giver_no) throws Exception;
	public void deleteApply_to_giver_G(int giver_no) throws Exception;
	public void deleteService_matching_G(int giver_no) throws Exception;
	public void deleteGiver(int giver_no) throws Exception;
	//------------------------------------giver 탈퇴 end

	
	
	
	//------------------------------------customer 탈퇴 start
	public void deleteHugi(int customer_no) throws Exception;
	public void deleteApply_to_giver(int customer_no) throws Exception;
	public void deleteService_matching(int customer_no) throws Exception;
	public void deleteCustomer(int customer_no) throws Exception;
	//------------------------------------customer 탈퇴 end

	
	
	//-------------------------------------------Mypage
	
	//고객 상세 정보 
	public List<CustomerVO> select_customer_detail(int customer_no) throws Exception;
	
	//일일만족도 등록
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception;
	
	//도우미에게 신청 등록
	public void apply_to_giver_insert(HashMap<String, Integer> map) throws Exception;
	
	//후기 등록(도우미용)
	public void insert_hugi_giver(HugiVO hvo) throws Exception;

	//후기 등록(고객용)
	public void insert_hugi_customer(HugiVO hvo) throws Exception;
	
	//후기 수정
	public void update_Hugi(HugiVO hvo) throws Exception;
	
	//후기 list select(도우미용)
	public List<HugiVO> select_hugi(int u_no) throws Exception;
	
	//후기 list select(고객용)
	public List<HugiVO> select_hugi_customer(int u_no) throws Exception;
	
	//후기 detail select
	public List<HugiVO> select_hugi_detail(HugiVO hvo) throws Exception;
	
	//후기 delete
	public void delete_Hugi(HugiVO hvo) throws Exception;
	
	
	
	//서비스 매칭 insert
	public void insert_matching(Service_matchingVO service_matchingVO) throws Exception;
	
	//서비스 매칭시 신청리스트에서 해당 신청서 delete
	public void delete_apply(Apply_to_giverVO avo) throws Exception;
		
	//서비스 매칭 list
	public List<Service_matchingVO> select_metching_list(int u_no) throws Exception;
	
	//매칭테이블에서 도우미 정보를 가져오기(매칭확인부분에 쓰일것.)
	public List<Service_matchingVO> select_metching_giver(int u_no) throws Exception;

	//매칭테이블에서 고객 정보를 가져오기(매칭확인부분에 쓰일것.)
	public List<Service_matchingVO> select_metching_customer(Service_matchingVO svo) throws Exception;
	
	//서비스 매칭 고객용 delete
	public void delete_matching(Service_matchingVO svo) throws Exception;	

	//서비스 매칭 도우미용 delete
	public void delete_matching_giver(Service_matchingVO svo) throws Exception;	
	
	
	//서비스 종료 insert
	public void insert_terminate(Terminate_giver_serviceVO tvo) throws Exception;
	
	//서비스 종료 정보를 가져오기(도우미용)
	public List<Terminate_giver_serviceVO> select_terminate_giver(int giver_no) throws Exception;
	
	//서비스 종료 정보를 가져오기(고객용)
	public List<Terminate_giver_serviceVO> select_terminate_customer(int customer_no) throws Exception;
	
	
	//-------------------- 동윤 -------------------------------------------------------------
	   
	   
	   //도우미 기본정보 입력
	   public int insertGiver(GiverVO Gvo) ;
	   public void insertCareer(List<CareerVO> vo) ;
	   public void insertLicense(List<LicenseVO> vo) ;
	   public void insertHopeBusinessArea(List<Hope_Business_AreaVO> vo) ;
	   
	   	
	   //--------------------용진 -------------------------------------------------------------
	   
	   // 업데이트
	   // 기본정보
	   public void updateDefault_info(GiverVO vo) throws Exception;
	   // 멤버테이블
	   public void updatemember(MemberVO mo) throws Exception;
	   // 업데이트 라이센스
	   public void updateLicense(LicenseVO lvo) throws Exception;
	   // 업데이트 고객 신청
	   public void updateCustomer(CustomerVO cvo) throws Exception;
	   // 업데이트 경력
	   public void updateCareer(CareerVO cvo) throws Exception;
	   // 업데이트 희망지역
	   public void updateHopeBusiness(Hope_Business_AreaVO hvo) throws Exception;


	   // 인설트 출퇴근 기록부
	   public void worktimeInsert(WorktimeVO wvo) throws Exception;
	   // 출퇴근 기록 리스트
	   public List<WorktimeVO> worktimeselect(int g_work_no) throws Exception;
	   // 업데이트 출퇴근 기록부
	   public void worktimeupdate(WorktimeVO wvo) throws Exception;
	   // 도우미 마이 페이지 리스트
	   public List<Apply_to_giverVO> apply_to_giver_select(Apply_to_giverVO avo) throws Exception;
	   // 출퇴근 셀렉트 원
	   public List<WorktimeVO> worktimeselectone(int giver_no) throws Exception;

	   	
	
	
}