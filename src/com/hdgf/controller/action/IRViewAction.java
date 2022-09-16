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
		String url = "ESG_Management/IR_Center_View.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		
		IR_Center_VO edit_IRVO = (IR_Center_VO) request.getAttribute("IRVO");
		IR_Center_DAO IRDAO = IR_Center_DAO.getInstance();
		
		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";	
		} else if (edit_IRVO != null) {
			request.setAttribute("IRVO", edit_IRVO);
		} else {
			int IRId = Integer.parseInt(request.getParameter("IR_ID"));
			IR_Center_VO IRVO = IRDAO.getIR(IRId);
			request.setAttribute("IRVO", IRVO);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}