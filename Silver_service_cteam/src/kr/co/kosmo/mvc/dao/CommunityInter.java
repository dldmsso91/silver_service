package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.WelfareFacilitiesDTO;
import kr.co.kosmo.mvc.dto.MemberVO;

public interface CommunityInter {
	
	
	public WelfareFacilitiesDTO getFacilityInfo(WelfareFacilitiesDTO vo);
	
	public List<WelfareFacilitiesDTO> getMedicalList();
	
	public List<WelfareFacilitiesDTO> getElderlyhomeList();
	
	public List<WelfareFacilitiesDTO> getSilverhallList();
	
	public WelfareFacilitiesDTO getWelfareFacility(WelfareFacilitiesDTO vo);
	
	public MemberVO getReservationmember();
}
