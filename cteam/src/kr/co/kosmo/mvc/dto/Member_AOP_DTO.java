package kr.co.kosmo.mvc.dto;
/*
num number constraint  member_aop_num_pk primary key,
id varchar2(10) constraint member_aop_id_nn not null,
pwd varchar2(10),
name varchar2(34),
regdate date,
*/
public class Member_AOP_DTO {
	private int num;
	private String id,pwd,name,regdate;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
