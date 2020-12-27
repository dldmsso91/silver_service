package kr.co.kosmo.mvc.dto;
/*
facilityNo number(10),
facilityName varchar2(100) not null,
evaluateDate varchar2(30),
evaluateGrade varchar2(20),
manageScore number(3),
safetyScore number(3),
assureScore number(3),
processScore number(3),
resultScore number(3),
foreign key(facilityNO) references welfareFacilities(facilityNo)
 */
public class WelfareFacilityScoreVO {
	private int facilityNo;
	private String facilityName;
	private String evaluateDate;
	private String evaluateGrade;
	private String manageScore;
	private String safetyScore;
	private String assureScore;
	private String processScore;
	private String resultScore;
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
	public String getEvaluateDate() {
		return evaluateDate;
	}
	public void setEvaluateDate(String evaluateDate) {
		this.evaluateDate = evaluateDate;
	}
	public String getEvaluateGrade() {
		return evaluateGrade;
	}
	public void setEvaluateGrade(String evaluateGrade) {
		this.evaluateGrade = evaluateGrade;
	}
	public String getManageScore() {
		return manageScore;
	}
	public void setManageScore(String manageScore) {
		this.manageScore = manageScore;
	}
	public String getSafetyScore() {
		return safetyScore;
	}
	public void setSafetyScore(String safetyScore) {
		this.safetyScore = safetyScore;
	}
	public String getAssureScore() {
		return assureScore;
	}
	public void setAssureScore(String assureScore) {
		this.assureScore = assureScore;
	}
	public String getProcessScore() {
		return processScore;
	}
	public void setProcessScore(String processScore) {
		this.processScore = processScore;
	}
	public String getResultScore() {
		return resultScore;
	}
	public void setResultScore(String resultScore) {
		this.resultScore = resultScore;
	}
	
	
	
}
