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
		String url = "ESG_Management/IR_Center_Update.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			int IRId = Integer.parseInt(request.getParameter("IR_ID"));
			IR_Center_DAO IRDAO = IR_Center_DAO.getInstance();
			IR_Center_VO IRVO = IRDAO.getIR(IRId);
			request.setAttribute("IRVO", IRVO);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
