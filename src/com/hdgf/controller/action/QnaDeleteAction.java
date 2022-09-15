package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class QnaDeleteAction implements Action{
	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "HdgfServlet?command=qnaList";
	    
	    int qnaId = Integer.parseInt(request.getParameter("QNA_id"));
	    QnaDAO qnaDAO = QnaDAO.getInstance();
	    qnaDAO.delete(qnaId);
	    
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}