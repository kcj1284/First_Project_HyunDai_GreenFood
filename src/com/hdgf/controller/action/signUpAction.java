package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.UsersDAO;
import com.hdgf.dto.UsersVO;

/**
 * signUpAction
 * @author 김민찬
 * @since 2022.09.07
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.07     김민찬              최초 생성
 * </pre>
 */

public class signUpAction implements Action {
	
	// 회원가입 폼 페이지에서 받은 정보를 DB에 저장하는 메소드에 넘김
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "/login/login.jsp";

		UsersVO usersVO = new UsersVO();

		usersVO.setUser_id(request.getParameter("user_id"));
		usersVO.setUser_pw(request.getParameter("user_pw"));
		usersVO.setUser_name(request.getParameter("user_name"));
		usersVO.setTel(request.getParameter("tel"));	
		usersVO.setEmail(request.getParameter("email"));
		usersVO.setGender(Integer.parseInt(request.getParameter("gender")));
		usersVO.setAdministrator(0);	// 홈페이지에서 가입하는사람은 일반계정만 // 1은 관리자
		usersVO.setCom_type(Integer.parseInt(request.getParameter("com_type")));
		

		UsersDAO userDAO = UsersDAO.getInstance();
		userDAO.insertUsers(usersVO);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
