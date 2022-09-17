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

public class IRWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=IR_Center_List";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		IR_Center_DAO IR_DAO = IR_Center_DAO.getInstance();

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			IR_Center_VO IR_VO = new IR_Center_VO();
			IR_VO.setTitle(request.getParameter("title"));
			IR_VO.setUser_id(loginUser.getUser_id());
			IR_VO.setMain_text(request.getParameter("main_text"));
			IR_VO.setfile_id(0);
			IR_DAO.write(IR_VO);
		}

		response.sendRedirect(url);
	}
}
