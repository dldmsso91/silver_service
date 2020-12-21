package kr.co.kosmo.mvc.dao;

import java.util.List;

import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;

public interface CommunityDAO {
	
	
	public WelfareFacilitiesVO getFacilityInfo(WelfareFacilitiesVO vo);
	
	public List<WelfareFacilitiesVO> getMedicalList();
	
	public List<WelfareFacilitiesVO> getElderlyhomeList();
	
	public List<WelfareFacilitiesVO> getSilverhallList();
	
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo);
	
	public MemberVO getReservationmember(int u_no);
	
	public void insertReservationInfo(ReservationInfoVO vo);
	
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo);
}
