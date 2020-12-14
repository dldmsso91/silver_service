package kr.co.kosmo.mvc.service;

import java.util.List;

import kr.co.kosmo.mvc.dto.WelfareFacilitiesDTO;

public interface CommunityServiceInter {
	
	
	public WelfareFacilitiesDTO getFacilityInfo(WelfareFacilitiesDTO vo);
	
	public List<WelfareFacilitiesDTO> getMedicalList(WelfareFacilitiesDTO vo);
	
	public List<WelfareFacilitiesDTO> getElderlyhomeList(WelfareFacilitiesDTO vo);
	
	public List<WelfareFacilitiesDTO> getSilverhallList(WelfareFacilitiesDTO vo);
	
	//public void addLoginLogging()

}
