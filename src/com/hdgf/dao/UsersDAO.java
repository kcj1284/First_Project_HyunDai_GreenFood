package com.hdgf.dao;

import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.hdgf.dto.UsersVO;
import com.hdgf.util.DBConnection;

public class UsersDAO {

	private UsersDAO() {
	}

	private static UsersDAO instance = new UsersDAO();

	public static UsersDAO getInstance() {
		return instance;
	}

	public UsersVO getUsers(String user_id) throws SQLException {
		UsersVO usersVO = null;
		String sql = "select * from users where user_id=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				usersVO = new UsersVO();
				usersVO.setUser_id(rs.getString("user_id"));
				usersVO.setUser_pw(rs.getString("user_pw"));
				usersVO.setUser_name(rs.getString("user_name"));
				usersVO.setTel(rs.getString("tel"));
				usersVO.setEmail(rs.getString("email"));
				usersVO.setGender(Integer.parseInt(rs.getString("gender")));
				usersVO.setAdministrator(Integer.parseInt(rs.getString("administrator")));
				usersVO.setCom_type(Integer.parseInt(rs.getString("com_type")));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}

		return usersVO;
	}

	public void insertUsers(UsersVO usersVO) throws SQLException {

//		    int result = 0;
//		    String sql = "insert into users(user_id, user_pw, user_name, tel,";
//		    sql += " email, gender, administrator, com_type) values(?, ?, ?, ?, ?, ?, ?, ?)";
//
//		    Connection conn = null;
//			PreparedStatement pstmt = null;
//			ResultSet rset = null;
//
//		    
//		    try {
//		      conn = DBConnection.getConnection();
//		      pstmt = conn.prepareStatement(sql);
//		      pstmt.setString(1, usersVO.getUser_id());      
//		      pstmt.setString(2, usersVO.getUser_pw());
//		      pstmt.setString(3, usersVO.getUser_name());
//		      pstmt.setString(4, usersVO.getTel());
//		      pstmt.setString(5, usersVO.getEmail());
//		      pstmt.setInt(6, usersVO.getGender());
//		      pstmt.setInt(7, usersVO.getAdministrator());	// 회원가입기능 사용자는 관리자가 아닌 고객
//		      pstmt.setInt(8, usersVO.getCom_type());
//		      result = pstmt.executeUpdate();
//		      
//		      
//		    } catch (Exception e) {
//		      e.printStackTrace();
//		    } finally {
//		    	if (rset != null)
//					rset.close();
//				if (pstmt != null)
//					pstmt.close();
//				if (conn != null)
//					conn.close();
//		    }
//		    return result;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String runSP = "{ call sp_insert_users(?, ?, ?, ?, ?, ?, ?, ?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setString(1, usersVO.getUser_id());
			callableStatement.setString(2, usersVO.getUser_pw());
			callableStatement.setString(3, usersVO.getUser_name());
			callableStatement.setString(4, usersVO.getTel());
			callableStatement.setString(5, usersVO.getEmail());
			callableStatement.setInt(6, usersVO.getGender());
			callableStatement.setInt(7, usersVO.getAdministrator());
			callableStatement.setInt(8, usersVO.getCom_type());
//				callableStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			callableStatement.executeUpdate();
			System.out.println("성공");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
