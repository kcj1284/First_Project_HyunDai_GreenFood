package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dto.UsersVO;
/**
 * QnaWriteFormAction
 * @author 정구현
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.14     정구현      최초 생성, Qna 게시글 작성 화면 연결
 * </pre>
 */
public class QnaWriteFormAction implements Action {
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_Write.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    //비 로그인시 로그인폼으로 이동
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } 
	    
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
