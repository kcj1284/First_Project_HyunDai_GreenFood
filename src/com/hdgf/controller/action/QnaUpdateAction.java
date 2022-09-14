package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class QnaUpdateAction implements Action{


	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "HdgfServlet?command=qnaList";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    }else{      
	      QnaVO qnaVO = new QnaVO();
	      qnaVO.setTitle(request.getParameter("title"));
	      qnaVO.setMain_text(request.getParameter("main_text"));      
	      qnaVO.setQNA_type(1);
	      QnaDAO qnaDAO = QnaDAO.getInstance();
	      qnaDAO.updateQna(qnaVO, loginUser.getUser_id());      
	    }    
	    response.sendRedirect(url);
	  }
}
