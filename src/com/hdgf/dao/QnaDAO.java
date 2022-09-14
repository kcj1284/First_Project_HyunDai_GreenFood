package com.hdgf.dao;

import java.sql.Connection;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.QnaVO;
import com.hdgf.util.DBConnection;

import oracle.jdbc.OracleTypes;

public class QnaDAO {

	private QnaDAO() { 
		
	}
	private static QnaDAO instance = new QnaDAO();
	
	public static QnaDAO getInstance() {
		return instance;
	}
	

	// 전체 list 검색
	public ArrayList<QnaVO> listQna() {
		String runSP = "{ call sp_search_List_ALL_QNA(?) }";
		// 전체데이터를 select한 결과 presult가 들어가므로 ?가 1개. presult는 오라클에서 커서에 해당.
		ArrayList<QnaVO> lists = new ArrayList<>();
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			ResultSet rs = null;
			callableStatement = conn.prepareCall(runSP);
			// out파라미터의 자료형 설정(커서를 받아낼 데이터 타입을 생성)
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 프로시저 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // cstmt실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 vo에 입력
				QnaVO vo = new QnaVO();
				vo.setQNA_id(rs.getInt("QNA_id"));
				vo.setTitle(rs.getString("title"));
				vo.setUser_id(rs.getString("user_id"));
				vo.setWrdate(rs.getDate("wrdate"));
				vo.setQNA_type(rs.getInt("QNA_type"));
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
	
	// 하나의 게시글을 보는 메소드
	public QnaVO getQna(int qnaId) {
		QnaVO qnaVO = null;
		String sql = "select * from qna where qna_id = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qnaId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				QnaVO qna = new QnaVO();
				qna.setQNA_id(rs.getInt(1));
				qna.setTitle(rs.getString(2));
				qna.setUser_id(rs.getString(3));
				qna.setSecret(rs.getInt(4));
				qna.setWrdate(rs.getDate(5));
				qna.setMain_text(rs.getString(6));
				qna.setAnswer(rs.getString(7));
				qna.setQNA_type(rs.getInt(8));
				return qna;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return qnaVO;
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
	
	// 게시글 수정 메소드
	public void updateQna(QnaVO qnaVO, String session_id) {
		String sql = " { call sp_update_QnA(?, ?, ?, ?, ?) }";
		
		Connection conn = null;
		
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setInt(1, qnaVO.getQNA_id());
			callableStatement.setString(2, qnaVO.getTitle());
			callableStatement.setString(3, qnaVO.getMain_text());
			callableStatement.setInt(4, qnaVO.getSecret());
			callableStatement.setInt(5, qnaVO.getQNA_type());
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
