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

public class IRListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "QnA/QnA_List.jsp";

		String key = request.getParameter("key");
		String tpage = request.getParameter("tpage");

		if (key == null) {
			key = "";
		}
		if (tpage == null) {
			tpage = "1"; // 현재 페이지 (default 1)
		} else if (tpage.equals("")) {
			tpage = "1";
		}
		request.setAttribute("key", key);
		request.setAttribute("tpage", tpage);
		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			QnaDAO qnaDAO = QnaDAO.getInstance();
			ArrayList<QnaVO> qnaList = qnaDAO.listQna(Integer.parseInt(tpage), key);
			String paging = qnaDAO.pageNumber(Integer.parseInt(tpage), key);
		     
			request.setAttribute("qnaList", qnaList);
			int n=qnaList.size();   
		    request.setAttribute("qnaListSize",n); 
		    request.setAttribute("paging", paging);    
		    
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
