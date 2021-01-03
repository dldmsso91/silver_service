package kr.co.kosmo.mvc.dto.Giver;

import java.util.List;

public class License_SubVO {

	private List<Integer> license_no;
	private int giver_no;
	private List<String> license_name;
	private List<String> license_Institute;
	private List<String> license_Redate;
	private List<LicenseVO> license_List;
	
//	public int getLicense_no() {
//		return license_no;
//	}
//	public void setLicense_no(int license_no) {
//		this.license_no = license_no;
//	}
	
	public int getGiver_no() {
		return giver_no;
	}
	public List<Integer> getLicense_no() {
		return license_no;
	}
	public void setLicense_no(List<Integer> license_no) {
		this.license_no = license_no;
	}
	public void setGiver_no(int giver_no) {
		this.giver_no = giver_no;
	}
	public List<String> getLicense_name() {
		return license_name;
	}
	public void setLicense_name(List<String> license_name) {
		this.license_name = license_name;
	}
	public List<String> getLicense_Institute() {
		return license_Institute;
	}
	public void setLicense_Institute(List<String> license_Institute) {
		this.license_Institute = license_Institute;
	}
	public List<String> getLicense_Redate() {
		return license_Redate;
	}
	public void setLicense_Redate(List<String> license_Redate) {
		this.license_Redate = license_Redate;
	}
	public List<LicenseVO> getLicense_List() {
		return license_List;
	}
	public void setLicense_List(List<LicenseVO> license_List) {
		this.license_List = license_List;
	}


	
}
