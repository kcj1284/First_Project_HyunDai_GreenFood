package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.UsersDAO;
import com.hdgf.dto.UsersVO;

public class signUpAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "/login/login.jsp";

		HttpSession session = request.getSession();

		UsersVO usersVO = new UsersVO();

		usersVO.setUser_id(request.getParameter("user_id"));
		usersVO.setUser_pw(request.getParameter("user_pw"));
		usersVO.setUser_name(request.getParameter("user_name"));
		usersVO.setTel(request.getParameter("tel"));
		usersVO.setEmail(request.getParameter("email"));
		usersVO.setGender(Integer.parseInt(request.getParameter("gender")));
		usersVO.setAdministrator(0);
		usersVO.setCom_type(Integer.parseInt(request.getParameter("com_type")));
//	    usersVO.setCom_type(1);

		session.setAttribute("user_id", request.getParameter("user_id"));

		UsersDAO userDAO = UsersDAO.getInstance();
		userDAO.insertUsers(usersVO);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
