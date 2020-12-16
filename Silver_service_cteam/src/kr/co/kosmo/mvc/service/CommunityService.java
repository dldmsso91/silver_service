package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.CommunityInter;
import kr.co.kosmo.mvc.dto.MemberDTO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesDTO;

@Service("communityService")
public class CommunityService implements CommunityServiceInter{
	
	@Autowired
	private CommunityInter commnunityDao;
	
	@Override
	public WelfareFacilitiesDTO getFacilityInfo(WelfareFacilitiesDTO vo) {
		return commnunityDao.getFacilityInfo(vo);
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getMedicalList() {
		return commnunityDao.getMedicalList();
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getElderlyhomeList() {
		return commnunityDao.getElderlyhomeList();
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getSilverhallList() {
		return commnunityDao.getSilverhallList();
	}
	
	@Override
	public WelfareFacilitiesDTO getWelfareFacilities(WelfareFacilitiesDTO vo) {
		return commnunityDao.getWelfareFacilities(vo);
	}
	
	@Override
	public MemberDTO getReservationmember() {
		return commnunityDao.getReservationmember();
	}
	
}
