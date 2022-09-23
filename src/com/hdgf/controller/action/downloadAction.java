package com.hdgf.controller.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.FileDAO;
import com.hdgf.dto.FileVO;

/**
 * downloadAction
 * @author 장주연
 * @since 2022.09.18
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.18    장주연              최초 생성
 * </pre>
 */

public class downloadAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		int fileId = Integer.parseInt(request.getParameter("file"));

		FileDAO fileDAO = FileDAO.getInstance();
		FileVO fileVO = fileDAO.getFile(fileId);

		String directory = request.getServletContext().getRealPath("/upload/");
		File file = new File(directory + "/" + fileVO.getFileRealName());

		String mimeType = request.getServletContext().getMimeType(file.toString());
		if (mimeType == null) {
			response.setContentType("application/octet-stream");
		}

		String downloadName = null;

		if (request.getHeader("user-agent").indexOf("MSIE") == -1) {
			downloadName = new String(fileVO.getFileRealName().getBytes("UTF-8"), "8859_1");
		} else {
			downloadName = new String(fileVO.getFileRealName().getBytes("EUC-KR"), "8859_1");
		}

		response.setHeader("Content-Disposition", "attachment;filename=\""+ downloadName + "\";");
		
		FileInputStream fileInputStream = new FileInputStream(file);
		ServletOutputStream servletOutputStream = response.getOutputStream();
		
		byte b[] = new byte[1024];
		int data = 0;
		
		while((data = (fileInputStream.read(b,0,b.length))) != -1) {
			servletOutputStream.write(b,0,data);
		}
		
		servletOutputStream.flush();
		servletOutputStream.close();
		fileInputStream.close();
	}

}
