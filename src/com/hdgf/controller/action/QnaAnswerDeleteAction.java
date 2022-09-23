package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.QnaDAO;
/**
 * QnaAnswerDeleteAction
 * @author 정구현
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.16     정구현      최초 생성
 * 2022.09.17     정구현      Qna 답변 삭제 기능 연결
 * </pre>
 */
public class QnaAnswerDeleteAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=qnaView";
		
		int qnaId = Integer.parseInt(request.getParameter("QNA_id"));
		QnaDAO qnaDAO = QnaDAO.getInstance();
		qnaDAO.deleteAnswer(qnaId); //해당 qnaId에 해당하는 답변 삭제
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
