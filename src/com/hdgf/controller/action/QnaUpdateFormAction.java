package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;
/**
 * QnaUpdateFormAction
 * @author 정구현
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.15     정구현      최초 생성
 * 2022.09.15     정구현      Qna 게시글 수정 화면과 연결
 * </pre>
 */
public class QnaUpdateFormAction implements Action {
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_Update.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    

	    //비 로그인 시 로그인폼으로 이동
	    if (loginUser == null) { 
	      url = "HdgfServlet?command=loginForm";
	    } else {
	    	int qnaId = Integer.parseInt(request.getParameter("QNA_id"));
	    	QnaDAO qnaDAO = QnaDAO.getInstance();
	    	QnaVO qnaVO = qnaDAO.getQna(qnaId);
	    	request.setAttribute("qnaVO", qnaVO);
	    }
	    
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
