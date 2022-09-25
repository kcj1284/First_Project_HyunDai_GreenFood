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

/**
 * annWriteAction2
 * 
 * @author 장주연
 * @since 2022.09.18
 * 
 *        <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.18    장주연              최초 생성
 * 2022.09.18	 장주연			   파일 첨부 기능 추가
 * 2022.09.18	 장주연			   파일 없을 때 문제점 수정
 *        </pre>
 */

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

		AnnouncementVO annVO = new AnnouncementVO();
		annVO.setTitle(multipartRequest.getParameter("title")); // 게시글 제목
		annVO.setU_id(loginUser.getUser_id()); // 게시글 작성자
		annVO.setMain_text(multipartRequest.getParameter("main_text")); // 게시글 내용
		if (fileRealName == null) { // 첨부 파일이 없을 경우
			annVO.setfile_id(0);
		} else { // 첨부 파일이 있을 경우
			annVO.setfile_id(fileId);
		}
		annVO.setAnnoun_type(Integer.parseInt(multipartRequest.getParameter("ann_type")));
		annDAO.write(annVO); // 게시글 작성 메소드 호출

		response.sendRedirect(url);
	}
}
