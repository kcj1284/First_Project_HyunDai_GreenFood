package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dto.AnnouncementVO;

public class annUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=annView";
		
		int annId = Integer.parseInt(request.getParameter("annId"));
		
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		AnnouncementVO annVO = annDAO.getAnn(annId);
		annVO.setTitle(request.getParameter("subject"));
		annVO.setMain_text(request.getParameter("content"));
		
		annDAO.update(annVO);
		request.setAttribute("annVO", annVO);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
