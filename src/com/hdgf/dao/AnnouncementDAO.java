package com.hdgf.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hdgf.dto.AnnouncementVO;
import com.hdgf.util.DBConnection;

import oracle.jdbc.OracleTypes;

public class AnnouncementDAO {

	private AnnouncementDAO() {
	}
	
	private static AnnouncementDAO instance = new AnnouncementDAO();
	
	public static AnnouncementDAO getInstance() {
		return instance;
	}
	
	// 글쓰기 메소드
	public int write(AnnouncementVO annVO) {

		String sql = "{ call sp_insert_Announcement(?, ?, ?, ?, ?) }";
		
		Connection conn = null;

		try {
			conn = DBConnection.getConnection();
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
		return -1; //에러 발생 시
	}
	
	// 게시글 수정 메소드
	public int update(AnnouncementVO annVO) {
		String sql = " { call sp_update_Announcement(?, ?, ?, ?, ?) }";
		
		Connection conn = null;
		
		try {
			conn = DBConnection.getConnection();
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
		return -1; // 데이터베이스 오류
	}
	
	// 게시글 삭제 메소드
	public int delete(int annID) {
		String sql = " { call sp_delete_Announcement(?) }";
		
		Connection conn = null;
		
		try {
			conn = DBConnection.getConnection();
			CallableStatement callableStatement = conn.prepareCall(sql);
			callableStatement.setInt(1, annID);
			callableStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	// 게시글 전체 검색 메소드
	public ArrayList<AnnouncementVO> get_ALL_List(String search_ALL) {
		String runSP = "{ call sp_search_ALL_Announcement(?,?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<AnnouncementVO> lists = new ArrayList<>();
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
				AnnouncementVO vo = new AnnouncementVO();
				vo.setId(rs.getInt("board_id"));
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
	// 게시글 본문 검색 메소드
	public ArrayList<AnnouncementVO> get_Main_text_List(String search_Main_text) {
		String runSP = "{ call sp_search_Main_text_Announcement(?,?) }";
		// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
		ArrayList<AnnouncementVO> lists = new ArrayList<>();
		Connection conn = null;
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
				AnnouncementVO vo = new AnnouncementVO();
				vo.setId(rs.getInt("board_id"));
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
	
	// 게시글 제목 검색 메소드
		public ArrayList<AnnouncementVO> get_title_List(String search_title) {
			String runSP = "{ call sp_search_title_Announcement(?,?) }";
			// 물음표 변수의 순서는 out, in. 이 순서를 바꾸려면 프로시저의 변수 순서를 바꿔주면 된다
			ArrayList<AnnouncementVO> lists = new ArrayList<>();
			Connection conn = null;
			try {
				conn = DBConnection.getConnection();
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
					AnnouncementVO vo = new AnnouncementVO();
					vo.setId(rs.getInt("board_id"));
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
		
		// 전체 list 검색
		public ArrayList<AnnouncementVO> getList() {
			String runSP = "{ call sp_select_list_all_announcement(?) }";
			// 전체데이터를 select한 결과 presult가 들어가므로 ?가 1개. presult는 오라클에서 커서에 해당.
			ArrayList<AnnouncementVO> lists = new ArrayList<>();
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
				conn = DBConnection.getConnection();
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
//					return vo;
				}
				rs.close();
				callableStatement.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return vo;
		}
		
		public int totalRecord(String ann_name) {
			int totalRecord = 0;
			String sql = "select count(*) from announcement where title like '%'||?||'%'";
			
		    Connection con = null;
		    PreparedStatement pstmt = null;
		    ResultSet pageset = null;
		    
		    try {
		    	con = DBConnection.getConnection();
		    	pstmt = con.prepareStatement(sql);
		    	
		    	if (ann_name.equals("")) {
		    		pstmt.setString(1, "%");
		    	} else {
		    		pstmt.setString(1, ann_name);
		    	}
		    	pageset = pstmt.executeQuery();
		    	
		    	if (pageset.next()) {
		    		totalRecord = pageset.getInt(1);
		    		pageset.close();
		    	}
		    } catch (Exception e) {
		    	e.printStackTrace();
		    }
		    return totalRecord;
		}
		
		static int view_rows = 5; // 페이지의 개수
		static int counts = 5; // 한 페이지에 나타낼 상품의 개수
		
		// 페이지 이동을 위한 메소드
		public String pageNumber(int tpage, String title) {
			
			String str = "";
			
			int totalRecord = totalRecord(title);
			
			int page_count = totalRecord / counts + 1;
			
			if (totalRecord % counts == 0) {
				page_count--;
			}
			
			
			if (tpage < 1) {
				tpage = 1;
			}
			
			int start_page = tpage - (tpage % view_rows) + 1;
			int end_page = start_page + (counts -1);
			
			if (end_page > page_count) {
				end_page = page_count;
			}
			if (start_page > view_rows) {
				str += "<a href='HdgfServlet?command=notice&tpage=1'>&lt;&lt</a>&nbsp;&nbsp;";
				str += "<a href='HdgfServlet?command=notice&tpage=" + (start_page - 1);
				str += "'>&lt;</a>&nbsp;";
			}
			for (int i = start_page; i <= end_page; i++) {
				if (i == tpage) {
					str += "<font color=#0a9882>[" + i + "]&nbsp;&nbsp;</font>";
				} else {
					str += "<a href='HdgfServlet?command=notice&tpage=" + i + "'>[" + i + "]</a>&nbsp;&nbsp;";
				}
			}
			if (page_count > end_page) {
				str += "<a href='HdgfServlet?command=notice&tpage=" + (end_page + 1) + "'> &gt; </a>&nbsp;nbsp;";
				str += "<a href='HdgfServlet?command=notice&tpage=" + page_count + "'> &gt; &gt; </a>&nbsp;&nbsp;";
			}
			return str;
		}
		
		public ArrayList<AnnouncementVO> getListByPaging(int tpage, String ann_name) {
			ArrayList<AnnouncementVO> annList = new ArrayList<AnnouncementVO>();
			
			String str = "select board_id, title, user_id, wrdate, visiter, announ_type " +
					"from announcement where title like '%'||?||'%' order by board_id desc";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			int absolutepage = 1;
			
			try {
				conn = DBConnection.getConnection();
				absolutepage = (tpage - 1) * counts + 1;
				pstmt = conn.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
				
				if (ann_name.equals("")) {
					pstmt.setString(1, "%");
				} else {
					pstmt.setString(1, ann_name);
				}
				
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					rs.absolute(absolutepage);
					int count = 0;
					
					while (count < counts) {
						AnnouncementVO annVO = new AnnouncementVO();
						annVO.setId(rs.getInt("board_id"));
						annVO.setTitle(rs.getString("title"));
						annVO.setU_id(rs.getString("user_id"));
						annVO.setWrdate(rs.getDate("wrdate"));
						annVO.setVisiter(rs.getInt("visiter"));
						annVO.setAnnoun_type(rs.getInt("announ_type"));
						annList.add(annVO);
						
						if (rs.isLast()) {
							break;
						}
						rs.next();
						count++;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return annList;
		}
}
