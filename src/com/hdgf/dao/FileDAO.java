package com.hdgf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.hdgf.dto.FileVO;
import com.hdgf.util.DBConnection;

/**
 * FileDAO
 * @author 장주연
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16     장주연              최초 생성
 * 2022.09.18	  장주연				파일 업로드, 다운로드 기능 추가
 * </pre>
 */

public class FileDAO {
	
	private FileDAO() {
	}
	
	private static FileDAO instance = new FileDAO();
	
	public static FileDAO getInstance() {
		return instance;
	}
	
	public int getFileId(String fileRealName) {
		String sql = "select file_id from file_storage where filerealname=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fileRealName);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				int id = rs.getInt("file_id");
				return id;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; 
	}
	
	public FileVO getFile(int fileId) {
		String sql = "select * from file_storage where file_id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		FileVO fileVO = new FileVO();
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fileId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				fileVO.setFileName(rs.getString("filename"));
				fileVO.setFileRealName(rs.getString("filerealname"));
				fileVO.setId(rs.getInt("file_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileVO; 
	}
 
	public int upload(String fileName, String fileRealName) {	
		String sql = "insert into file_storage values (?, ?, file_storage_seq.nextval)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fileName);
			pstmt.setString(2, fileRealName);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}
