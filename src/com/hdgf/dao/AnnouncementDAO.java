package com.hdgf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hdgf.dto.AnnouncementVO;
import com.hdgf.util.DBConnection;

public class AnnouncementDAO {

	private AnnouncementDAO() {
	}
	
	private static AnnouncementDAO instance = new AnnouncementDAO();
	
	public static AnnouncementDAO getInstance() {
		return instance;
	}
	
	
	
	public ArrayList<AnnouncementVO> listAnnouncement() {
		ArrayList<AnnouncementVO> annList = new ArrayList<AnnouncementVO>();
		String sql = "select * from announcement";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				AnnouncementVO annVO = new AnnouncementVO();
				annVO.setId(rs.getInt("BOARD_ID"));
				annVO.setTitle(rs.getString("TITLE"));
				annVO.setU_id(rs.getString(""));
			}
		}
	}
	
}
