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
		ann.setTitle(" 개인정보 처리방침 변경 안내('22.07.07)");
		ann.setU_id("wkdwndus0409");
//		ann.setWrdate(sqlDate);
		ann.setMain_text("현대그린푸드 홈페이지를 방문하여 주신 이용자께 감사의 말씀을 드리며,\r\n" + "현대그린푸드의 개인정보처리방침을 개정함에 따라 그 변경 내용을 알려드립니다.");
		ann.setfile_id(0);
//		ann.setVisiter(34);
		ann.setAnnoun_type(1);

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		annDAO.write(ann);

		System.out.println("공지사항_글쓰기 success");
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
		
		System.out.println("공지사항_리스트 success");
	}

	public static void 공지사항_수정() {

		AnnouncementVO ann = new AnnouncementVO();
		ann.setId(7);
		ann.setTitle("현대그린푸드, 국내 첫 '블루존 건강식단' 선보인다");
		ann.setMain_text(
				"특히, ‘건강식단’메뉴는 ①적당한 포만감의 낮은 칼로리 식단과 ②채식 및 해산물 중심의 식재 활용, 그리고 ③발표 음식 선호 등 전세계 블루존 지역의 공통적인 3대 식습관을 고려해 국내 소비자들의 입맛과 취향에 맞게 만든 게 특징이다. 또한 장수마을 사람들이 섭취하던 먹거리와 유사한 성분의 식재를 사용하기 위해 여주(열대과일)와 오크라(아열대 채소) 등 30여 종의 새로운 식재를 도입했다. "
						+ "아울러 모든 ‘건강식단’메뉴는 통곡물과 채소 위주로 만들어 칼로리(한끼 500~600kcal 수준)가 낮고, 식이섬유가 풍부해 신진대사를 활성화시킬 수 있게 했다.");
		ann.setfile_id(0);
		ann.setAnnoun_type(0);

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		annDAO.update(ann);

		System.out.println("공지사항_수정 success");
	}

	public static void 공지사항_삭제() {

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		annDAO.delete(11);

		System.out.println("공지사항_삭제 success");
	}

	public static void 공지사항_전체검색() {

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		ArrayList<AnnouncementVO> annList = annDAO.get_ALL_List("개인");
		for (int i = 0; i < annList.size(); i++) {
			AnnouncementVO ann = annList.get(i);
			System.out.println(ann.getId());
		}
	}

	public static void 공지사항_본문검색() {

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		ArrayList<AnnouncementVO> annList = annDAO.get_Main_text_List("개인정보처리방침");

		for (int i = 0; i < annList.size(); i++) {
			AnnouncementVO ann = annList.get(i);
			System.out.println(ann.getId());
		}
	}

	public static void 공지사항_제목검색() {

		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		ArrayList<AnnouncementVO> annList = annDAO.get_title_List("3개");

		for (int i = 0; i < annList.size(); i++) {
			AnnouncementVO ann = annList.get(i);
			System.out.println(ann.getId());
		}
	}
	
	public static void 공지사항_전체_list_검검색() {
		
		AnnouncementDAO annDAO = AnnouncementDAO.getInstance();
		ArrayList<AnnouncementVO> annList = annDAO.getList();
		
		for (int i = 0; i < annList.size(); i++) {
			AnnouncementVO ann = annList.get(i);
			System.out.println(ann.getId());
			System.out.println(ann.getU_id());
			System.out.println(ann.getTitle());
			System.out.println(ann.getVisiter());
			System.out.println(ann.getWrdate());
			System.out.println(ann.getAnnoun_type());
		}
	}
	
	public static void main(String[] args) {
		//공지사항_글쓰기();
		//공지사항_리스트();
		//공지사항_게시글확인();
		//공지사항_수정();
		//공지사항_삭제();
		//공지사항_본문검색();
		//공지사항_전체검색();
		//공지사항_제목검색();
		공지사항_전체_list_검검색();
	}
}
