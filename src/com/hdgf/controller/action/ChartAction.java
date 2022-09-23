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

/**
 * ChartAction
 * @author 김찬중, 장주연
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16   김찬중              최초 생성
 * 2022.09.16	김찬중, 장주연	 	  차트 연동 문제점 수정

 * </pre>
 */

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
         ArrayList<ChartVO> qnaChartList = chartDAO.countQnaType();
         ArrayList<ChartVO> comChartList = chartDAO.countComType();
         request.setAttribute("qnaChartList", qnaChartList);
         request.setAttribute("comChartList", comChartList);
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
}