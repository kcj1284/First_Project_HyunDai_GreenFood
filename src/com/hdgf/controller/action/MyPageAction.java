package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * MyPageAction
 * @author 김민찬
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.15     김민찬              최초 생성
 * </pre>
 */


public class MyPageAction implements Action {

	// 마이페이지로 이동
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "login/MyPage.jsp";
	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	}

}
