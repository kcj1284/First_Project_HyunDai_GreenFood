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
 * QnaAnswerAction
 * @author 정구현
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.16     정구현      최초 생성, Qna 답변 작성 기능 연결
 * </pre>
 */
public class QnaAnswerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=qnaList";
		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			QnaVO qnaVO = new QnaVO();
			qnaVO.setAnswer(request.getParameter("answer"));
			qnaVO.setQNA_id(Integer.parseInt(request.getParameter("QNA_id")));
			QnaDAO qnaDAO = QnaDAO.getInstance();
			//Anwser의 default value가 "Waiting for answer"로 되어있고, 이를 새로 작성하는 값으로 바꾸기 위해 update 함수로 수행
			qnaDAO.updateAnswer(qnaVO);  
		}
		response.sendRedirect(url);
	}

}
