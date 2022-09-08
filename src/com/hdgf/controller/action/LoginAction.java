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
    String url="login.jsp"; // 로그인 실패 화면 띄워야한다
    HttpSession session=request.getSession();
  
    String id=request.getParameter("id");
    String pwd=request.getParameter("pwd");
    
    UsersDAO usersDAO=UsersDAO.getInstance();
      
    UsersVO usersVO=usersDAO.getUsers(id);
    
    if(usersVO!=null){
      if(usersVO.getUser_pw().equals(pwd)){    
        session.removeAttribute("id");
        session.setAttribute("loginUser", usersVO);
        url="HdgfServlet?command=index";
      }
    }
    
    request.getRequestDispatcher(url).forward(request, response);  
  }
}
