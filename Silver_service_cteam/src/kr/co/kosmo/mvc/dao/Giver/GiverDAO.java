package kr.co.kosmo.mvc.dao.Giver;



import java.util.List;

import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;


public interface GiverDAO {


	//test용 전체 출력
	public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception;

	
	//info용 출력
	public List<GiverVO> selectDefault_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Career_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Hope_Business_Area_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Giver_Satisfaction_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_License(GiverVO vo) throws Exception;

	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception;



	//지원 취소하기
	public void deleteGiver(GiverVO Dvo) throws Exception;

	//일일만족도 입력하기
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception;
	
	
	
	//-------------------- 동윤 -------------------------------------------------------------
	   
	   
	   //도우미 기본정보 입력
	   public int insertGiver(GiverVO Gvo) throws Exception;
	   public int insertCareer(CareerVO Cvo) throws Exception;
	   public int insertLicense(LicenseVO Lvo) throws Exception;
	   public int insertHopeBusinessArea(Hope_Business_AreaVO Hvo) throws Exception;
	   
	   	
	   
	   // 업데이트
	   // 기본정보
	   public void updateDefault_info(GiverVO vo) throws Exception;
	   // 경력
	   public void update_Career_info(CareerVO co) throws Exception;
	   // 라이센스
	   public void update_license_info(LicenseVO lo) throws Exception;
	   // 희망근무지역
	   public void update_Hope_Business_Area_info(Hope_Business_AreaVO ho) throws Exception;
	   // 일일 만족도
	   public void update_Giver_Satisfaction_info(Giver_SatisfactionVO go) throws Exception;


	   	
	
	
}