package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.AnnouncementDAO;

public class annDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=notice";
		
		int annId = Integer.parseInt(request.getParameter("id"));
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		annDAO.delete(annId);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
