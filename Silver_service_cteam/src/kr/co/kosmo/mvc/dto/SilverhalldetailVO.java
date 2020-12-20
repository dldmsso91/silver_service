package kr.co.kosmo.mvc.dto;
/*
facilityNo number(10),
typeName varchar2(50),
serviceType varchar2(20),
NightService varchar2(10),
foreign key(faciltyNO) references welfareFacilities(facilityNo)
 */
public class SilverhalldetailVO {
	private int facilityNo;
	private String serviceType;
	
	public int getFacilityNo() {
		return facilityNo;
	}
	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	
	
}
