package kr.co.kosmo.mvc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kosmo.mvc.dao.CommunityDAO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;

@Service("communityService")
public class CommunityServiceImpl implements CommunityService{
	
	@Autowired
	private CommunityDAO commnunityDao;
	
	@Override
	public WelfareFacilitiesVO getFacilityInfo(WelfareFacilitiesVO vo) {
		return commnunityDao.getFacilityInfo(vo);
	}
	
	@Override
	public List<WelfareFacilitiesVO> getMedicalList() {
		return commnunityDao.getMedicalList();
	}
	
	@Override
	public List<WelfareFacilitiesVO> getElderlyhomeList() {
		return commnunityDao.getElderlyhomeList();
	}
	
	@Override
	public List<WelfareFacilitiesVO> getSilverhallList() {
		return commnunityDao.getSilverhallList();
	}
	
	@Override
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo) {
		return commnunityDao.getWelfareFacility(vo);
	}
	
	@Override
	public Map<String, Object> getReservationmember(int u_no,WelfareFacilitiesVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member", commnunityDao.getReservationmember(u_no));
		map.put("facInfo", commnunityDao.getWelfareFacility(vo));
		return map;
	}
	
	@Override
	public List<ReservationInfoVO> insertReservationInfo(ReservationInfoVO vo) {
		commnunityDao.insertReservationInfo(vo);
		return commnunityDao.getMyReservation(vo);
	}
	
	@Override
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo){
		return commnunityDao.getMyReservation(vo);
	}
	
}
