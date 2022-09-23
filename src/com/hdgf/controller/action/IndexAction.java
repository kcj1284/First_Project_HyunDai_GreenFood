package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * IndexAction
 * @author 공통
 * @since 2022.09.07
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  -------------    ---------------------------
 * 2022.09.07     공통                    최초 생성
 * </pre>
 */

public class  IndexAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// TODO Auto-generated method stub
		String url = "/Index.jsp";

	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	    dispatcher.forward(request, response);
	}

}
