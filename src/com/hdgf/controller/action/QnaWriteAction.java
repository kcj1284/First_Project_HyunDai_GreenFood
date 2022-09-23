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
 * QnaWriteAction
 * @author 정구현
 * @since 2022.09.14
 * 
 * <pre>
 * 수정일          수정자                 수정내용
 * ----------  ---------    ---------------------------
 * 2022.09.14     정구현      최초 생성, Qna 게시글 작성 연결
 * 2022.09.15     정구현      Qna 게시글 타입 추가
 * </pre>
 */
public class QnaWriteAction implements Action{

	  @Override
	  public void execute(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    String url = "HdgfServlet?command=qnaList";
	    
	    HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    }else{      
	      QnaVO qnaVO = new QnaVO();
	      qnaVO.setTitle(request.getParameter("title")); //게시글 제목
	      qnaVO.setMain_text(request.getParameter("main_text"));    //게시글 내용  
	      qnaVO.setQNA_type(Integer.parseInt(request.getParameter("QNA_type"))); //게시글 카테고리
	      QnaDAO qnaDAO = QnaDAO.getInstance();
	      qnaDAO.insertQna(qnaVO, loginUser.getUser_id());      // 게시글 작성 메소드 호출, 현재 로그인한 작성자 아이디 값도 함께 넘겨줌 
	    }    
	    response.sendRedirect(url);
	  }
}
