// 작성자 : 김민찬
package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// 로그아웃 페이지로 연결 - 세션제거
public class LogoutAction implements Action {

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
