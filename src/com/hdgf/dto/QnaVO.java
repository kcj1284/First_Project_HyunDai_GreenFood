package com.hdgf.dto;

/**
 * QnaVO
 * @author 정구현
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.14     정구현      최초 생성

 * </pre>
 */

public class QnaVO {
	private int QNA_id;
	private String title;
	private String user_id;
	private int secret;
	private java.sql.Date wrdate;
	private String main_text;
	private String answer;
	private int QNA_type;
	
	public int getQNA_id() {
		return QNA_id;
	}
	public void setQNA_id(int qNA_id) {
		QNA_id = qNA_id;
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
	public int getSecret() {
		return secret;
	}
	public void setSecret(int secret) {
		this.secret = secret;
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
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getQNA_type() {
		return QNA_type;
	}
	public void setQNA_type(int qNA_type) {
		QNA_type = qNA_type;
	}


}