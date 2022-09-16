package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.IR_Center_DAO;
import com.hdgf.dto.IR_Center_VO;

public class IRListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "ESG_Management/IR_Center_List.jsp";
		
		HttpSession session = request.getSession();
		
		IR_Center_DAO IRDAO = IR_Center_DAO.getInstance();
		ArrayList<IR_Center_VO> IR_Center_List = IRDAO.getList();
		request.setAttribute("IR_Center_List", IR_Center_List);
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}
