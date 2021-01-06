package kr.co.kosmo.mvc.dto;
/*
revNo number(10)primary key,
facilityNo number(10),
facilityName varchar2(100),
u_no number(10),
u_id varchar2(34),
content varchar2(400),
score number,
rdate date,
foreign key(facilityNO) references welfareFacilities(facilityNo),
foreign key(U_NO) references U_MEMBER(U_NO)
 */
public class FacilityReviewVO {
	private int revNo;
    private int facilityNo;
    private String facilityName;
    private int u_no;
    private String u_id;
    private String content;
    private int score;
    private String rdate;
    
    
    
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getU_no() {
		return u_no;
	}
	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getRevNo() {
		return revNo;
	}
	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}
	public int getFacilityNo() {
		return facilityNo;
	}
	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}
	public String getFacilityName() {
		return facilityName;
	}
	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
    
    
}
