package com.hdgf.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.controller.action.Action;

/**
 * HdgfServlet
 * @author 공통
 * @since 2022.09.07
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ------------    ---------------------------
 * 2022.09.07     공통                    최초 생성
 * </pre>
 */

@WebServlet("/HdgfServlet")
public class HdgfServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doGet(HttpServletRequest request,
      HttpServletResponse response) throws ServletException, IOException {
    String command = request.getParameter("command");
    System.out.println("HdgfServlet에서 요청을 받음을 확인 : " + command);

    ActionFactory af = ActionFactory.getInstance();
    Action action = af.getAction(command);

    if (action != null) {
      try {
		action.execute(request, response);
	} catch (ServletException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    }
  }

  protected void doPost(HttpServletRequest request,
      HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    doGet(request, response);
  }
}