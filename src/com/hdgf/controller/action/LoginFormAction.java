// 작성자 : 김민찬
package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//로그페이지로 연결
public class LoginFormAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {    
    String url = "/login/login.jsp";
     
    RequestDispatcher dispatcher=request.getRequestDispatcher(url);
    dispatcher.forward(request, response);    
  }
}
