package kr.co.kosmo.mvc.service.Giver;



import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;



public interface GiverService {


	
	
	
	
	//------------------------------------------ 은내 상세이력서select, 추천도우미 select, 일일만족도insert, 지원서 삭제 ----------------------------

	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception;
	
	public Map<String, Object> selectGiver_list(GiverVO vo) throws Exception;
	public void deleteGiver_seed(CareerVO Cvo, LicenseVO Lvo, Hope_Business_AreaVO Hvo,Giver_SatisfactionVO Svo) throws Exception;
	public void deleteGiver( GiverVO Gvo) throws Exception;

	
	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception;
	
	
	public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception;	
	public List<GiverVO> selectDefault_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Career_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_license_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Hope_Business_Area_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Giver_Satisfaction_info(GiverVO vo) throws Exception;
		

	
	
	
	
	
	//------------------------------------------ 동윤 지원자 insert ----------------------------
	   public void insertGiverAll( GiverVO Gvo, CareerVO Cvo, LicenseVO Lvo, Hope_Business_AreaVO Hvo) throws Exception;     
	   
	   
	   
	   
	   
	   
	   
			   
	   
 //------------------------------------------ 용진 지원자 update ----------------------------
	   
	   // 업데이트
	   // 기본
	   public void updateDefault_info(GiverVO vo) throws Exception;
	   // 경력
	   public void update_Career_info(CareerVO co) throws Exception;
	   // 라이센스
	   public void update_license_info(LicenseVO lo) throws Exception;
	   // 희망근무지역
	   public void update_Hope_Business_Area_info(Hope_Business_AreaVO ho) throws Exception;
	   // 일일 만족도
	   public void update_Giver_Satisfaction_info(Giver_SatisfactionVO go) throws Exception;
	   // 멤버
	   public void updatemember(MemberVO mo) throws Exception;
	   	   	
	   	   	

}