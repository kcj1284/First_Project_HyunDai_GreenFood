package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.UsersDAO;
import com.hdgf.dto.UsersVO;
import com.hdgf.util.CookieManager;

/**
 * LoginAction
 * @author 김민찬
 * @since 2022.09.08
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.08     김민찬              최초 생성
 * 2022.09.13     김민찬              로그인 실패 화면 연결
 * 2022.09.13     김민찬              쿠키기능 추가
 * </pre>
 */

public class LoginAction implements Action {

 @Override
 public void execute(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException, SQLException {
   String url="login/login_fail.jsp"; // 로그인 실패시
   HttpSession session=request.getSession();

   String user_id=request.getParameter("j_username");
   String user_pw=request.getParameter("j_password");
   System.out.println(user_id + "\n" + user_pw + "\n" );
   UsersDAO usersDAO=UsersDAO.getInstance();
    
   UsersVO usersVO=usersDAO.getUsers(user_id);

   // 로그인 성공시
   if(usersVO!=null){
     if(usersVO.getUser_pw().equals(user_pw)){

       //세션설정
       session.removeAttribute("user_id");
       session.setAttribute("loginUser", usersVO);

       //쿠키설정
       if(request.getParameter("save_check")!=null && request.getParameter("save_check").equals("Y")){
         CookieManager.makeCookie(response, "loginId", user_id, 86400);
       } else{
         CookieManager.deleteCookie(response, "loginId");
       }

       url="HdgfServlet?command=Index";
     }
   }
  
   request.getRequestDispatcher(url).forward(request, response); 
 }
}


