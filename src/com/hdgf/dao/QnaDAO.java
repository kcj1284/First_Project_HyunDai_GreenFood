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
	public void update(QnaVO qnaVO) {
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
	
	// 게시글 삭제 메소드
	public int delete(int annID) {
		String sql = " { call sp_delete_QnA(?) }";
		
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
	
	
	
	  public int totalRecord(String qna_name) {
		    int total_pages = 0;    
		    String sql = "select count(*) from qna where title like '%'||?||'%'";
		
		    Connection con = null;
		    PreparedStatement pstmt = null;
		    ResultSet pageset = null;
		    
		    try {
		      con = DBConnection.getConnection();
		      pstmt = con.prepareStatement(sql);
		
		      if (qna_name.equals("")){
		        pstmt.setString(1, "%");
		      }
		      else{
		        pstmt.setString(1, qna_name);
		      }
		      pageset = pstmt.executeQuery();
		
		      if (pageset.next()) {
		        total_pages = pageset.getInt(1); // 레코드의 개수
		        pageset.close();
		      }
		    } catch (Exception e) {
		      e.printStackTrace();
		    } 
		    return total_pages;
		  }
		
	
	
	
	
	  static int view_rows = 5; // 페이지의 개수
	  static int counts = 5; // 한 페이지에 나타낼 상품의 개수

	  // 페이지 이동을 위한 메소드
	  public String pageNumber(int tpage, String title) {
	
	    String str = "";
	    
	    int total_pages = totalRecord(title);     
	    int page_count = total_pages / counts + 1;

	    if (total_pages % counts == 0) {
	      page_count--;
	    }
	    if (tpage < 1) {
	      tpage = 1;
	    }

	    int start_page = tpage - (tpage % view_rows) + 1;  
	    int end_page = start_page + (counts-1); 

	    if (end_page > page_count) {
	      end_page = page_count; 
	    }
	    if (start_page > view_rows) {
	      str += "<a href='HdgfServlet?command=qnaList&tpage=1'>&lt;&lt;</a>&nbsp;&nbsp;";
	      str+="<a href='HdgfServlet?command=qnaList&tpage=" 
	         + (start_page - 1);
	      str += "'>&lt;</a>&nbsp;&nbsp;";
	    }
	    
	    for (int i = start_page; i <= end_page; i++) {
	      if (i == tpage) {
	        str += "<font color=#0a9882>[" + i + "]&nbsp;&nbsp;</font>";
	      } else {
	        str += "<a href='HdgfServlet?command=qnaList&tpage=" 
	           + i + "'>[" + i + "]</a>&nbsp;&nbsp;";
	      }
	    }

	    if (page_count > end_page) {
	      str += "<a href='HdgfServlet?command=qnaList&tpage="
	          + (end_page + 1) + "'> &gt; </a>&nbsp;&nbsp;";
	      str += "<a href='HdgfServlet?command=qnaList&tpage="
	          + page_count + "'> &gt; &gt; </a>&nbsp;&nbsp;";
	    }
	    return str;
	  }

	  
	public ArrayList<QnaVO> listQna(int tpage, String qna_name) {
	ArrayList<QnaVO> lists = new ArrayList<QnaVO>();

	String str = "select qna_id, title, user_id, wrdate, qna_type " +
	    " from qna where title like '%'||?||'%' order by qna_id desc ";

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	int absolutepage = 1;

	try {
	  con = DBConnection.getConnection();
	  absolutepage = (tpage - 1) * counts + 1; 
	  pstmt = con.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE,
	      ResultSet.CONCUR_UPDATABLE);
	 
	  if (qna_name.equals("")){
	    pstmt.setString(1, "%");
	  } else{
	    pstmt.setString(1, qna_name);
	  }
	  
	  rs = pstmt.executeQuery();
	  
	  if (rs.next()) {
	    rs.absolute(absolutepage);
	    int count = 0;

	    while (count < counts) {
	    	QnaVO vo = new QnaVO();
			vo.setQNA_id(rs.getInt("QNA_id"));
			vo.setTitle(rs.getString("title"));
			vo.setUser_id(rs.getString("user_id"));
			vo.setWrdate(rs.getDate("wrdate"));
			vo.setQNA_type(rs.getInt("QNA_type"));
			// vo를 리스트에 추가
			lists.add(vo);
	      if (rs.isLast()){
	        break;
	      }         
	      rs.next();
	      count++; 
	    }
	  }
	} catch (Exception e) {
	  e.printStackTrace();
	} 
	return lists;
	}
	
}

