package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dto.UsersVO;

public class IRWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "Invest_Info/IR_Center_Write.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}