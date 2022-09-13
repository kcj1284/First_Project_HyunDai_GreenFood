package com.hdgf.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.IR_Center_VO;
import com.hdgf.util.DBConnection;

import oracle.jdbc.OracleTypes;

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
	/*
	 * public ArrayList<AnnouncementVO> getList() { ArrayList<AnnouncementVO>
	 * annList = new ArrayList<AnnouncementVO>(); String sql =
	 * "select * from announcement";
	 * 
	 * Connection conn = null; PreparedStatement pstmt = null; ResultSet rs = null;
	 * 
	 * try { conn = DBConnection.getConnection(); pstmt =
	 * conn.prepareStatement(sql); rs = pstmt.executeQuery(); while (rs.next()) {
	 * AnnouncementVO ann = new AnnouncementVO(); ann.setId(rs.getInt(1));
	 * ann.setTitle(rs.getString(2)); ann.setU_id(rs.getString(3));
	 * ann.setWrdate(rs.getDate(4)); ann.setMain_text(rs.getString(5));
	 * ann.setFile_link(rs.getString(6)); ann.setVisiter(rs.getInt(7));
	 * ann.setAnnoun_type(rs.getInt(8)); annList.add(ann); } } catch (Exception e) {
	 * e.printStackTrace(); } return annList; }
	 */
	
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
	public ArrayList<AnnouncementVO> getList() {
		String runSP = "{ call sp_search_ALL_Announcement(?) }";
		ArrayList<AnnouncementVO> lists = new ArrayList<>();
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			ResultSet rs = null;
			callableStatement = conn.prepareCall(runSP);
			// out파라미터의 자료형 설정(커서를 받아낼 데이터 타입을 생성)
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 오라클과 호환성제 때문에 demo > build path > configure build path > library에 ojdbc8.jar
			// 파일 재추가 진행
			// 프로시저 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // callableStatement실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 dto에 입력
				AnnouncementVO vo = new AnnouncementVO();
				vo.setId(rs.getInt("board_id"));
				vo.setTitle(rs.getString("Title"));
				vo.setU_id(rs.getString("User_id"));
				vo.setMain_text(rs.getString("Main_text"));
				vo.setVisiter(rs.getInt("Visiter"));
				// vo를 리스트에 추가
				lists.add(vo);
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;
	}
	// 게시글 본문 검색 메소드
	public ArrayList<AnnouncementVO> searchByMaintext(String keyword) {
		String sql = "{ call sp_search_main_text_Announcement(?,?) }";
		//물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다	
		ArrayList<AnnouncementVO> annList = new ArrayList<AnnouncementVO>();
		
		Connection conn = null;

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			ResultSet rs=null;
			
			// out 파라미터 자료형 설정
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 오라클과 호환성제 때문에 demo > build path > configure build path > library에 ojdbc8.jar
			// 파일 재추가 진행
			callableStatement.setString(2, "%" + keyword + "%");// '홍길' 검색시 '홍길%' 모든 사람 나오게끔 % 붙임
			// 프로시져 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // callableStatement실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 dto에 입력
				AnnouncementVO ann = new AnnouncementVO();
				ann.setId(rs.getInt(1));
				ann.setTitle(rs.getString(2));
				ann.setU_id(rs.getString(3));
				ann.setWrdate(rs.getDate(4));
				ann.setMain_text(rs.getString(5));
				ann.setFile_link(rs.getString(6));
				ann.setVisiter(rs.getInt(7));
				ann.setAnnoun_type(rs.getInt(8));
				// vo를 리스트에 추가
				annList.add(ann);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return annList;
	}
}
