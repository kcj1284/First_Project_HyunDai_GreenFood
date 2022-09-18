package com.hdgf.controller.action;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dao.FileDAO;
import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class annWriteAction2 implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=notice";

		HttpSession session = request.getSession();
		UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

		// 파일 첨부 기능 코드
		String directory = request.getSession().getServletContext().getRealPath("/upload/");

		File targetDir = new File(directory);
		if (!targetDir.exists()) {
			targetDir.mkdirs();
		}

		int maxSize = 1024 * 1024 * 500;
		String encoding = "UTF-8";
		
		MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
				new DefaultFileRenamePolicy());
		
		String fileName = multipartRequest.getOriginalFileName("file");
		String fileRealName = multipartRequest.getFilesystemName("file");
		
		FileDAO fileDAO = FileDAO.getInstance();
		fileDAO.upload(fileName, fileRealName);
		
		int fileId = fileDAO.getFileId(fileRealName);

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();

		if (loginUser == null) {
			url = "HdgfServlet?command=loginForm";
		} else {
			AnnouncementVO annVO = new AnnouncementVO();
			annVO.setTitle(multipartRequest.getParameter("title"));
			annVO.setU_id(loginUser.getUser_id());
			annVO.setMain_text(multipartRequest.getParameter("main_text"));
			if (fileRealName == null) {
				annVO.setfile_id(0);
			} else {
				annVO.setfile_id(fileId);
			}
			annVO.setAnnoun_type(Integer.parseInt(multipartRequest.getParameter("ann_type")));
			annDAO.write(annVO);
		}

		response.sendRedirect(url);
	}
}
