// 작성자 : 김민찬
package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.UsersDAO;


public class WithdrawalAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// TODO Auto-generated method stub
		String url = "HdgfServlet?command=Index";
		
		//프론트에서 유저아이디 받아오기
		//getPararmeter("user_id")
		String userid = request.getParameter("user_id");
		System.out.println(userid + "이 아이디입니다");
		UsersDAO userDAO = UsersDAO.getInstance();
		userDAO.deleteUsers(userid);
		//유저아이디 deleteUser(유저아이디)
		//세션끊기
		 HttpSession session=request.getSession(false);
		    if(session!=null){
		      session.invalidate();
		    }    
		
		
	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	}

}