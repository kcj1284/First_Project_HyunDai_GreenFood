package com.hdgf.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hdgf.dao.IR_Center_DAO;
import com.hdgf.dto.IR_Center_VO;

/**
 * IRListAction
 * @author 김찬중
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일          수정자                    수정내용
 * ----------  ---------------    ---------------------------
 * 2022.09.16     김찬중             최초 생성
 * </pre>
 */

public class IRListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String url = "Invest_Info/IR_Center_List.jsp";
		
		IR_Center_DAO IR_DAO = IR_Center_DAO.getInstance();

		String oldest = request.getParameter("oldest"); //오래된 순 정렬이 선택된 값
		String views = request.getParameter("views"); //조회순 정렬이 선택된 값
		String searchKey = request.getParameter("searchKey"); //제목이나 본문이 선택된 값
		String searchWord = request.getParameter("searchWord"); //검색창 키워드 값

		if (oldest != null) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.getListByWrdate(); //오래된 순 정렬
				request.setAttribute("IR_List", IR_List);
			} else if (views != null) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.getListByViews(); // 조회순 정렬
				request.setAttribute("IR_List", IR_List);
			} else if (searchWord != null && searchKey.equals("subject")) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.get_title_List(searchWord); //키워드로 제목 검색
				request.setAttribute("IR_List", IR_List);
				request.setAttribute("keyword", searchWord); //키워드로 내용 검색 
			} else if (searchWord != null && searchKey.equals("content")) {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.get_Main_text_List(searchWord);
				request.setAttribute("IR_List", IR_List);
				request.setAttribute("keyword", searchWord);
			} else {
				ArrayList<IR_Center_VO> IR_List = IR_DAO.getList(); //리스트 가져오기
				request.setAttribute("IR_List", IR_List);
			}
		request.getRequestDispatcher(url).forward(request, response);

	}
}
