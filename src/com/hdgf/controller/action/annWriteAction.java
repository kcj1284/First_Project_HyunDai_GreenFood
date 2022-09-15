package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dao.QnaDAO;
import com.hdgf.dto.AnnouncementVO;
import com.hdgf.dto.QnaVO;
import com.hdgf.dto.UsersVO;

public class annWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "HdgfServlet?command=notice";
		
		HttpSession session = request.getSession();
	    UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");    
	    
	    AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
	    
	    if (loginUser == null) {
	      url = "HdgfServlet?command=loginForm";
	    } else{      
		      AnnouncementVO annVO = new AnnouncementVO();
		      annVO.setTitle(request.getParameter("title"));
		      annVO.setU_id(loginUser.getUser_id());
		      annVO.setMain_text(request.getParameter("main_text"));      
		      annVO.setfile_id(0);
		      annVO.setAnnoun_type(Integer.parseInt(request.getParameter("ann_type")));
		      annDAO.write(annVO);      
		}    
	    
	    response.sendRedirect(url);
	}
}
