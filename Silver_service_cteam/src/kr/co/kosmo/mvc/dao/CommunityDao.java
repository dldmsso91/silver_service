package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.MemberDTO;
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
	public WelfareFacilitiesDTO getWelfareFacilities(WelfareFacilitiesDTO vo) {
		return ss.selectOne("commu.welfareFacilities");
	}
	
	@Override
	public MemberDTO getReservationmember() {
		return ss.selectOne("commu.Reservationmember");
	}
	
}
