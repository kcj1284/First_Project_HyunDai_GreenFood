package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dto.UsersVO;

public class QnaUpdateFormAction implements Action {
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_Update.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } 
	    
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
