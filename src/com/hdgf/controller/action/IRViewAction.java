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

/**
 * IRViewAction
 * @author 김찬중
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16     김찬중              최초 생성
 * </pre>
 */

public class IRViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "Invest_Info/IR_Center_View.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		
		IR_Center_VO edit_IR_VO = (IR_Center_VO) request.getAttribute("IR_VO"); // 수정 후 넘어온 경우, 수정된 IR_VO값 바로 받기
		IR_Center_DAO IR_DAO = IR_Center_DAO.getInstance();
		
		if (loginUser == null) { 
			url = "HdgfServlet?command=loginForm";	
		} else if (edit_IR_VO != null) { // 수정 후 바로 IRViewAction으로 넘어온 경우
			request.setAttribute("IR_VO", edit_IR_VO);
		} else { // 공지소식 리스트에서 하나의 게시글을 클릭해 넘어온 경우
			int id = Integer.parseInt(request.getParameter("id"));
			IR_Center_VO IR_VO = IR_DAO.getIR(id); // id에 해당하는 글 가져오기
			request.setAttribute("IR_VO", IR_VO);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}