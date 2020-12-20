package kr.co.kosmo.mvc.dto;


/*
facilityNO number(10),
peopleLimit number(10),
peopleNumber number(10),
foreign key(faciltyNO) references welfareFacilities(facilityNo)
 */
public class MedicaldetailVO {
	private int facilityNo;
	private int peopleLimit;
	private int peopleNumber;
	
	public int getFacilityNo() {
		return facilityNo;
	}
	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}
	public int getPeopleLimit() {
		return peopleLimit;
	}
	public void setPeopleLimit(int peopleLimit) {
		this.peopleLimit = peopleLimit;
	}
	public int getPeopleNumber() {
		return peopleNumber;
	}
	public void setPeopleNumber(int peopleNumber) {
		this.peopleNumber = peopleNumber;
	}
	
}
