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

public class annViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/ann_View.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		AnnouncementVO edit_annVO = (AnnouncementVO) request.getAttribute("annVO");
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else if (edit_annVO != null) {
			request.setAttribute("annVO", edit_annVO);
		} else {
			int annId = Integer.parseInt(request.getParameter("id"));
			AnnouncementVO annVO = annDAO.getAnn(annId);

			int fileId = annVO.getfile_id(); // 추가된 코드
			FileVO fileVO = FileDAO.getInstance().getFile(fileId); // 추가된 코드
			request.setAttribute("annVO", annVO);
			if (fileVO.getId() != 0) {
				request.setAttribute("fileVO", fileVO); // 추가된 코드

				String directory = request.getServletContext().getRealPath("/upload/");
				String filePath = directory + fileVO.getFileRealName();
				request.setAttribute("filePath", filePath);
			}
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
