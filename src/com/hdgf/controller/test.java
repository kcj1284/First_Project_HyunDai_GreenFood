package com.hdgf.controller;

import java.sql.Date;
import java.util.ArrayList;

import com.hdgf.dao.AnnouncementDAO;
import com.hdgf.dto.AnnouncementVO;

public class test {
	
	public static void 공지사항_글쓰기() {
		
		Date sqlDate = new java.sql.Date(System.currentTimeMillis());
		System.out.println(sqlDate);
		
		AnnouncementVO ann = new AnnouncementVO();
		ann.setTitle("개인정보");
		ann.setU_id("wkdwndus0409");
		ann.setWrdate(sqlDate);
		ann.setMain_text("현대그린푸드 홈페이지를 방문하여 주신 이용자께 감사의 말씀을 드립니다.");
		ann.setFile_link("..");
		ann.setVisiter(34);
		ann.setAnnoun_type(1);
		
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		annDAO.write(ann);
		
		System.out.println("success");
	}
	
	public static void 공지사항_리스트() {
		
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		ArrayList<AnnouncementVO> annList = annDAO.getList();
		
		for (int i = 0; i < annList.size(); i++) {
			AnnouncementVO ann = annList.get(i);
			System.out.println(ann.getId());
			System.out.println(ann.getU_id());
			System.out.println(ann.getTitle());
			System.out.println(ann.getMain_text());
			System.out.println(ann.getWrdate());
		}
	}
	
	public static void 공지사항_게시글확인() {
		
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		AnnouncementVO ann = annDAO.getAnn(6);
		System.out.println(ann.getId());
		System.out.println(ann.getU_id());
		System.out.println(ann.getTitle());
		System.out.println(ann.getMain_text());
		System.out.println(ann.getWrdate());
	}
	
	public static void main(String[] args) {
		//공지사항_글쓰기();
		//공지사항_리스트();
		공지사항_게시글확인();
	}
}
