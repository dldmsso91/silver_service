package kr.co.kosmo.mvc.dto;

import java.util.List;

/*
facilityNo number(10) primary key,
typeName varchar2(50),
facilityName varchar2(50) not null,
cityloc varchar2(20),
address varchar2(100) not null,
telnumber varchar2(30) not null unique,
latitude varchar2(40),
longitude varchar2(40),
serviceScore number(5)
 */
public class WelfareFacilitiesDTO {
	int facilityNo;
	String typeName, facilityName, cityloc;
	String address, telnumber, latitude, longitude;
	int serviceScore;
//	private List<MedicaldetailDTO> medicalDetail;
//	private List<SilverhalldetailDTO> silverhallDetail;
	private MedicaldetailDTO medicalDetail;
	private SilverhalldetailDTO silverhallDetail;
	
	
	public MedicaldetailDTO getMedicalDetail() {
		return medicalDetail;
	}
	public void setMedicalDetail(MedicaldetailDTO medicalDetail) {
		this.medicalDetail = medicalDetail;
	}
	public SilverhalldetailDTO getSilverhallDetail() {
		return silverhallDetail;
	}
	public void setSilverhallDetail(SilverhalldetailDTO silverhallDetail) {
		this.silverhallDetail = silverhallDetail;
	}
	//	public List<SilverhalldetailDTO> getSilverhallDetail() {
//		return silverhallDetail;
//	}
//	public void setSilverhallDetail(List<SilverhalldetailDTO> silverhallDetail) {
//		this.silverhallDetail = silverhallDetail;
//	}
//	public List<MedicaldetailDTO> getMedicalDetail() {
//		return medicalDetail;
//	}
//	public void setMedicalDetail(List<MedicaldetailDTO> medicalDetail) {
//		this.medicalDetail = medicalDetail;
//	}
	public int getFacilityNo() {
		return facilityNo;
	}
	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
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
	public String getCityloc() {
		return cityloc;
	}
	public void setCityloc(String cityloc) {
		this.cityloc = cityloc;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTelnumber() {
		return telnumber;
	}
	public void setTelnumber(String telnumber) {
		this.telnumber = telnumber;
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
	public int getServiceScore() {
		return serviceScore;
	}
	public void setServiceScore(int serviceScore) {
		this.serviceScore = serviceScore;
	}
	
	
}
