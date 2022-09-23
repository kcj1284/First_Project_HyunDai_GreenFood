package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.QnaVO;
/**
 * QnaAnswerUpdateAction
 * @author 정구현
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.16     정구현      최초 생성, Qna 답변 수정 기능 연결
 * </pre>
 */
public class QnaAnswerUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=qnaView";
		
		int qnaId = Integer.parseInt(request.getParameter("QNA_id"));
		
		QnaDAO qnaDAO = QnaDAO.getInstance();
		QnaVO qnaVO = qnaDAO.getQna(qnaId);
		qnaVO.setAnswer(request.getParameter("answer")); //해당 qnaId에 해당하는 answer값 받기

		
		qnaDAO.updateAnswer(qnaVO); //답변 수정 메소드 호출
		request.setAttribute("qnaVO", qnaVO); //해당 값 전송
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
