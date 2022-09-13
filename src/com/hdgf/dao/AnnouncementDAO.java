package com.hdgf.dao;

import java.sql.CallableStatement;
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
	
	// 글쓰기 메소드
	public int write(AnnouncementVO annVO) {

		String sql = "{ call sp_insert_Announcement(?, ?, ?, ?, ?) }";
		
		Connection conn = null;

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setString(1, annVO.getTitle());
			callableStatement.setString(2, annVO.getU_id());
			callableStatement.setString(3, annVO.getMain_text());
			callableStatement.setString(4, annVO.getFile_link());
			callableStatement.setInt(5, annVO.getAnnoun_type());	
			callableStatement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //에러 발생 시
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
	
	// 하나의 게시글을 보는 메소드
	public AnnouncementVO getAnn(int annId) {
		String sql = "select * from announcement where board_id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, annId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				AnnouncementVO ann = new AnnouncementVO();
				ann.setId(rs.getInt(1));
				ann.setTitle(rs.getString(2));
				ann.setU_id(rs.getString(3));
				ann.setWrdate(rs.getDate(4));
				ann.setMain_text(rs.getString(5));
				ann.setFile_link(rs.getString(6));
				ann.setVisiter(rs.getInt(7));
				ann.setAnnoun_type(rs.getInt(8));
				return ann;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 게시글 수정 메소드
	public int update(AnnouncementVO annVO) {
		String sql = " { call sp_update_Announcement(?, ?, ?, ?, ?) }";
		
		Connection conn = null;
		
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setInt(1, annVO.getId());
			callableStatement.setString(2, annVO.getTitle());
			callableStatement.setString(3, annVO.getMain_text());
			callableStatement.setString(4, annVO.getFile_link());
			callableStatement.setInt(5, annVO.getAnnoun_type());
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	// 게시글 삭제 메소드
	public int delete(int annID) {
		String sql = " { call sp_delete_Announcement(?) }";
		
		Connection conn = null;
		
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setInt(1, annID);
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	// 게시글 전체 검색 메소드
}
