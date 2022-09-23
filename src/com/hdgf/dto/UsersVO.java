// 작성자 : 김민찬
package com.hdgf.dto;

public class UsersVO {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String tel;
	private String email;
	private int	gender;
	private int administrator;
	private int com_type;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getAdministrator() {
		return administrator;
	}
	public void setAdministrator(int administrator) {
		this.administrator = administrator;
	}
	public int getCom_type() {
		return com_type;
	}
	public void setCom_type(int com_type) {
		this.com_type = com_type;
	}

}
