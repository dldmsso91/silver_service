package kr.co.kosmo.mvc.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;

public interface SanatoriumService {
	
	
	public Map<String, Object> getFacilityInfo(WelfareFacilitiesVO vo);
	
	public Map<String, Object> getMedicalList(WelfareFacilitiesVO vo);
	
	public Map<String, Object> getElderlyhomeList(WelfareFacilitiesVO vo);
	
	public Map<String, Object> getSilverhallList(WelfareFacilitiesVO vo);
	
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo);
	
	public Map<String, Object> getReservationmember(int u_no,WelfareFacilitiesVO vo);
	
	public List<ReservationInfoVO> insertReservationInfo(ReservationInfoVO vo);
	
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo);
	
	public ReservationInfoVO updateReservationForm(ReservationInfoVO vo);

	public List<WelfareFacilitiesVO> getMedicalListAjax(WelfareFacilitiesVO vo);
	
	public List<WelfareFacilitiesVO> getElderlyhomeListAjax(WelfareFacilitiesVO vo);
	
	public List<WelfareFacilitiesVO> getSilverhallListAjax(WelfareFacilitiesVO vo);
	
	public List<WelfareFacilitiesVO> searchFacility(Map<String, String> map);
	
}
