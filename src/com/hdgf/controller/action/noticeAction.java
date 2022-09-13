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

public class noticeAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/notice.jsp";
		
		HttpSession session = request.getSession();
		
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		ArrayList<AnnouncementVO> annList = annDAO.getList();
		request.setAttribute("annList", annList);
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}
