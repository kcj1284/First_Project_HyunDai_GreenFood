package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class IRUpdateFormAction implements Action {
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_Update.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } else {
	    	int qnaId = Integer.parseInt(request.getParameter("QNA_id"));
	    	QnaDAO qnaDAO = QnaDAO.getInstance();
	    	QnaVO qnaVO = qnaDAO.getQna(qnaId);
	    	request.setAttribute("qnaVO", qnaVO);
	    }
	    
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
