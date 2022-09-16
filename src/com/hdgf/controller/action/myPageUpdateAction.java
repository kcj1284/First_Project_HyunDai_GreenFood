package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.UsersDAO;
import com.hdgf.dto.UsersVO;

public class myPageUpdateAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=mypage";
		
		HttpSession session = request.getSession();
	    UsersVO usersVO = (UsersVO) session.getAttribute("loginUser"); 
	    

		usersVO.setUser_id(request.getParameter("user_id"));
		usersVO.setUser_pw(request.getParameter("user_pw"));
		usersVO.setUser_name(request.getParameter("user_name"));
		usersVO.setTel(request.getParameter("tel"));
		usersVO.setEmail(request.getParameter("email"));
		usersVO.setGender(Integer.parseInt(request.getParameter("gender")));
		usersVO.setCom_type(Integer.parseInt(request.getParameter("com_type")));

//		session.setAttribute("user_id", request.getParameter("user_id"));
		UsersVO usersVO2 = (UsersVO) session.getAttribute("loginUser");
		System.out.println(usersVO2.getUser_id());
		System.out.println(usersVO2.getUser_name());
		System.out.println(usersVO2.getTel());
		
		
		
		UsersDAO userDAO = UsersDAO.getInstance();
		userDAO.updateUsers(usersVO);
		
		UsersVO usersVO3 = (UsersVO) session.getAttribute("loginUser");
		System.out.println(usersVO3.getUser_id());
		System.out.println(usersVO3.getUser_name());
		System.out.println(usersVO3.getTel());
		

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
