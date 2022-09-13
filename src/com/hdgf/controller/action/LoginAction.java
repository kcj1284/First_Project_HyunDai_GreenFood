package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.UsersDAO;
import com.hdgf.dto.UsersVO;

public class LoginAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException, SQLException {
    String url="login/login.jsp"; // 로그인 실패 화면 띄워야한다 
    HttpSession session=request.getSession();
  
    String user_id=request.getParameter("user_id");
    String user_pw=request.getParameter("user_pw");
    
    UsersDAO usersDAO=UsersDAO.getInstance();
      
    UsersVO usersVO=usersDAO.getUsers(user_id);
    
    if(usersVO!=null){
      if(usersVO.getUser_pw().equals(user_pw)){    
        session.removeAttribute("user_id");
        session.setAttribute("loginUser", usersVO);
        url="HdgfServlet?command=Index";
      }
    }
    
    request.getRequestDispatcher(url).forward(request, response);  
  }
}
