package com.hdgf.dao;

import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.hdgf.dto.IR_Center_VO;
import com.hdgf.util.DBConnection;

public class IR_Center_DAO {

	private IR_Center_DAO() {
	}

	private static IR_Center_DAO instance = new IR_Center_DAO();

	public static IR_Center_DAO getInstance() {
		return instance;
	}

	Connection conn = null;

	public void insert_IR_Center(IR_Center_VO IR_Center_VO) {

		String runSP = "{ call sp_insert_IR_Center(?, ?, ?, ?, ?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			// callableStatement.setInt(1, IR_Center_VO.getIR_id());
			callableStatement.setString(1, IR_Center_VO.getTitle());
			callableStatement.setString(2, IR_Center_VO.getUser_id());
			callableStatement.setString(3, IR_Center_VO.getMain_text());
			callableStatement.setString(4, IR_Center_VO.getFile_link());
			callableStatement.executeUpdate();
			System.out.println("success");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void update_IR_Center(IR_Center_VO IR_Center_VO) {

		String runSP = "{ call sp_update_IR_Center(?, ?, ?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setInt(1, IR_Center_VO.getIR_id());
			callableStatement.setString(2, IR_Center_VO.getTitle());
			callableStatement.setString(3, IR_Center_VO.getMain_text());
			callableStatement.setString(4, IR_Center_VO.getFile_link());
			callableStatement.executeUpdate();
			System.out.println("success");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void delete_IR_Center(IR_Center_VO IR_Center_VO) {// 삭제는 dto 전부 받을 필요없음.

		String runSP = "{ call sp_delete_IR_Center(?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setInt(1, IR_Center_VO.getIR_id());
			callableStatement.executeUpdate();
			System.out.println("success");
		} catch (SQLException e) {
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}