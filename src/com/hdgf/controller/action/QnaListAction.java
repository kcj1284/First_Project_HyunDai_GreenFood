package com.hdgf.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class QnaListAction implements Action {
	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_List.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    if (loginUser == null) {
	        url = "HdgfServlet?command=loginForm";
	    } else {
	      QnaDAO qnaDAO = QnaDAO.getInstance();      
	      ArrayList<QnaVO> qnaList = qnaDAO.listQna();
	      request.setAttribute("qnaList", qnaList);
	    }
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
