package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.MemberDAO;
import com.hdgf.dto.MemberVO;


public class signUpAction implements Action {
	
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException, SQLException {
	    String url = "login.jsp"; 
	    
	    HttpSession session = request.getSession();
	    
	    MemberVO memberVO = new MemberVO();
	    

	    memberVO.setUser_id(request.getParameter("user_id"));
	    memberVO.setUser_pw(request.getParameter("user_pw"));
	    memberVO.setUser_name(request.getParameter("user_name"));
	    memberVO.setTel(request.getParameter("tel"));
	    memberVO.setEmail(request.getParameter("email"));
	    memberVO.setGender(Integer.parseInt(request.getParameter("gender")));
	    memberVO.setAdministrator(0);
	    memberVO.setCom_type(Integer.parseInt(request.getParameter("com_type")));    
	      
	    session.setAttribute("user_id", request.getParameter("user_id"));    
	    
	    MemberDAO memberDAO = MemberDAO.getInstance();
	    memberDAO.insertMember(memberVO);

	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	  }
	

}



