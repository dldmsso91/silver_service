package kr.co.kosmo.mvc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.kosmo.mvc.dao.CommunityDAO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;

@Service("communityService")
public class CommunityServiceImpl implements CommunityService{
	
	@Autowired
	private CommunityDAO communityDao;
	
	@Override
	public Map<String, Object> getFacilityInfo(WelfareFacilitiesVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("getFacilityInfo", communityDao.getFacilityInfo(vo));
		map.put("getFacilityReview", communityDao.getFacilityReview(vo));
		return map;
	}
	
	@Transactional
	@Override
	public Map<String, Object> getMedicalList() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("medicalList", communityDao.getMedicalList());
		map.put("medicalRecommendList", communityDao.getMedicalRecommendList());
		return map;
	}
	
	@Transactional
	@Override
	public Map<String, Object> getElderlyhomeList() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("elderlyhomeList", communityDao.getElderlyhomeList());
		map.put("elderlyhomeRecommendList", communityDao.getElderlyhomeRecommendList());
		return map;
	}
	
	@Transactional
	@Override
	public Map<String, Object> getSilverhallList() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("silverhallList", communityDao.getSilverhallList());
		map.put("silverhallRecommendList", communityDao.getSilverhalleRecommendList());
		return map;
	}
	
	@Override
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo) {
		return communityDao.getWelfareFacility(vo);
	}
	
	@Transactional
	@Override
	public Map<String, Object> getReservationmember(int u_no,WelfareFacilitiesVO vo) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member", communityDao.getReservationmember(u_no));
		map.put("facInfo", communityDao.getWelfareFacility(vo));
		return map;
	}
	
	@Override
	public List<ReservationInfoVO> insertReservationInfo(ReservationInfoVO vo) {
		communityDao.insertReservationInfo(vo);
		return communityDao.getMyReservation(vo);
	}
	
	@Override
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo){
		return communityDao.getMyReservation(vo);
	}
	
	public ReservationInfoVO updateReservationForm(ReservationInfoVO vo) {
		return communityDao.updateReservationForm(vo);
	}
	
	@Override
	public List<WelfareFacilitiesVO> getMedicalListAjax(WelfareFacilitiesVO vo){
		return communityDao.getMedicalListAjax(vo);
	}
	
}
