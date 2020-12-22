package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;

public interface CommunityService {
	
	
	public WelfareFacilitiesVO getFacilityInfo(WelfareFacilitiesVO vo);
	
	public List<WelfareFacilitiesVO> getMedicalList();
	
	public List<WelfareFacilitiesVO> getElderlyhomeList();
	
	public List<WelfareFacilitiesVO> getSilverhallList();
	
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo);
	
	public Map<String, Object> getReservationmember(int u_no,WelfareFacilitiesVO vo);
	
	public List<ReservationInfoVO> insertReservationInfo(ReservationInfoVO vo);
	
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo);
	
	public ReservationInfoVO updateReservationForm(ReservationInfoVO vo);
}
