package com.hdgf.dto;

/**
 * AnnouncementVO
 * @author 장주연
 * @since 2022.09.07
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.07     장주연              최초 생성
 * 2022.09.12	  장주연				글쓰기, 리스트 조회 메소드 추가
 * </pre>
 */

public class AnnouncementVO {
	private int id;
	private String title;
	private String u_id;
	private java.sql.Date wrdate;
	private String main_text;
	private int file_id;
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
	public int getfile_id() {
		return file_id;
	}
	public void setfile_id(int file_id) {
		this.file_id = file_id;
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
