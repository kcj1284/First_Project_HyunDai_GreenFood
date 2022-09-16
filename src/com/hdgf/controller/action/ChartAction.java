package com.hdgf.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hdgf.dao.ChartDAO;
import com.hdgf.dto.ChartVO;
import com.hdgf.dto.UsersVO;

public class ChartAction implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "QnA/chart.jsp";

      HttpSession session = request.getSession();
      UsersVO loginUser = (UsersVO) session.getAttribute("loginUser");

      if (loginUser == null) {
         url = "HdgfServlet?command=loginForm";
      } else {
         ChartDAO chartDAO = ChartDAO.getInstance();
         ArrayList<ChartVO> chartList = chartDAO.countQnaType();
         request.setAttribute("chartList", chartList);
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
}