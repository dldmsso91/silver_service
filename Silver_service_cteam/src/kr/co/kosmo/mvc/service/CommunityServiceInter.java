package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.dto.MemberDTO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesDTO;

public interface CommunityServiceInter {
	
	
	public WelfareFacilitiesDTO getFacilityInfo(WelfareFacilitiesDTO vo);
	
	public List<WelfareFacilitiesDTO> getMedicalList();
	
	public List<WelfareFacilitiesDTO> getElderlyhomeList();
	
	public List<WelfareFacilitiesDTO> getSilverhallList();
	
	public WelfareFacilitiesDTO getWelfareFacilities(WelfareFacilitiesDTO vo);
	
	public MemberDTO getReservationmember();

}
