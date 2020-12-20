package kr.co.kosmo.mvc.dto;

import java.util.List;

/*
mNo number(10) primary key,
mId varchar2(30),
mPassword varchar2(50),
mName varchar2(20),
mBirth Date,
mGender varchar2(4),
mPhone varchar2(20),
mEmail varchar2(30),
mAddr varchar2(100)
 */
public class MemberDTO {
	private int mNo;
	private String mId;
	private String mPassword;
	private String mName;
	private String mBirth;
	private String mGender;
	private String mPhone;
	private String mEmail;
	private String mAddr;
	private List<WelfareFacilitiesVO> welfareFacilitiesDTO;
	
	
	public List<WelfareFacilitiesVO> getWelfareFacilitiesDTO() {
		return welfareFacilitiesDTO;
	}
	public void setWelfareFacilitiesDTO(List<WelfareFacilitiesVO> welfareFacilitiesDTO) {
		this.welfareFacilitiesDTO = welfareFacilitiesDTO;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPassword() {
		return mPassword;
	}
	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmBirth() {
		return mBirth;
	}
	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}
	public String getmGender() {
		return mGender;
	}
	public void setmGender(String mGender) {
		this.mGender = mGender;
	}
	public String getmPhone() {
		return mPhone;
	}
	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmAddr() {
		return mAddr;
	}
	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}
	
	

}
