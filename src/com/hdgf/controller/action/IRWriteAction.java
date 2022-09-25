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
 * IRWriteAction
 * @author 김찬중
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16     김찬중              최초 생성
 * 2022.09.18	  김찬중	    		차트 css 수정
 * </pre>
 */

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
			IR_VO.setTitle(request.getParameter("title")); // 게시글 제목
			IR_VO.setUser_id(loginUser.getUser_id()); // 게시글 작성자
			IR_VO.setMain_text(request.getParameter("main_text")); // 게시글 내용
			IR_VO.setFile_id(0);
			IR_DAO.write(IR_VO); // 게시글 작성 메소드 호출
		}

		response.sendRedirect(url);
	}
}
