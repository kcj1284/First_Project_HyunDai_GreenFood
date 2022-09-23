package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * LoginFormAction
 * @author 김민찬
 * @since 2022.09.08
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.08     김민찬              최초 생성
 * </pre>
 */

public class LoginFormAction implements Action {

	//로그페이지로 연결
  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {    
    String url = "/login/login.jsp";
     
    RequestDispatcher dispatcher=request.getRequestDispatcher(url);
    dispatcher.forward(request, response);    
  }
}
