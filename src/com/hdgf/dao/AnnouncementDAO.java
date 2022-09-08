package com.hdgf.dao;

import java.util.ArrayList;

import com.hdgf.dto.AnnouncementVO;

public class AnnouncementDAO {

	private AnnouncementDAO() {
	}
	
	private static AnnouncementDAO instance = new AnnouncementDAO();
	
	public static AnnouncementDAO getInstance() {
		return instance;
	}
	
	public ArrayList<AnnouncementVO> listAnnouncement() {
		ArrayList<AnnouncementVO> announcementList = new ArrayList<AnnouncementVO>();
		
	}
	
}
