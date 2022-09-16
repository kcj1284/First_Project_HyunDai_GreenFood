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

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();

//		String latest = request.getParameter("latest");
		String oldest = request.getParameter("oldest");
		String views = request.getParameter("views");

		if (oldest != null) {
			ArrayList<AnnouncementVO> annList = annDAO.getListByWrdate();
			request.setAttribute("annList", annList);
		} else if (views != null) {
			ArrayList<AnnouncementVO> annList = annDAO.getListByViews();
			request.setAttribute("annList", annList);
		} else {
			ArrayList<AnnouncementVO> annList = annDAO.getList();
			request.setAttribute("annList", annList);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
