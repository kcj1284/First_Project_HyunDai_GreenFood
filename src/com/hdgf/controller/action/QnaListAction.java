package com.hdgf.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;
/**
 * QnaListAction
 * @author 정구현
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.14     정구현      최초 생성
 * 2022.09.14     정구현      Qna 목록 화면 연결
 * 2022.09.15     정구현      Qna 목록 페이징 연결
 * </pre>
 */
public class QnaListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "QnA/QnA_List.jsp";

		String key = request.getParameter("key");
		String tpage = request.getParameter("tpage");

		if (key == null) { //검색 값이 없을 때
			key = "";
		}
		if (tpage == null) { //현재페이지 값이 비어있을때
			tpage = "1"; // 현재 페이지 (default 1)
		} else if (tpage.equals("")) {
			tpage = "1";
		}
		request.setAttribute("key", key);
		request.setAttribute("tpage", tpage);
		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		
		//비 로그인 상태일시 로그인 폼으로 이동
		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			QnaDAO qnaDAO = QnaDAO.getInstance();
			ArrayList<QnaVO> qnaList = qnaDAO.listQna(Integer.parseInt(tpage), key); //목록 메서드 호출
			String paging = qnaDAO.pageNumber(Integer.parseInt(tpage), key); //페이징 메서드 호출
		     
			request.setAttribute("qnaList", qnaList);
			int n=qnaList.size();   
		    request.setAttribute("qnaListSize",n); 
		    request.setAttribute("paging", paging);    
		    
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
