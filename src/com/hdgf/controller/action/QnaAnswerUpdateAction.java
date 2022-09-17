package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;

public class QnaAnswerUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=qnaView";
		
		int qnaId = Integer.parseInt(request.getParameter("QNA_id"));
		
		QnaDAO qnaDAO = QnaDAO.getInstance();
		QnaVO qnaVO = qnaDAO.getQna(qnaId);
		qnaVO.setAnswer(request.getParameter("answer"));

		
		qnaDAO.updateAnswer(qnaVO);
		request.setAttribute("qnaVO", qnaVO);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
