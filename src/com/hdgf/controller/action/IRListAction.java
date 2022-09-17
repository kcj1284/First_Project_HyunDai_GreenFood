package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.IR_Center_DAO;
import com.hdgf.dto.IR_Center_VO;

public class IRListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "Invest_Info/IR_Center_List.jsp";
		
		IR_Center_DAO IR_DAO = IR_Center_DAO.getInstance();

		String oldest = request.getParameter("oldest");
		String views = request.getParameter("views");
		String searchKey = request.getParameter("searchKey");
		String searchWord = request.getParameter("searchWord");

		if (oldest != null) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.getListByWrdate();
				request.setAttribute("IR_List", IR_List);
			} else if (views != null) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.getListByViews();
				request.setAttribute("IR_List", IR_List);
			} else if (searchWord != null && searchKey.equals("subject")) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.get_title_List(searchWord);
				request.setAttribute("IR_List", IR_List);
				request.setAttribute("keyword", searchWord);
				System.out.println(searchKey);
			} else if (searchWord != null && searchKey.equals("content")) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.get_Main_text_List(searchWord);
				request.setAttribute("IR_List", IR_List);
				request.setAttribute("keyword", searchWord);
				System.out.println(searchKey);
			} else {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.getList();
				request.setAttribute("IR_List", IR_List);
			}
		request.getRequestDispatcher(url).forward(request, response);

	}
}
