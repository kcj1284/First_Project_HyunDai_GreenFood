package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class QnaViewAction implements Action {
	
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_View.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
	    
	    QnaVO edit_qnaVO = (QnaVO) request.getAttribute("qnaVO");
	    QnaDAO qnaDAO = QnaDAO.getInstance();
	    
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } else if (edit_qnaVO != null) {
			request.setAttribute("qnaVO", edit_qnaVO);
		} else {
	      int QNA_id = Integer.parseInt(request.getParameter("QNA_id"));
	      QnaVO qnaVO = qnaDAO.getQna(QNA_id);
	      request.setAttribute("qnaVO", qnaVO);
	    }
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
