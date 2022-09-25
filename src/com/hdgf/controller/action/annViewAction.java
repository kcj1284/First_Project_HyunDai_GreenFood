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
 * annViewAction
 * 
 * @author 장주연
 * @since 2022.09.15
 * 
 *        <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.15   장주연               최초 생성
 * 2022.09.18	장주연			   첨부 파일 불러오기 기능 추가
 *        </pre>
 */

public class annViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "PR_Center/ann_View.jsp";

		AnnouncementVO edit_annVO = (AnnouncementVO) request.getAttribute("annVO"); // 수정 후 넘어온 경우, 수정된 annVO값 바로 받기
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();

		if (edit_annVO != null) { // 수정 후 바로 annViewAction으로 넘어온 경우
			request.setAttribute("annVO", edit_annVO);

			FileDAO fileDAO = FileDAO.getInstance();
			FileVO fileVO = fileDAO.getFile(edit_annVO.getfile_id());
			request.setAttribute("fileVO", fileVO);

		} else { // 공지소식 리스트에서 하나의 게시글을 클릭해 넘어온 경우
			int annId = Integer.parseInt(request.getParameter("id"));
			AnnouncementVO annVO = annDAO.getAnn(annId); // annId에 해당하는 게시글 가져오기

			int fileId = annVO.getfile_id();
			FileVO fileVO = FileDAO.getInstance().getFile(fileId);
			request.setAttribute("annVO", annVO);
			if (fileVO.getId() != 0) { // 첨부된 파일이 있다면, 해당 파일을 가져오기
				request.setAttribute("fileVO", fileVO);

				String directory = request.getServletContext().getRealPath("/upload/");
				String filePath = directory + fileVO.getFileRealName();
				request.setAttribute("filePath", filePath);
			}
		}

		request.getRequestDispatcher(url).forward(request, response);
	}

}
