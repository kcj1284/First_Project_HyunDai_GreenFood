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
		String url = "HdgfServlet?command=IR_Center_View";

		int IR_Id = Integer.parseInt(request.getParameter("id"));

		IR_Center_DAO IR_DAO = IR_Center_DAO.getInstance();
		IR_Center_VO IR_VO = IR_DAO.getIR(IR_Id);
		IR_VO.setTitle(request.getParameter("subject"));
		IR_VO.setMain_text(request.getParameter("content"));

		IR_DAO.update(IR_VO);
		request.setAttribute("IR_VO", IR_VO);

		request.getRequestDispatcher(url).forward(request, response);
	}

}
