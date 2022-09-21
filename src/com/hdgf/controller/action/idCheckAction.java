// 작성자 : 김민찬
package com.hdgf.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.UsersDAO;

public class idCheckAction implements Action  {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
		System.out.println("실행확인");
		String userId = request.getParameter("user_id");
		System.out.println(userId);
		// join.jsp에서 받아온 key값이 userId이고
		// value값은 유저가 실제로 적은 값, String userId에는 value값이 들어간다.
		PrintWriter out = response.getWriter();
	
		UsersDAO user = new UsersDAO();
	
		int idCheck = user.checkId(userId);
		System.out.println(idCheck);
		// 성공여부 확인 : 개발자용
		if(idCheck==0)
		{
			System.out.println("사용 가능한 아이디입니다.");
		}else if(idCheck==1)
		{
			System.out.println("이미 존재하는 아이디입니다.");
		}
		//ajax에 결과값으로 보냄 
		out.write(idCheck+"");
		
	  }
}
