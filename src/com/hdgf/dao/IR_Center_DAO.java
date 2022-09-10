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
	
	public void insertUsers(IR_Center_VO IR_Center_VO) {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rset = null;

	String runSP = "{ call sp_insert_IR_Center(?, ?, ?, ?, ?, ?) }";

	try {
		conn = DBConnection.getConnection();
		CallableStatement callableStatement = conn.prepareCall(runSP);
		callableStatement.setString(1, IR_Center_VO.getTitle());
		callableStatement.setString(2, IR_Center_VO.getUser_id());
		callableStatement.setDate(3, IR_Center_VO.getWrdate());
		callableStatement.setString(4, IR_Center_VO.getMain_text());
		callableStatement.setString(5, IR_Center_VO.getFile_link());
		callableStatement.setInt(6, IR_Center_VO.getVisiter());
		callableStatement.executeUpdate();
		System.out.println("¼º°ø");
	} catch (SQLException e) {
		System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		e.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
	}

}
}
