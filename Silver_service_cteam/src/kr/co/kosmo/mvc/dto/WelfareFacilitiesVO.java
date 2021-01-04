package kr.co.kosmo.mvc.dto;

import java.util.List;

/*
facilityNo number(10) primary key,
typeName varchar2(50),
eavaluationResult varchar2(50),
facilityName varchar2(100) not null,
peopleLimit number(10),
peopleNow number(10),
peopleMargin number(10),
peopleWait  number(10),
telnumber varchar2(30) not null,
address varchar2(100) not null,
supplyService varchar(200),
latitude varchar2(40),
longitude varchar2(40)
 */
public class WelfareFacilitiesVO {
	private int facilityNo;
	private String eavaluationResult, typeName, facilityName;
	private int peopleLimit, peopleNow, peopleMargin, peopleWait;
	private String telnumber, address, supplyService, latitude, longitude;
	private double swLat, swLng;
	private double neLat, neLng;
	private WelfareFacilityStaffVO welfareFacilityStaffVO;
	private WelfareFacilityScoreVO welfareFacilityScoreVO;
	private int totalScore;
	private List<FacilityReviewVO> facilityReviewVO;
	
	
	
	public List<FacilityReviewVO> getFacilityReviewVO() {
		return facilityReviewVO;
	}
	public void setFacilityReviewVO(List<FacilityReviewVO> facilityReviewVO) {
		this.facilityReviewVO = facilityReviewVO;
	}
	public int getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(int totalScore) {
		this.totalScore = totalScore;
	}
	public WelfareFacilityStaffVO getWelfareFacilityStaffVO() {
		return welfareFacilityStaffVO;
	}
	public void setWelfareFacilityStaffVO(WelfareFacilityStaffVO welfareFacilityStaffVO) {
		this.welfareFacilityStaffVO = welfareFacilityStaffVO;
	}
	public WelfareFacilityScoreVO getWelfareFacilityScoreVO() {
		return welfareFacilityScoreVO;
	}
	public void setWelfareFacilityScoreVO(WelfareFacilityScoreVO welfareFacilityScoreVO) {
		this.welfareFacilityScoreVO = welfareFacilityScoreVO;
	}
	public int getFacilityNo() {
		return facilityNo;
	}
	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}
	public String getEavaluationResult() {
		return eavaluationResult;
	}
	public void setEavaluationResult(String eavaluationResult) {
		this.eavaluationResult = eavaluationResult;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getFacilityName() {
		return facilityName;
	}
	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}
	public int getPeopleLimit() {
		return peopleLimit;
	}
	public void setPeopleLimit(int peopleLimit) {
		this.peopleLimit = peopleLimit;
	}
	public int getPeopleNow() {
		return peopleNow;
	}
	public void setPeopleNow(int peopleNow) {
		this.peopleNow = peopleNow;
	}
	public int getPeopleMargin() {
		return peopleMargin;
	}
	public void setPeopleMargin(int peopleMargin) {
		this.peopleMargin = peopleMargin;
	}
	public int getPeopleWait() {
		return peopleWait;
	}
	public void setPeopleWait(int peopleWait) {
		this.peopleWait = peopleWait;
	}
	public String getTelnumber() {
		return telnumber;
	}
	public void setTelnumber(String telnumber) {
		this.telnumber = telnumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSupplyService() {
		return supplyService;
	}
	public void setSupplyService(String supplyService) {
		this.supplyService = supplyService;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public double getSwLat() {
		return swLat;
	}
	public void setSwLat(double swLat) {
		this.swLat = swLat;
	}
	public double getSwLng() {
		return swLng;
	}
	public void setSwLng(double swLng) {
		this.swLng = swLng;
	}
	public double getNeLat() {
		return neLat;
	}
	public void setNeLat(double neLat) {
		this.neLat = neLat;
	}
	public double getNeLng() {
		return neLng;
	}
	public void setNeLng(double neLng) {
		this.neLng = neLng;
	}
	
	
}
