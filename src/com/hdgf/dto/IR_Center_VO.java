package com.hdgf.dto;

public class IR_Center_VO {
	private int IR_id;
	private String Title;
	private String user_id;
	private java.sql.Date wrdate;
	private String main_text;
	private String file_link;
	private int visiter;

	public int getIR_id() {
		return IR_id;
	}

	public void setIR_id(int iR_id) {
		IR_id = iR_id;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public java.sql.Date getWrdate() {
		return wrdate;
	}

	public void setWrdate(java.sql.Date wrdate) {
		this.wrdate = wrdate;
	}

	public String getMain_text() {
		return main_text;
	}

	public void setMain_text(String main_text) {
		this.main_text = main_text;
	}

	public String getFile_link() {
		return file_link;
	}

	public void setFile_link(String file_link) {
		this.file_link = file_link;
	}

	public int getVisiter() {
		return visiter;
	}

	public void setVisiter(int visiter) {
		this.visiter = visiter;
	}
}