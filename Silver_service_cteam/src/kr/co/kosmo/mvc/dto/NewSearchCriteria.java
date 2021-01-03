package kr.co.kosmo.mvc.dto;

public class NewSearchCriteria extends NewCriteria{

	private String searchType = "";
	private String keyword = "";
	 
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "NewSearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	
}