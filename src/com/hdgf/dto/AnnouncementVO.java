package com.hdgf.dto;

public class AnnouncementVO {
	private int id;
	private String title;
	private String u_id;
	private java.sql.Date wrdate;
	private String main_text;
	private String file_link;
	private int visiter;
	private int announ_type;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
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
	public int getAnnoun_type() {
		return announ_type;
	}
	public void setAnnoun_type(int announ_type) {
		this.announ_type = announ_type;
	}
	
	
}
