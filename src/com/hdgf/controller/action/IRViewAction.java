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

public class IRViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "Invest_Info/IR_Center_View.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		
		IR_Center_VO edit_IR_VO = (IR_Center_VO) request.getAttribute("IR_VO");
		IR_Center_DAO IR_DAO = IR_Center_DAO.getInstance();
		
		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";	
		} else if (edit_IR_VO != null) {
			request.setAttribute("IR_VO", edit_IR_VO);
		} else {
			int id = Integer.parseInt(request.getParameter("id"));
			IR_Center_VO IR_VO = IR_DAO.getIR(id);
			request.setAttribute("IR_VO", IR_VO);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}