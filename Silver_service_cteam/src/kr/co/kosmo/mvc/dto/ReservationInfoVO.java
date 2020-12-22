package kr.co.kosmo.mvc.dto;
/*
resNo number(10) primary key,
facilityNO number(10),
facilityName varchar2(50) not null,
U_NO number(10),
userName  VARCHAR2(50) NOT NULL,
userAge number(5),
resDate Date default sysdate,
resTime VARCHAR2(10),
visitPurpose varchar2(100),
foreign key(facilityNO) references welfareFacilities(facilityNo),
foreign key(U_NO) references U_MEMBER(U_NO)
 */

public class ReservationInfoVO {
	int resNo;
	int facilityNO;
	String facilityName;
	int u_no;
	String userName;
	int userAge;
	String resDate;
	String resTime;
	String visitPurpose;
	
	WelfareFacilitiesVO welfareFacilitiesVO;
	MemberVO memberVO;
	
	
	public String getVisitPurpose() {
		return visitPurpose;
	}
	public void setVisitPurpose(String visitPurpose) {
		this.visitPurpose = visitPurpose;
	}
	public WelfareFacilitiesVO getWelfareFacilitiesVO() {
		return welfareFacilitiesVO;
	}
	public void setWelfareFacilitiesVO(WelfareFacilitiesVO welfareFacilitiesVO) {
		this.welfareFacilitiesVO = welfareFacilitiesVO;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public int getResNo() {
		return resNo;
	}
	public void setResNo(int resNo) {
		this.resNo = resNo;
	}
	public int getFacilityNO() {
		return facilityNO;
	}
	public void setFacilityNO(int facilityNO) {
		this.facilityNO = facilityNO;
	}
	public String getFacilityName() {
		return facilityName;
	}
	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	public String getResTime() {
		return resTime;
	}
	public void setResTime(String resTime) {
		this.resTime = resTime;
	}
	
	
}
