package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;

public interface CommunityService {
	
	
	public WelfareFacilitiesVO getFacilityInfo(WelfareFacilitiesVO vo);
	
	public Map<String, Object> getMedicalList();
	
	public Map<String, Object> getElderlyhomeList();
	
	public Map<String, Object> getSilverhallList();
	
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo);
	
	public Map<String, Object> getReservationmember(int u_no,WelfareFacilitiesVO vo);
	
	public List<ReservationInfoVO> insertReservationInfo(ReservationInfoVO vo);
	
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo);
	
	public ReservationInfoVO updateReservationForm(ReservationInfoVO vo);
	
}
