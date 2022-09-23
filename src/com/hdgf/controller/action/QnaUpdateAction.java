package com.hdgf.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;
/**
 * QnaUpdateAction
 * @author 정구현
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.14     정구현      최초 생성
 * 2022.09.14     정구현      Qna 게시글 수정 기능 작업
 * 2022.09.15     정구현      Qna 게시글 수정 기능 연결 완료
 * </pre>
 */
public class QnaUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "HdgfServlet?command=qnaView";

		int qnaId = Integer.parseInt(request.getParameter("QNA_id"));

		QnaDAO qnaDAO = QnaDAO.getInstance();
		QnaVO qnaVO = qnaDAO.getQna(qnaId);
		qnaVO.setTitle(request.getParameter("subject"));//제목
		qnaVO.setMain_text(request.getParameter("content"));//내용

		qnaDAO.update(qnaVO); //게시글 수정 메소드 실행
		request.setAttribute("qnaVO", qnaVO);

		request.getRequestDispatcher(url).forward(request, response);
	}
}
