package com.hdgf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hdgf.dto.MemberVO;
import com.hdgf.util.DBConnection;


public class MemberDAO {
	
	private MemberDAO() {
	  }

	  private static MemberDAO instance = new MemberDAO();

	  public static MemberDAO getInstance() {
	    return instance;
	  }
	  
	  public int insertMember(MemberVO memberVO) throws SQLException {
		    int result = 0;
		    String sql = "insert into member(user_id, user_pw, user_name, tel,";
		    sql += " email, gender, administrator, com_type) values(?, ?, ?, ?, ?, ?, ?, ?)";

		    Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;

		    
		    try {
		      conn = DBConnection.getConnection();
		      pstmt = conn.prepareStatement(sql);
		      pstmt.setString(1, memberVO.getUser_id());      
		      pstmt.setString(2, memberVO.getUser_pw());
		      pstmt.setString(3, memberVO.getUser_name());
		      pstmt.setString(4, memberVO.getTel());
		      pstmt.setString(5, memberVO.getEmail());
		      pstmt.setInt(6, memberVO.getGender());
		      pstmt.setInt(7, memberVO.getAdministrator());	// 회원가입기능 사용자는 관리자가 아닌 고객
		      pstmt.setInt(8, memberVO.getCom_type());
		      result = pstmt.executeUpdate();
		    } catch (Exception e) {
		      e.printStackTrace();
		    } finally {
		    	if (rset != null)
					rset.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
		    }
		    return result;
		  }
	  

		  

}
