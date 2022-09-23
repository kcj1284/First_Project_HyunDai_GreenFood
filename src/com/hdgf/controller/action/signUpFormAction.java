package com.hdgf.controller.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * signUpFormAction
 * @author 김민찬
 * @since 2022.09.18
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.18     김민찬              최초 생성
 * </pre>
 */

public class  signUpFormAction implements Action {
	
	// 회원가입 페이지로 이동
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        // TODO Auto-generated method stub
        String url = "/login/signUpForm.jsp";


        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

}
