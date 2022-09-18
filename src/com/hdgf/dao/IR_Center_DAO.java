//작성자 김찬중
package com.hdgf.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

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

	// 글쓰기 메소드
	public int write(IR_Center_VO IR_Center_VO) {
		Connection conn = null;
		String runSP = "{ call sp_insert_IR_Center(?, ?, ?, ?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setString(1, IR_Center_VO.getTitle());
			callableStatement.setString(2, IR_Center_VO.getUser_id());
			callableStatement.setString(3, IR_Center_VO.getMain_text());
			callableStatement.setInt(4, IR_Center_VO.getFile_id());
			callableStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 에러 발생 시
	}

	public int update(IR_Center_VO IR_Center_VO) {
		Connection conn = null;
		String runSP = "{ call sp_update_IR_Center(?, ?, ?, ?) }";

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			callableStatement.setInt(1, IR_Center_VO.getId());
			callableStatement.setString(2, IR_Center_VO.getTitle());
			callableStatement.setString(3, IR_Center_VO.getMain_text());
			callableStatement.setInt(4, IR_Center_VO.getFile_id());
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	public int delete(int id) {
		String sql = " { call sp_delete_IR_center(?) }";

		Connection conn = null;

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setInt(1, id);
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	// selectAll : dto가 담길 리스트가 필요하다.
	public ArrayList<IR_Center_VO> get_ALL_List(String search_ALL) {
		String runSP = "{ call sp_search_ALL_IR_Center(?,?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<IR_Center_VO> IR_List = new ArrayList<>();
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
				IR_Center_VO IR_VO = new IR_Center_VO();
				IR_VO.setId(rs.getInt("ir_id"));
				// vo를 리스트에 추가
				IR_List.add(IR_VO);
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return IR_List;
	}

	// searchtitle
	public ArrayList<IR_Center_VO> get_title_List(String search_title) {
		Connection conn = null;
		String runSP = "{ call sp_search_title_IR_Center(?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<IR_Center_VO> IR_List = new ArrayList<>();

		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			ResultSet rs = null;
			callableStatement = conn.prepareCall(runSP);
			// out 파라미터 자료형 설정
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 오라클과 호환성제 때문에 demo > build path > configure build path > library에 ojdbc8.jar
			// 파일 재추가 진행
			callableStatement.setString(2, search_title);// '홍길' 검색시 '홍길%' 모든 사람 나오게끔 % 붙임
			// 프로시져 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // callableStatement실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 dto에 입력
				IR_Center_VO IR_VO = new IR_Center_VO();
				IR_VO.setId(rs.getInt("ir_id"));
				IR_VO.setTitle(rs.getString("title")); 
				IR_VO.setUser_id(rs.getString("User_id"));
				IR_VO.setVisiter(rs.getInt("Visiter"));
				IR_VO.setWrdate(rs.getDate("Wrdate"));
				 
				// vo를 리스트에 추가
				IR_List.add(IR_VO);
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return IR_List;
	}

	// searchMain_text
	public ArrayList<IR_Center_VO> get_Main_text_List(String search_Main_text) {
		Connection conn = null;
		String runSP = "{ call sp_search_Main_text_IR_Center(?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<IR_Center_VO> IR_List = new ArrayList<>();

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
				IR_Center_VO IR_VO = new IR_Center_VO();
				IR_VO.setId(rs.getInt("ir_id"));
				IR_VO.setTitle(rs.getString("title")); 
				IR_VO.setUser_id(rs.getString("User_id"));
				IR_VO.setVisiter(rs.getInt("Visiter"));
				IR_VO.setWrdate(rs.getDate("Wrdate"));
				// vo를 리스트에 추가
				IR_List.add(IR_VO);
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return IR_List;
	}

	// 전체 list 검색
	public ArrayList<IR_Center_VO> getList() {
		Connection conn = null;
		String runSP = "{ call sp_search_List_ALL_IR_Center(?) }";
		// 전체데이터를 select한 결과 presult가 들어가므로 ?가 1개. presult는 오라클에서 커서에 해당.
		ArrayList<IR_Center_VO> IR_List = new ArrayList<>();

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
				IR_Center_VO IR_VO = new IR_Center_VO();
				IR_VO.setId(rs.getInt("ir_id"));
				IR_VO.setTitle(rs.getString("title"));
				IR_VO.setUser_id(rs.getString("user_id"));
				IR_VO.setVisiter(rs.getInt("visiter"));
				IR_VO.setWrdate(rs.getDate("wrdate"));
				// vo를 리스트에 추가
				IR_List.add(IR_VO);
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return IR_List;
	}

	// 하나의 게시글을 보는 메소드
	public IR_Center_VO getIR(int id) {
		String sql = "{ call sp_select_one_ir_center(?, ?) }";
		Connection conn = null;
		ResultSet rs = null;
		IR_Center_VO IR_VO = new IR_Center_VO();
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement = conn.prepareCall(sql);
			// out파라미터의 자료형 설정(커서를 받아낼 데이터 타입을 생성)
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			callableStatement.setInt(2, id);
			// 프로시저 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // cstmt실행결과를 object로 받아 downcast
			if (rs.next()) {
				// 레코드에 있는 내용을 vo에 입력
				IR_VO.setId(rs.getInt("ir_id"));
				IR_VO.setTitle(rs.getString("title"));
				IR_VO.setUser_id(rs.getString("user_id"));
				IR_VO.setWrdate(rs.getDate("wrdate"));
				IR_VO.setMain_text(rs.getString("main_text"));
				IR_VO.setFile_id(rs.getInt("file_id"));
				IR_VO.setVisiter(rs.getInt("visiter"));
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return IR_VO;
	}

	// 전체 리스트 조회 (오래된 순)
	public ArrayList<IR_Center_VO> getListByWrdate() {
		String sql = "{ call sp_select_list_all_IR_by_old(?) }";

		ArrayList<IR_Center_VO> IRList = new ArrayList<>();
		Connection conn = null;
		CallableStatement callableStatement = null;

		try {
			conn = DBConnection.getConnection();
			ResultSet rs = null;
			callableStatement = conn.prepareCall(sql);

			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			callableStatement.executeUpdate();

			rs = (ResultSet) callableStatement.getObject(1);
			while (rs.next()) {
				IR_Center_VO IR_VO = new IR_Center_VO();
				IR_VO.setId(rs.getInt("ir_id"));
				IR_VO.setTitle(rs.getString("title"));
				IR_VO.setUser_id(rs.getString("user_id"));
				IR_VO.setVisiter(rs.getInt("visiter"));
				IR_VO.setWrdate(rs.getDate("wrdate"));
				IRList.add(IR_VO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return IRList;
	}

	public ArrayList<IR_Center_VO> getListByViews() {
		String sql = "{ call sp_select_list_all_IR_by_visit(?) }";

		ArrayList<IR_Center_VO> IRList = new ArrayList<>();
		Connection conn = null;
		CallableStatement callableStatement = null;

		try {
			conn = DBConnection.getConnection();
			ResultSet rs = null;
			callableStatement = conn.prepareCall(sql);
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			callableStatement.executeUpdate();

			rs = (ResultSet) callableStatement.getObject(1);
			while (rs.next()) {
				IR_Center_VO IR_VO = new IR_Center_VO();
				IR_VO.setId(rs.getInt("ir_id"));
				IR_VO.setTitle(rs.getString("title"));
				IR_VO.setUser_id(rs.getString("user_id"));
				IR_VO.setVisiter(rs.getInt("visiter"));
				IR_VO.setWrdate(rs.getDate("wrdate"));
				IRList.add(IR_VO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return IRList;
	}
}