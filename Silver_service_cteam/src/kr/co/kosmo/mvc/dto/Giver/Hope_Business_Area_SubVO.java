package kr.co.kosmo.mvc.dto.Giver;

import java.util.List;

public class Hope_Business_Area_SubVO {

	private List<Integer> hope_business_area_no;
	private int giver_no;
	private List<String> hope_business_city;
	private List<String> hope_business_town;
	private List<Hope_Business_AreaVO> Hope_Business_Area_List;
	
//	public int getHope_business_area_no() {
//		return hope_business_area_no;
//	}
//	public void setHope_business_area_no(int hope_business_area_no) {
//		this.hope_business_area_no = hope_business_area_no;
//	}
	
	public int getGiver_no() {
		return giver_no;
	}
	public List<Integer> getHope_business_area_no() {
		return hope_business_area_no;
	}
	public void setHope_business_area_no(List<Integer> hope_business_area_no) {
		this.hope_business_area_no = hope_business_area_no;
	}
	public void setGiver_no(int giver_no) {
		this.giver_no = giver_no;
	}
	public List<String> getHope_business_city() {
		return hope_business_city;
	}
	public void setHope_business_city(List<String> hope_business_city) {
		this.hope_business_city = hope_business_city;
	}
	public List<String> getHope_business_town() {
		return hope_business_town;
	}
	public void setHope_business_town(List<String> hope_business_town) {
		this.hope_business_town = hope_business_town;
	}
	public List<Hope_Business_AreaVO> getHope_Business_Area_List() {
		return Hope_Business_Area_List;
	}
	public void setHope_Business_Area_List(List<Hope_Business_AreaVO> hope_Business_Area_List) {
		Hope_Business_Area_List = hope_Business_Area_List;
	}
	
	
}
