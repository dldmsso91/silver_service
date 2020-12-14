package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.WelfareFacilitiesDTO;
@Repository
public class CommunityDao implements CommunityInter{
	// �ڵ� �� ���� 
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public WelfareFacilitiesDTO getFacilityInfo(WelfareFacilitiesDTO vo) {
		return ss.selectOne("commu.welfareFacilityDetail", vo);
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getMedicalList(WelfareFacilitiesDTO vo) {
		return ss.selectList("commu.getMedicalList", vo);
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getElderlyhomeList(WelfareFacilitiesDTO vo) {
		return ss.selectList("commu.getElderlyhomeList", vo);
	}
	
	@Override
	public List<WelfareFacilitiesDTO> getSilverhallList(WelfareFacilitiesDTO vo) {
		return ss.selectList("commu.getSilverhallList", vo);
	}
	
}
