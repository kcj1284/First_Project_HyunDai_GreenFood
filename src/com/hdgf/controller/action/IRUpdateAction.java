package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class IRUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=qnaView";

		int qnaId = Integer.parseInt(request.getParameter("QNA_id"));

		QnaDAO qnaDAO = QnaDAO.getInstance();
		QnaVO qnaVO = qnaDAO.getQna(qnaId);
		qnaVO.setTitle(request.getParameter("subject"));
		qnaVO.setMain_text(request.getParameter("content"));

		qnaDAO.update(qnaVO);
		request.setAttribute("qnaVO", qnaVO);

		request.getRequestDispatcher(url).forward(request, response);
	}
}
