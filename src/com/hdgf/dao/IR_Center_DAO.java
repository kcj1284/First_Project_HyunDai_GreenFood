package com.hdgf.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.IR_Center_VO;
import com.hdgf.util.DBConnection;

import oracle.jdbc.OracleTypes;

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
			callableStatement.setInt(4, IR_Center_VO.getfile_id());
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
			callableStatement.setInt(4, IR_Center_VO.getfile_id());
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

	// selectAll : dto가 담길 리스트가 필요하다.
	public ArrayList<IR_Center_VO> get_ALL_List(String search_ALL) {
		String runSP = "{ call sp_search_ALL_IR_Center(?,?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<IR_Center_VO> lists = new ArrayList<>();
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			ResultSet rs = null;
			callableStatement = conn.prepareCall(runSP);
			// out 파라미터 자료형 설정
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 파일 재추가 진행
			callableStatement.setString(2, search_ALL);// '홍길' 검색시 '홍길%' 모든 사람 나오게끔 % 붙임
			callableStatement.setString(3, search_ALL);// '홍길' 검색시 '홍길%' 모든 사람 나오게끔 % 붙임
			// 프로시져 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // callableStatement실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 dto에 입력
				IR_Center_VO vo = new IR_Center_VO();
				vo.setIR_id(rs.getInt("board_id"));
				/*
				 * vo.setTitle(rs.getString("Title")); vo.setUser_id(rs.getString("User_id"));
				 * vo.setWrdate(rs.getDate("Wrdate"));
				 * vo.setMain_text(rs.getString("Main_text"));
				 * vo.setfile_id(rs.getString("file_id"));
				 * vo.setVisiter(rs.getInt("Visiter"));
				 */
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

	// searchTitle
	public List<IR_Center_VO> get_Title_List(String search_Title) {
		String runSP = "{ call sp_search_title_IR_Center(?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		List<IR_Center_VO> lists = new ArrayList<IR_Center_VO>();

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			ResultSet rs = null;
			callableStatement = conn.prepareCall(runSP);
			// out 파라미터 자료형 설정
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 오라클과 호환성제 때문에 demo > build path > configure build path > library에 ojdbc8.jar
			// 파일 재추가 진행
			callableStatement.setString(2, search_Title);// '홍길' 검색시 '홍길%' 모든 사람 나오게끔 % 붙임
			// 프로시져 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // callableStatement실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 dto에 입력
				IR_Center_VO vo = new IR_Center_VO();
				vo.setIR_id(rs.getInt("IR_id"));
				/*
				 * vo.setTitle(rs.getString("Title")); vo.setUser_id(rs.getString("User_id"));
				 * vo.setWrdate(rs.getDate("Wrdate"));
				 * vo.setMain_text(rs.getString("Main_text"));
				 * vo.setfile_id(rs.getString("file_id"));
				 * vo.setVisiter(rs.getInt("Visiter"));
				 */
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

	// searchMain_text
	public List<IR_Center_VO> get_Main_text_List(String search_Main_text) {
		String runSP = "{ call sp_search_Main_text_IR_Center(?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		List<IR_Center_VO> lists = new ArrayList<IR_Center_VO>();

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			ResultSet rs = null;
			callableStatement = conn.prepareCall(runSP);
			// out 파라미터 자료형 설정
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 파일 재추가 진행
			callableStatement.setString(2, search_Main_text);// '홍길' 검색시 '홍길%' 모든 사람 나오게끔 % 붙임
			// 프로시져 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // callableStatement실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 dto에 입력
				IR_Center_VO vo = new IR_Center_VO();
				vo.setIR_id(rs.getInt("IR_id"));
				/*
				 * vo.setTitle(rs.getString("Title")); vo.setUser_id(rs.getString("User_id"));
				 * vo.setWrdate(rs.getDate("Wrdate"));
				 * vo.setMain_text(rs.getString("Main_text"));
				 * vo.setfile_id(rs.getString("file_id"));
				 * vo.setVisiter(rs.getInt("Visiter"));
				 */
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
}