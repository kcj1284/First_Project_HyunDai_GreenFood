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
 * QnaDeleteAction
 * @author 정구현
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.15     정구현      최초 생성
 * 2022.09.15     정구현      Qna 게시글 삭제 기능 연결
 * </pre>
 */
public class QnaDeleteAction implements Action{
	 @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "HdgfServlet?command=qnaList";
	    
	    int qnaId = Integer.parseInt(request.getParameter("QNA_id")); // 해당 게시물의 id를 전달받음
	    QnaDAO qnaDAO = QnaDAO.getInstance();
	    qnaDAO.delete(qnaId); //qnd_id에 해당하는 게시물 삭제
	    
	    request.getRequestDispatcher(url).forward(request, response);
	  }
}
