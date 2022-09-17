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

public class IRUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "Invest_Info/IR_Center_Update.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			int IR_Id = Integer.parseInt(request.getParameter("IR_Id"));
			IR_Center_DAO IR_DAO = IR_Center_DAO.getInstance();
			IR_Center_VO IR_VO = IR_DAO.getIR(IR_Id);
			request.setAttribute("IR_VO", IR_VO);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
