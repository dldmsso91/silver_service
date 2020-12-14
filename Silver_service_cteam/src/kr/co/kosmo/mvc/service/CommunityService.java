package kr.co.kosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.CommunityInter;
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
	public List<WelfareFacilitiesDTO> getMedicalList(WelfareFacilitiesDTO vo) {
		return commnunityDao.getMedicalList(vo);
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getElderlyhomeList(WelfareFacilitiesDTO vo) {
		return commnunityDao.getElderlyhomeList(vo);
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getSilverhallList(WelfareFacilitiesDTO vo) {
		return commnunityDao.getSilverhallList(vo);
	}
	
}
