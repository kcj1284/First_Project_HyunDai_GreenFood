package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dao.FileDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.FileVO;
import com.hdgf.dto.UsersVO;

/**
 * annUpdateFormAction
 * @author 장주연
 * @since 2022.09.15
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.15    장주연              최초 생성
 * 2022.09.18	 장주연			   파일 업로드, 다운로드 기능 추가 
 * 2022.09.19	 장주연			   파일 변경 기능 추가
 * </pre>
 */

public class annUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/ann_Update2.jsp";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			int annId = Integer.parseInt(request.getParameter("id"));
			AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
			AnnouncementVO annVO = annDAO.getAnn(annId);
			request.setAttribute("annVO", annVO);
			
			FileDAO fileDAO = FileDAO.getInstance();
			FileVO fileVO = fileDAO.getFile(annVO.getfile_id());
			request.setAttribute("fileVO", fileVO);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
