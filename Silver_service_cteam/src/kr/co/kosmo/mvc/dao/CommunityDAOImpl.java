package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.kosmo.mvc.dto.FacilityReviewVO;
import kr.co.kosmo.mvc.dto.MemberVO;
import kr.co.kosmo.mvc.dto.ReservationInfoVO;
import kr.co.kosmo.mvc.dto.WelfareFacilitiesVO;
@Repository
public class CommunityDAOImpl implements CommunityDAO{
	
	@Autowired
	private SqlSessionTemplate ss;
	
	@Override
	public WelfareFacilitiesVO getFacilityInfo(WelfareFacilitiesVO vo) {
		return ss.selectOne("commu.facInfo", vo);
	}
	
	@Override
	public List<FacilityReviewVO> getFacilityReview(WelfareFacilitiesVO vo) {
		return ss.selectList("commu.getReview", vo);
	}
	
	@Override
	public List<WelfareFacilitiesVO> getMedicalList() {
		return ss.selectList("commu.getMedicalList");
	}
	
	@Override
	public List<WelfareFacilitiesVO> getMedicalRecommendList() {
		return ss.selectList("commu.getMedicalrecommend");
	}
	
	@Override
	public List<WelfareFacilitiesVO> getElderlyhomeList() {
		return ss.selectList("commu.getElderlyhomeList");
	}
	
	@Override
	public List<WelfareFacilitiesVO> getElderlyhomeRecommendList(){
		return ss.selectList("commu.getElderlyhomerecommend");
	}
	
	@Override
	public List<WelfareFacilitiesVO> getSilverhallList() {
		return ss.selectList("commu.getSilverhallList");
	}
	
	@Override
	public List<WelfareFacilitiesVO> getSilverhalleRecommendList() {
		return ss.selectList("commu.getSilverhallrecommend");
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
	
	@Override
	public List<ReservationInfoVO> getMyReservation(ReservationInfoVO vo){
		return ss.selectList("commu.getMyReservation", vo);
	}
	
	@Override
	public ReservationInfoVO updateReservationForm(ReservationInfoVO vo) {
		return ss.selectOne("commu.getMyReservationDetail", vo);
	}
	
	@Override
	public void updateReservation(ReservationInfoVO vo) {
		ss.update("commu.updateReservation", vo);
	}
	
	@Override
	public void reservationDelete(ReservationInfoVO vo) {
		ss.delete("commu.reservationDelete", vo);
	}
	
	@Override
	public List<WelfareFacilitiesVO> getMedicalListAjax(WelfareFacilitiesVO vo) {
		return ss.selectList("commu.getMedicalListAjax", vo);
	}
	
	@Override
	public int insertReview(FacilityReviewVO vo) {
		return ss.insert("commu.insertReview",vo);
	}
	
	@Override
	public List<WelfareFacilitiesVO> getElderlyhomeListAjax(WelfareFacilitiesVO vo){
		return ss.selectList("commu.getElderlyhomeListAjax", vo);
	}
	
	@Override
	public List<WelfareFacilitiesVO> getSilverhallListAjax(WelfareFacilitiesVO vo){
		return ss.selectList("commu.getSilverhallListAjax", vo);
	}
	
}
