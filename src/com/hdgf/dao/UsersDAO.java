// 작성자 : 김민찬
package com.hdgf.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import com.hdgf.dto.IR_Center_VO;
import com.hdgf.dto.UsersVO;
import com.hdgf.util.DBConnection;

// preparedStatement -> CallableStatement
public class UsersDAO {

	public UsersDAO() {
	}

	private static UsersDAO instance = new UsersDAO();
	public static UsersDAO getInstance() {
		return instance;
	}

// piped line function을 활용해서 반환값을 여러개 받음
	public UsersVO getUsers(String user_id) {
		UsersVO usersVO = null;
		String sql = "select * from getuser_pipe_table_func(?)";  // call을 사용하지는 않지만

		Connection conn = null;
		ResultSet rs = null;
		CallableStatement cstmt = null;		// callable로 진행

		try {
			conn = DBConnection.getConnection();
			cstmt = conn.prepareCall(sql);
			cstmt.setString(1, user_id);
			rs = cstmt.executeQuery();
			// rs를 전부 순환
			// 받아온값을 setter로 설정
			if (rs.next()) {
				usersVO = new UsersVO();
				usersVO.setUser_id(user_id);
				usersVO.setUser_pw(rs.getString("user_pw"));
				usersVO.setUser_name(rs.getString("user_name"));
				usersVO.setTel(rs.getString("tel"));
				usersVO.setEmail(rs.getString("email"));
				usersVO.setGender(rs.getInt("gender"));
				usersVO.setAdministrator(rs.getInt("administrator"));
				usersVO.setCom_type(rs.getInt("com_type"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return usersVO;
	}

	// Preparedstatement
//	public UsersVO getUsers(String user_id){
//		UsersVO usersVO = null;
//		String sql = "select * from users where user_id=?";
//
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try {
//			conn = DBConnection.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, user_id);
//			rs = pstmt.executeQuery();
//			if (rs.next()) {
//				usersVO = new UsersVO();
//				usersVO.setUser_id(rs.getString("user_id"));
//				usersVO.setUser_pw(rs.getString("user_pw"));
//				usersVO.setUser_name(rs.getString("user_name"));
//				usersVO.setTel(rs.getString("tel"));
//				usersVO.setEmail(rs.getString("email"));
//				usersVO.setGender(Integer.parseInt(rs.getString("gender")));
//				usersVO.setAdministrator(Integer.parseInt(rs.getString("administrator")));
//				usersVO.setCom_type(Integer.parseInt(rs.getString("com_type")));
//
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} 
//
//		return usersVO;
//	}

	// 수정
	// 프로시져를 호출
	public void updateUsers(UsersVO usersVO) {

		String runSP = "{ call sp_update_users(?, ?, ?, ?, ?, ?, ?) }";
		
		Connection conn = null;
		
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setString(1, usersVO.getUser_id());
			callableStatement.setString(2, usersVO.getUser_pw());
			callableStatement.setString(3, usersVO.getUser_name());
			callableStatement.setString(4, usersVO.getTel());
			callableStatement.setString(5, usersVO.getEmail());
			callableStatement.setInt(6, usersVO.getGender());
			callableStatement.setInt(7, usersVO.getCom_type());
			callableStatement.executeUpdate();
			System.out.println("업데이트 성공");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insertUsers(UsersVO usersVO) {

		Connection conn = null;

		String runSP = "{ call sp_insert_users(?, ?, ?, ?, ?, ?, ?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setString(1, usersVO.getUser_id());
			callableStatement.setString(2, usersVO.getUser_pw());
			callableStatement.setString(3, usersVO.getUser_name());
			callableStatement.setString(4, usersVO.getTel());
			callableStatement.setString(5, usersVO.getEmail());
			callableStatement.setInt(6, usersVO.getGender());
			callableStatement.setInt(7, usersVO.getCom_type());
			callableStatement.executeUpdate();
			System.out.println("성공");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void deleteUsers(String user_id) {

		Connection conn = null;

		String runSP = "{ call sp_delete_users(?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setString(1, user_id);
			callableStatement.executeUpdate();
			System.out.println("성공");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	// ajax 실시간 아이디 중복검사를 위한 메소드
	public int checkId(String user_id) { // 유저가 입력한 값을 매개변수로 한다

		Connection conn = null;
		CallableStatement cstmt = null;

		// function을 호출
		String runFP = "{ ?=call sf_check_user_id(?)}";

		int idCheck = 0;

		try {
			conn = DBConnection.getConnection();

			cstmt = conn.prepareCall(runFP);
			cstmt.registerOutParameter(1, Types.NUMERIC); // function 반환값 OutParameter에 받기 resultset으로 안받음
			cstmt.setString(2, user_id);
			cstmt.executeUpdate(); // 실행
			idCheck = cstmt.getInt(1); // 결과값

		} catch (Exception e) {
			e.printStackTrace();
		}
		return idCheck;
	}

}
