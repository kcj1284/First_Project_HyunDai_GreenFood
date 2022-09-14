package com.hdgf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.hdgf.util.DBConnection;

public class FileDAO {
	
	private FileDAO() {
	}
	
	private static FileDAO instance = new FileDAO();
	
	public static FileDAO getInstance() {
		return instance;
	}

	public int upload(String fileName, String fileRealName, int annID) {	
		String sql = "INSERT INTO bbs_file VALUES (?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fileName);
			pstmt.setString(2, fileRealName);
			pstmt.setInt(3, annID);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}
