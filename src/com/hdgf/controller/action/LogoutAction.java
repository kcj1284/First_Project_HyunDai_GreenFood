package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * LogoutAction
 * @author 김민찬
 * @since 2022.09.13
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.13     김민찬              최초 생성
 * </pre>
 */



public class LogoutAction implements Action {
	
	// 로그아웃 페이지로 연결 - 세션제거
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String url="HdgfServlet?command=Index";
	    
	    HttpSession session=request.getSession(false);
	    if(session!=null){
	      session.invalidate();
	    }    
	    
	    request.getRequestDispatcher(url).forward(request, response);  
	  }
}
