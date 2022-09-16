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

public class noticeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/ann_List.jsp";
		
		String key = request.getParameter("key");
		String tpage = request.getParameter("tpage");
		
		if (key == null) {
			key = "";
		} 
		if (tpage == null) {
			tpage = "1";
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
			AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
			ArrayList<AnnouncementVO> annList = annDAO.getListByPaging(Integer.parseInt(tpage), key);
			String paging = annDAO.pageNumber(Integer.parseInt(tpage), key);
			
			request.setAttribute("annList", annList);
			int n = annList.size();
			request.setAttribute("annListSize", n);
			request.setAttribute("paging", paging);
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}
