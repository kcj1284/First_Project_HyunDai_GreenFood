package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.IR_Center_DAO;

/**
 * IRDeleteAction
 * @author 김찬중
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16     김찬중              최초 생성
 * 2022.09.18	  김찬중			    IR 자료실 오류 수정
 * </pre>
 */

public class IRDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=IR_Center_List";
		
		int id = Integer.parseInt(request.getParameter("id"));
		IR_Center_DAO IRDAO = IR_Center_DAO.getInstance();
		IRDAO.delete(id);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
