package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;
import kr.co.kosmo.mvc.dto.FacilityReviewVO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;

public interface CommunityDAO {
	
	
	public WelfareFacilitiesVO getFacilityInfo(WelfareFacilitiesVO vo);
	
	public List<FacilityReviewVO> getFacilityReview(WelfareFacilitiesVO vo);
	
	public List<WelfareFacilitiesVO> getMedicalList();
	
	public List<WelfareFacilitiesVO> getMedicalRecommendList();
	
	public List<WelfareFacilitiesVO> getElderlyhomeList();
	
	public List<WelfareFacilitiesVO> getElderlyhomeRecommendList();
	
	public List<WelfareFacilitiesVO> getSilverhallList();
	
	public List<WelfareFacilitiesVO> getSilverhalleRecommendList();
	
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo);
	
	public MemberVO getReservationmember(int u_no);
	
	public void insertReservationInfo(ReservationInfoVO vo);
	
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo);
	
	public ReservationInfoVO updateReservationForm(ReservationInfoVO vo);
	
	public void updateReservation(ReservationInfoVO vo);
	
	public void reservationDelete(ReservationInfoVO vo);
	
	public List<WelfareFacilitiesVO> getMedicalListAjax(WelfareFacilitiesVO vo);
	
	public int insertReview(FacilityReviewVO vo);
	
	public List<WelfareFacilitiesVO> getElderlyhomeListAjax(WelfareFacilitiesVO vo);
	
	public List<WelfareFacilitiesVO> getSilverhallListAjax(WelfareFacilitiesVO vo);
	
}
