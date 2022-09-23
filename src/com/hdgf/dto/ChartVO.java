package com.hdgf.dto;

/**
 * ChartVO
 * @author 김찬중, 장주연
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16    김찬중               최초 생성
 * 2022.09.16	 김찬중, 장주연			차트 연동 문제점 해결
 * </pre>
 */

public class ChartVO {
	private int qna_type;
	private int com_type;
	private int cnt;

	public int getQna_type() {
		return qna_type;
	}

	public void setQna_type(int qna_type) {
		this.qna_type = qna_type;
	}

	public int getCom_type() {
		return com_type;
	}

	public void setCom_type(int com_type) {
		this.com_type = com_type;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

}