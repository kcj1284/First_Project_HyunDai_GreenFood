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
	
	//글쓰기 메소드
	public int write(AnnouncementVO annVO) {
		String sql = "insert into announcement (board_id, title, user_id, wrdate, main_text, file_link, visiter, announ_type)"
				+ " values (announ_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, annVO.getTitle());
			pstmt.setString(2, annVO.getU_id());
			pstmt.setDate(3, annVO.getWrdate());
			pstmt.setString(4, annVO.getMain_text());
			pstmt.setString(5, annVO.getFile_link());
			pstmt.setInt(6, annVO.getVisiter());
			pstmt.setInt(7,  annVO.getAnnoun_type());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	// 게시글 리스트 메소드
	public ArrayList<AnnouncementVO> getList() {
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
				AnnouncementVO ann = new AnnouncementVO();
				ann.setId(rs.getInt(1));
				ann.setTitle(rs.getString(2));
				ann.setU_id(rs.getString(3));
				ann.setWrdate(rs.getDate(4));
				ann.setMain_text(rs.getString(5));
				ann.setFile_link(rs.getString(6));
				ann.setVisiter(rs.getInt(7));
				ann.setAnnoun_type(rs.getInt(8));
				annList.add(ann);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return annList;
	}
}
