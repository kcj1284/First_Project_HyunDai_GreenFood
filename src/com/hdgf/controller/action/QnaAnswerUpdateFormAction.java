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
 * QnaAnswerUpdateFormAction
 * @author 정구현
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.16     정구현      최초 생성, Qna 답변 수정 화면 연결
 * </pre>
 */
public class QnaAnswerUpdateFormAction implements Action {
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_AnswerUpdate.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    //비 로그인시 로그인폼으로 이동
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } else {
	    	int qnaId = Integer.parseInt(request.getParameter("QNA_id"));
	    	QnaDAO qnaDAO = QnaDAO.getInstance();
	    	QnaVO qnaVO = qnaDAO.getQna(qnaId);
	    	request.setAttribute("qnaVO", qnaVO); //해당 게시글의 정보를 담은 VO 연결(해당 데이터에 Answer값도 포함)
	    }
	    
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
