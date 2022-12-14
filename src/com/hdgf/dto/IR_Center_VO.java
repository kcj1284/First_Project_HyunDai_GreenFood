package com.hdgf.dto;

/**
 * IR_Center_VO
 * @author 김찬중
 * @since 2022.09.10
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.10     김찬중              최초 생성
 * </pre>
 */

public class IR_Center_VO {
	private int id;
	private String title;
	private String user_id;
	private java.sql.Date wrdate;
	private String main_text;
	private int file_id;
	private int visiter;

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

	public int getFile_id() {
		return file_id;
	}

	public void setFile_id(int file_id) {
		this.file_id = file_id;
	}

	public int getVisiter() {
		return visiter;
	}

	public void setVisiter(int visiter) {
		this.visiter = visiter;
	}
}