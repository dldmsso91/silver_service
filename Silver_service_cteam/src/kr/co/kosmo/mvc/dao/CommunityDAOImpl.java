package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;
@Repository
public class CommunityDAOImpl implements CommunityDAO{
	// �ڵ� �� ���� 
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public WelfareFacilitiesVO getFacilityInfo(WelfareFacilitiesVO vo) {
		return ss.selectOne("commu.facInfo", vo);
	}
	
	@Override
	public List<WelfareFacilitiesVO> getMedicalList() {
		return ss.selectList("commu.getMedicalList");
	}
	
	@Override
	public List<WelfareFacilitiesVO> getElderlyhomeList() {
		return ss.selectList("commu.getElderlyhomeList");
	}
	
	@Override
	public List<WelfareFacilitiesVO> getSilverhallList() {
		return ss.selectList("commu.getSilverhallList");
	}
	
	@Override
	public WelfareFacilitiesVO getWelfareFacility(WelfareFacilitiesVO vo) {
		return ss.selectOne("commu.welfareFacility", vo);
	}
	
	@Override
	public MemberVO getReservationmember(int u_no) {
		return ss.selectOne("commu.reservationmember", u_no);
	}
	
	@Override
	public void insertReservationInfo(ReservationInfoVO vo){
		ss.insert("commu.insertReservationInfo", vo);
	}
	
}
