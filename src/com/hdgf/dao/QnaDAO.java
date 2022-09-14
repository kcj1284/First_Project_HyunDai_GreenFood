package com.hdgf.dao;

import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

import com.hdgf.dto.QnaVO;
import com.hdgf.util.DBConnection;

public class QnaDAO {

	private QnaDAO() { 
		
	}
	private static QnaDAO instance = new QnaDAO();
	
	private static QnaDAO getInstance() {
		return instance;
	}
	
	 public ArrayList<QnaVO> listQna(String id) {
		 ArrayList<QnaVO> qnaList = new ArrayList<QnaVO>();
		 
		 String sql = "select * from qna where id=? order by wrdate desc";
		 
		 Connection conn = null;
	     PreparedStatement pstmt = null;
	     ResultSet rs = null;
		 
	     try {
	         conn = DBConnection.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, id);
	         rs = pstmt.executeQuery();
	         while (rs.next()) {
        	   QnaVO qnaVO = new QnaVO();
        	   //qnaVO.setQNA_id(rs.getInt("qna_id"));
        	   qnaVO.setTitle(rs.getString("title"));
        	   qnaVO.setUser_id(rs.getString("user_id"));
        	   qnaVO.setSecret(rs.getInt("secret"));
        	   qnaVO.setWrdate(rs.getDate("wrdate"));
        	   qnaVO.setMain_text(rs.getString("main_text"));
        	   //qnaVO.setAnswer(rs.getString("answer"));
        	   qnaVO.setQNA_type(rs.getInt("qna_type"));
	           qnaList.add(qnaVO);
	         }
	       } catch (Exception e) {
	         e.printStackTrace();
	       }
	     
		 return qnaList;
	 }
	 

	  public void insertQna(QnaVO qnaVO, String session_id) {
	    String sql = "call sp_insert_QnA(?, ?, ?, ?, ?)";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    try {
	      conn = DBConnection.getConnection();
	      pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1, qnaVO.getTitle());
	      pstmt.setString(2, session_id);
	      pstmt.setInt(3, 0);
	      pstmt.setString(4, qnaVO.getMain_text());
	      pstmt.setInt(5, qnaVO.getQNA_type());
	      pstmt.executeUpdate();
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	  }
	 
	/*
	 * private Customer_DAO() { }
	 * 
	 * private static Customer_DAO instance = new Customer_DAO();
	 * 
	 * public static Customer_DAO getInstance() { return instance; }
	 * 
	 * public void insertUsers(Customer_VO Customer_VO) { Connection conn = null;
	 * PreparedStatement pstmt = null; ResultSet rset = null;
	 * 
	 * String runSP = "{ call sp_insert_QnA(?, ?, ?, ?, ?, ?) }";
	 * 
	 * try { conn = DBConnection.getConnection(); CallableStatement
	 * callableStatement = conn.prepareCall(runSP); //callableStatement.setInt(1,
	 * Customer_VO.getQNA_id()); callableStatement.setString(1,
	 * Customer_VO.getTitle()); callableStatement.setString(2,
	 * Customer_VO.getUser_id()); callableStatement.setInt(3,
	 * Customer_VO.getSecret()); //callableStatement.setDate(5,
	 * Customer_VO.getWrdate()); callableStatement.setString(4,
	 * Customer_VO.getMain_text()); callableStatement.setString(5,
	 * Customer_VO.getAnswer()); callableStatement.setInt(6,
	 * Customer_VO.getQNA_type()); callableStatement.executeUpdate();
	 * System.out.println("작성 성공"); } catch (SQLException e) {
	 * System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
	 * e.printStackTrace(); } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * }
	 */
	
	
	
	
}
