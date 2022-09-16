package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.IR_Center_DAO;
import com.hdgf.dto.IR_Center_VO;

public class IRUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=IRView";

		int IR_Id = Integer.parseInt(request.getParameter("IR_Id"));

		IR_Center_DAO IRDAO = IR_Center_DAO.getInstance();
		IR_Center_VO IRVO = IRDAO.getIR(IR_Id);
		IRVO.setTitle(request.getParameter("subject"));
		IRVO.setMain_text(request.getParameter("content"));

		IRDAO.update(IRVO);
		request.setAttribute("IRVO", IRVO);

		request.getRequestDispatcher(url).forward(request, response);
	}

}
