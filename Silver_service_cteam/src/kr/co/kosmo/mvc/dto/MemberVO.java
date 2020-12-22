package kr.co.kosmo.mvc.dto;

import java.util.Date;

public class MemberVO {
	private int u_no ;
	private String u_id;
	private String u_password;
	private String u_name;
	private String u_birth;
	private String u_birth2;
	private String u_phone;
	private String u_email;
	private String u_addr;
	private String u_addr1;
	private String u_addr2;
	private Date   u_redate;
	private String u_gender;
	private int u_age;
	
	
	public int getU_age() {
		return u_age;
	}
	public void setU_age(int u_age) {
		this.u_age = u_age;
	}
	public String getU_gender() {
		return u_gender;
	}
	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
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
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_birth() {
		return u_birth;
	}
	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}


	public String getU_birth2() {
		return u_birth2;
	}

	public void setU_birth2(String u_birth2) {
		this.u_birth2 = u_birth2;
	}


	public String getU_phone() {
		return u_phone;
	}


	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}


	public String getU_email() {
		return u_email;
	}


	public void setU_email(String u_email) {
		this.u_email = u_email;
	}


	public String getU_addr() {
		return u_addr;
	}


	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}


	public String getU_addr1() {
		return u_addr1;
	}


	public void setU_addr1(String u_addr1) {
		this.u_addr1 = u_addr1;
	}


	public String getU_addr2() {
		return u_addr2;
	}


	public void setU_addr2(String u_addr2) {
		this.u_addr2 = u_addr2;
	}


	public Date getU_redate() {
		return u_redate;
	}


	public void setU_redate(Date u_redate) {
		this.u_redate = u_redate;
	}


	@Override
	public String toString() {
		return "MemberVO [u_no=" + u_no + ", u_id=" + u_id + ", u_password=" + u_password + ",u_name= " + u_name +
				",u_birth="+u_birth+",u_birth2=" +u_birth2 +",u_phone="+u_phone+",u_email="+u_email+",u_addr="+u_addr+",u_addr1="+u_addr1+",u_addr2=+"+ u_addr2 +",u_redate ="+u_redate+	"]";
	}
	

}