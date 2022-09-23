package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dto.UsersVO;

/**
 * IRWriteFormAction
 * @author 김찬중
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16     김찬중              최초 생성
 * </pre>
 */

public class IRWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "Invest_Info/IR_Center_Write.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}