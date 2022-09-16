package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.IR_Center_DAO;
import com.hdgf.dto.IR_Center_VO;
import com.hdgf.dto.UsersVO;

public class IRWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=notice";
		
		HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    IR_Center_DAO IRDAO = IR_Center_DAO.getInstance();
	    
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } else{      
	    	IR_Center_VO IRVO = new IR_Center_VO();
		      IRVO.setTitle(request.getParameter("title"));
		      IRVO.setUser_id(loginUser.getUser_id());
		      IRVO.setMain_text(request.getParameter("main_text"));      
		      IRVO.setfile_id(0);
		      IRDAO.write(IRVO);      
		}    
	    
	    response.sendRedirect(url);
	}
}
