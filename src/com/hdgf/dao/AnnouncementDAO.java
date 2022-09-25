package com.hdgf.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hdgf.dto.AnnouncementVO;
import com.hdgf.util.DBManager;

import oracle.jdbc.OracleTypes;

/**
 * AnnouncementDAO
 * @author 장주연, 김찬중
 * @since 2022.09.08
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.08     장주연              최초 생성
 * 2022.09.12	  장주연	    		글쓰기, 리스트 조회 메소드 추가
 * 2022.09.13	  장주연				command 패턴으로 변경, 수정 및 삭제 메소드 추가
 * 2022.09.13 	  장주연, 김찬중		제목, 본문 검색 메소드 추가
 * 2022.09.16	  장주연				정렬 기능 메소드 추가 (최신순, 오래된 순, 조회순)
 * 2022.09.17	  장주연				카테고리별 검색 기능 추가
 * </pre>
 */

public class AnnouncementDAO {

	private AnnouncementDAO() {
	}

	private static AnnouncementDAO instance = new AnnouncementDAO();

	public static AnnouncementDAO getInstance() {
		return instance;
	}

	// 글쓰기 메소드
	public void write(AnnouncementVO annVO) {

		String sql = "{ call sp_insert_Announcement(?, ?, ?, ?, ?) }";

		Connection conn = null;

		try {
			conn = DBManager.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setString(1, annVO.getTitle());
			callableStatement.setString(2, annVO.getU_id());
			callableStatement.setString(3, annVO.getMain_text());
			callableStatement.setInt(4, annVO.getfile_id());
			callableStatement.setInt(5, annVO.getAnnoun_type());
			callableStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 게시글 수정 메소드
	public void update(AnnouncementVO annVO) {
		String sql = " { call sp_update_Announcement(?, ?, ?, ?, ?) }";

		Connection conn = null;

		try {
			conn = DBManager.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setInt(1, annVO.getId());
			callableStatement.setString(2, annVO.getTitle());
			callableStatement.setString(3, annVO.getMain_text());
			callableStatement.setInt(4, annVO.getfile_id());
			callableStatement.setInt(5, annVO.getAnnoun_type());
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 게시글 삭제 메소드
	public void delete(int annID) {
		String sql = " { call sp_delete_Announcement(?) }";

		Connection conn = null;

		try {
			conn = DBManager.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setInt(1, annID);
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 게시글 전체 검색 메소드
	public ArrayList<AnnouncementVO> get_ALL_List(String search_ALL) {
		String runSP = "{ call sp_search_ALL_Announcement(?,?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<AnnouncementVO> lists = new ArrayList<>();
		Connection conn = null;
		try {
			conn = DBManager.getConnection();
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
				AnnouncementVO vo = new AnnouncementVO();
				vo.setId(rs.getInt("board_id"));
				/*
				 * vo.setTitle(rs.getString("Title")); vo.setUser_id(rs.getString("User_id"));
				 * vo.setWrdate(rs.getDate("Wrdate"));
				 * vo.setMain_text(rs.getString("Main_text"));
				 * vo.setfile_id(rs.getString("file_id")); vo.setVisiter(rs.getInt("Visiter"));
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

	// 게시글 본문 검색 메소드
	public ArrayList<AnnouncementVO> get_Main_text_List(String search_Main_text) {
		String runSP = "{ call sp_search_Main_text_Announcement(?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<AnnouncementVO> annList = new ArrayList<>();
		Connection conn = null;
		try {
			conn = DBManager.getConnection();
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
				AnnouncementVO annVO = new AnnouncementVO();
				annVO.setId(rs.getInt("board_id"));
				annVO.setTitle(rs.getString("title"));
				annVO.setU_id(rs.getString("user_id"));
				annVO.setVisiter(rs.getInt("visiter"));
				annVO.setWrdate(rs.getDate("wrdate"));
				//annVO.setMain_text(rs.getString("main_text"));
				//annVO.setfile_id(rs.getString("file_id"));
				annVO.setAnnoun_type(rs.getInt("announ_type"));
				// vo를 리스트에 추가
				annList.add(annVO);
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return annList;
	}

	// 게시글 제목 검색 메소드
	public ArrayList<AnnouncementVO> get_title_List(String search_title) {
		String runSP = "{ call sp_search_title_Announcement(?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<AnnouncementVO> annList = new ArrayList<>();
		Connection conn = null;
		try {
			conn = DBManager.getConnection();
			CallableStatement callableStatement = conn.prepareCall(runSP);
			ResultSet rs = null;
			callableStatement = conn.prepareCall(runSP);
			// out 파라미터 자료형 설정
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			// 파일 재추가 진행
			callableStatement.setString(2, search_title);// '홍길' 검색시 '홍길%' 모든 사람 나오게끔 % 붙임
			// 프로시져 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // callableStatement실행결과를 object로 받아 downcast
			while (rs.next()) {
				// 레코드에 있는 내용을 dto에 입력
				AnnouncementVO annVO = new AnnouncementVO();
				annVO.setId(rs.getInt("board_id"));
				annVO.setTitle(rs.getString("title"));
				annVO.setU_id(rs.getString("user_id"));
				annVO.setVisiter(rs.getInt("visiter"));
				annVO.setWrdate(rs.getDate("wrdate"));
				// vo.setMain_text(rs.getString("Main_text"));
				// vo.setfile_id(rs.getString("file_id"));
				annVO.setAnnoun_type(rs.getInt("announ_type"));

				// vo를 리스트에 추가
				annList.add(annVO);
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return annList;
	}

	// 전체 list 조회
	public ArrayList<AnnouncementVO> getList() {
		String runSP = "{ call sp_select_list_all_announcement(?) }";
		// 전체데이터를 select한 결과 presult가 들어가므로 ?가 1개. presult는 오라클에서 커서에 해당.
		ArrayList<AnnouncementVO> lists = new ArrayList<>();
		Connection conn = null;
		try {
			conn = DBManager.getConnection();
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
				AnnouncementVO vo = new AnnouncementVO();
				vo.setId(rs.getInt("board_id"));
				vo.setTitle(rs.getString("title"));
				vo.setU_id(rs.getString("user_id"));
				vo.setVisiter(rs.getInt("visiter"));
				vo.setWrdate(rs.getDate("wrdate"));
				vo.setAnnoun_type(rs.getInt("announ_type"));
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
	public AnnouncementVO getAnn(int annId) {
		String sql = "{ call sp_select_one_announcement(?, ?) }";

		Connection conn = null;
		ResultSet rs = null;
		AnnouncementVO vo = new AnnouncementVO();

		try {
			conn = DBManager.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement = conn.prepareCall(sql);
			// out파라미터의 자료형 설정(커서를 받아낼 데이터 타입을 생성)
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			callableStatement.setInt(2, annId);
			// 프로시저 실행
			callableStatement.executeUpdate();
			// out파라미터의 값을 돌려받는다
			rs = (ResultSet) callableStatement.getObject(1); // cstmt실행결과를 object로 받아 downcast
			if (rs.next()) {
				// 레코드에 있는 내용을 vo에 입력
				vo.setId(rs.getInt("board_id"));
				vo.setTitle(rs.getString("title"));
				vo.setU_id(rs.getString("user_id"));
				vo.setWrdate(rs.getDate("wrdate"));
				vo.setMain_text(rs.getString("main_text"));
				vo.setfile_id(rs.getInt("file_id"));
				vo.setVisiter(rs.getInt("visiter"));
				vo.setAnnoun_type(rs.getInt("announ_type"));
			}
			rs.close();
			callableStatement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	// 전체 리스트 조회 (오래된 순)
	public ArrayList<AnnouncementVO> getListByWrdate() {
		String sql = "{ call sp_select_list_all_announcement_by_old(?) }";

		ArrayList<AnnouncementVO> annList = new ArrayList<>();
		Connection conn = null;
		CallableStatement callableStatement = null;

		try {
			conn = DBManager.getConnection();
			ResultSet rs = null;
			callableStatement = conn.prepareCall(sql);

			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			callableStatement.executeUpdate();

			rs = (ResultSet) callableStatement.getObject(1);
			while (rs.next()) {
				AnnouncementVO annVO = new AnnouncementVO();
				annVO.setId(rs.getInt("board_id"));
				annVO.setTitle(rs.getString("title"));
				annVO.setU_id(rs.getString("user_id"));
				annVO.setVisiter(rs.getInt("visiter"));
				annVO.setWrdate(rs.getDate("wrdate"));
				annVO.setAnnoun_type(rs.getInt("announ_type"));
				annList.add(annVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return annList;
	}

	// 전체 리스트 조회 (조회순)
	public ArrayList<AnnouncementVO> getListByViews() {
		String sql = "{ call sp_select_list_all_announcement_by_visit(?) }";

		ArrayList<AnnouncementVO> annList = new ArrayList<>();
		Connection conn = null;
		CallableStatement callableStatement = null;

		try {
			conn = DBManager.getConnection();
			ResultSet rs = null;
			callableStatement = conn.prepareCall(sql);

			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			callableStatement.executeUpdate();

			rs = (ResultSet) callableStatement.getObject(1);
			while (rs.next()) {
				AnnouncementVO annVO = new AnnouncementVO();
				annVO.setId(rs.getInt("board_id"));
				annVO.setTitle(rs.getString("title"));
				annVO.setU_id(rs.getString("user_id"));
				annVO.setVisiter(rs.getInt("visiter"));
				annVO.setWrdate(rs.getDate("wrdate"));
				annVO.setAnnoun_type(rs.getInt("announ_type"));
				annList.add(annVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return annList;
	}
}
