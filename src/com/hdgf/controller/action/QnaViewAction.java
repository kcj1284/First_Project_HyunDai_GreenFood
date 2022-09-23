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
 * QnaViewAction
 * @author 정구현
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.14     정구현      최초 생성, Qna 게시글 보기 연결
 * 2022.09.15     정구현      Qna 수정 화면 연결
 * </pre>
 */
public class QnaViewAction implements Action {
	
	@Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "QnA/QnA_View.jsp";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
	    
	    QnaVO edit_qnaVO = (QnaVO) request.getAttribute("qnaVO");
	    QnaDAO qnaDAO = QnaDAO.getInstance();
	    
	    //비 로그인시 로그인폼으로 이동
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } else if (edit_qnaVO != null) { //게시글 수정을 위한 VO 데이터 여부 체크
			request.setAttribute("qnaVO", edit_qnaVO);
		} else {
	      int QNA_id = Integer.parseInt(request.getParameter("QNA_id"));
	      QnaVO qnaVO = qnaDAO.getQna(QNA_id);
	      request.setAttribute("qnaVO", qnaVO);
	    }
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
