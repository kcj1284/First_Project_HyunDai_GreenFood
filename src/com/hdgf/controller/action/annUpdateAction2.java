package com.hdgf.controller.action;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dao.FileDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.UsersVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * annUpdateAction2
 * 
 * @author 장주연
 * @since 2022.09.07
 * 
 *        <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.07    장주연              최초 생성
 *        </pre>
 */

public class annUpdateAction2 implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=annView";

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
		int annId = Integer.parseInt(multipartRequest.getParameter("annId"));

		AnnouncementVO annVO = annDAO.getAnn(annId); // annId에 해당하는 VO값 가져오기
		annVO.setTitle(multipartRequest.getParameter("subject")); // annVO의 title을 수정된 값으로 변경
		annVO.setMain_text(multipartRequest.getParameter("content")); // annVO의 content를 수정된 값으로 변경
		if (fileRealName != null) { // 파일 변경이 발생했을 경우 annVO의 fileId를 수정된 값으로 변경
			annVO.setfile_id(fileId);
		}
		annDAO.update(annVO); // 수정 메소드 호출
		request.setAttribute("annVO", annVO);
		request.setAttribute("id", annId);

		request.getRequestDispatcher(url).forward(request, response);
	}

}
