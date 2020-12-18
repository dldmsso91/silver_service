package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesDTO;
@Repository
public class CommunityDao implements CommunityInter{
	// �ڵ� �� ���� 
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public WelfareFacilitiesDTO getFacilityInfo(WelfareFacilitiesDTO vo) {
		return ss.selectOne("commu.facInfo", vo);
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getMedicalList() {
		return ss.selectList("commu.getMedicalList");
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getElderlyhomeList() {
		return ss.selectList("commu.getElderlyhomeList");
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getSilverhallList() {
		return ss.selectList("commu.getSilverhallList");
	}
	
	@Override
	public WelfareFacilitiesDTO getWelfareFacility(WelfareFacilitiesDTO vo) {
		return ss.selectOne("commu.welfareFacility", vo);
	}
	
	@Override
	public MemberVO getReservationmember() {
		return ss.selectOne("commu.reservationmember");
	}
	
}
