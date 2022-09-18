package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dao.FileDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.FileVO;
import com.hdgf.dto.UsersVO;

public class annUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/ann_Update.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			int annId = Integer.parseInt(request.getParameter("id"));
			AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
			AnnouncementVO annVO = annDAO.getAnn(annId);
			request.setAttribute("annVO", annVO);
			
			FileDAO fileDAO = FileDAO.getInstance();
			FileVO fileVO = fileDAO.getFile(annVO.getfile_id());
			request.setAttribute("fileVO", fileVO);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
