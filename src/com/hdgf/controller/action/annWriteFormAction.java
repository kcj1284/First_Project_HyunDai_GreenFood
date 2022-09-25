package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dto.UsersVO;

/**
 * annWriteFormAction
 * @author 장주연
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.15    장주연              최초 생성
 * </pre>
 */

public class annWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/ann_Write.jsp";
		
		HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    //비 로그인시 로그인폼으로 이동
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } 
	    
	    request.getRequestDispatcher(url).forward(request, response);
	}
}
