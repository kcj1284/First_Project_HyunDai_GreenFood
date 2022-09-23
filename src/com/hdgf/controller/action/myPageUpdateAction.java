package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.UsersDAO;
import com.hdgf.dto.UsersVO;

/**
 * myPageUpdateAction
 * @author 김민찬
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.15     김민찬              최초 생성
 * </pre>
 */



public class myPageUpdateAction implements Action {
	
	//현재 연결되어있는 세션의 유저의 정보를 변경
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=mypage";
		
		HttpSession session = request.getSession();
	    UsersVO usersVO = (UsersVO) session.getAttribute("loginUser"); 
	    
		usersVO.setUser_pw(request.getParameter("user_pw"));
		usersVO.setUser_name(request.getParameter("user_name"));
		usersVO.setTel(request.getParameter("tel"));
		usersVO.setEmail(request.getParameter("email"));
		usersVO.setGender(Integer.parseInt(request.getParameter("gender")));
		usersVO.setCom_type(Integer.parseInt(request.getParameter("com_type")));
		
		UsersDAO userDAO = UsersDAO.getInstance();
		userDAO.updateUsers(usersVO);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
