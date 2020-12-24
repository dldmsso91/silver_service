package kr.co.kosmo.mvc.dao.Giver;



import java.util.List;

import kr.co.kosmo.mvc.dto.Giver.Apply_to_giverVO;
import kr.co.kosmo.mvc.dto.Giver.CareerVO;
import kr.co.kosmo.mvc.dto.Giver.GiverVO;
import kr.co.kosmo.mvc.dto.Giver.Giver_SatisfactionVO;
import kr.co.kosmo.mvc.dto.Giver.Hope_Business_AreaVO;
import kr.co.kosmo.mvc.dto.Giver.LicenseVO;


public interface GiverDAO {


	//test�슜 �쟾泥� 異쒕젰
	public List<GiverVO> selectGiverByNo_list(GiverVO vo) throws Exception;

	
	//info�슜 異쒕젰
	public List<GiverVO> selectDefault_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Career_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Hope_Business_Area_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_Giver_Satisfaction_info(GiverVO vo) throws Exception;
	public List<GiverVO> select_License(GiverVO vo) throws Exception;

	public List<GiverVO> recommend_giver(GiverVO vo) throws Exception;



	//吏��썝 痍⑥냼�븯湲�
	public void deleteGiver(GiverVO Dvo) throws Exception;

	//�씪�씪留뚯”�룄 �엯�젰�븯湲�
	public void insertSatisfaction(Giver_SatisfactionVO satisfactionVO) throws Exception;


	
	//-------------------- 동윤 -------------------------------------------------------------
	   
	   
	   //도우미 기본정보 입력
	   public int insertGiver(GiverVO Gvo) throws Exception;
	   public int insertCareer(CareerVO Cvo) throws Exception;
	   public int insertLicense(LicenseVO Lvo) throws Exception;
	   public int insertHopeBusinessArea(Hope_Business_AreaVO Hvo) throws Exception;
	   
	   	
	   
	   // �뾽�뜲�씠�듃
	   // 湲곕낯�젙蹂�
	   public void updateDefault_info(GiverVO vo) throws Exception;
	   // 寃쎈젰
	   public void update_Career_info(CareerVO co) throws Exception;
	   // �씪�씠�꽱�뒪
	   public void update_license_info(LicenseVO lo) throws Exception;
	   // �씗留앷렐臾댁��뿭
	   public void update_Hope_Business_Area_info(Hope_Business_AreaVO ho) throws Exception;
	   // �씪�씪 留뚯”�룄
	   public void update_Giver_Satisfaction_info(Giver_SatisfactionVO go) throws Exception;


	   	
	
	
}