package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.UsersVO;

/**
 * noticeAction
 * @author 장주연
 * @since 2022.09.13
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ----------------------------------
 * 2022.09.13     장주연              최초 생성
 * 2022.09.16	  장주연	    		정렬 기능 추가 (최신순, 오래된 순, 조회순)
 * 2022.09.17	  장주연				카테고리별 검색 기능 추가
 * </pre>
 */

public class noticeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/ann_List.jsp";

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();

		String oldest = request.getParameter("oldest"); //오래된 순 정렬이 선택된 값
		String views = request.getParameter("views"); //조회순 정렬이 선택된 값
		
		String searchKey = request.getParameter("searchKey"); //제목이나 본문이 선택된 값
		String searchWord = request.getParameter("searchWord"); //검색창 키워드 값

		if (oldest != null) {
			ArrayList<AnnouncementVO> annList = annDAO.getListByWrdate(); //오래된 순 정렬 
			request.setAttribute("annList", annList);
		} else if (views != null) {
			ArrayList<AnnouncementVO> annList = annDAO.getListByViews(); // 조회순 정렬
			request.setAttribute("annList", annList);
		} else if (searchWord != null && searchKey.equals("subject")) {
			ArrayList<AnnouncementVO> annList = annDAO.get_title_List(searchWord); //키워드로 제목 검색
			request.setAttribute("annList", annList);
			request.setAttribute("keyword", searchWord);
		} else if (searchWord != null && searchKey.equals("content")) {
			ArrayList<AnnouncementVO> annList = annDAO.get_Main_text_List(searchWord); //키워드로 내용 검색 
			request.setAttribute("annList", annList);
			request.setAttribute("keyword", searchWord);
		} else {
			ArrayList<AnnouncementVO> annList = annDAO.getList(); //공지소식 리스트 가져오기
			request.setAttribute("annList", annList);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
