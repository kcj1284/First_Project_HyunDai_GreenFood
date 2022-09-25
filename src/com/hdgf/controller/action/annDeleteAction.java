package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.AnnouncementDAO;

/**
 * annDeleteAction
 * @author 장주연
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.15    장주연              최초 생성
 * </pre>
 */

public class annDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=notice";
		
		int annId = Integer.parseInt(request.getParameter("id"));
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		annDAO.delete(annId); // 해당 annId에 해당하는 게시글 삭제
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
