package com.hdgf.dto;

/**
 * FileVO
 * @author 장주연
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.14     장주연              최초 생성
 * </pre>
 */

public class FileVO {

	private int id;
	private String fileName;
	private String fileRealName;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
}
