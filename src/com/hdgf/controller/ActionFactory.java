package com.hdgf.controller;

import com.hdgf.controller.action.*;

public class ActionFactory {
  private static ActionFactory instance = new ActionFactory();
  private ActionFactory() {
    super();
  }
  public static ActionFactory getInstance() {
    return instance;
  }
  public Action getAction(String command) {
	    Action action = null;
	    System.out.println("ActionFactory  :" + command);
	    
//	    command를 추가해주세요
	    if (command.equals("Index")) {
	        action = new IndexAction();
	    	System.out.println("index 확인");
	      } else if (command.equals("signUp")) {
	        action = new signUpAction();
	      } else if (command.equals("loginForm")) {
	    	  action = new LoginFormAction();
	      } else if (command.equals("login")) {
	    	  action = new LoginAction();
	      } else if (command.equals("idCheck")) {
	    	  action = new idCheckAction();
	      } else if (command.equals("logout")) {
	          action = new LogoutAction();
	      } else if (command.equals("notice")) {
	    	  action = new noticeAction();
	      } else if (command.equals("annView")) {
	    	  action = new annViewAction();
	      } else if (command.equals("annUpdateForm")) {
	    	  action = new annUpdateFormAction();
	      } else if (command.equals("annDelete")) {
	    	  action = new annDeleteAction();
	      } else if (command.equals("annUpdate")) {
	    	  action = new annUpdateAction();
	      } else if (command.equals("annWriteForm")) {
	    	  action = new annWriteFormAction();
	      } else if (command.equals("annWrite")) {
	    	  action= new annWriteAction();
	      } else if (command.equals("mypage")) {
	    	  action = new MyPageAction();
	      } else if (command.equals("qnaList")) {
	    	  action = new QnaListAction();
	      } else if (command.equals("qnaWriteForm")) {
	    	  action = new QnaWriteFormAction();
	      } else if (command.equals("qnaWrite")) {
	    	  action = new QnaWriteAction();
	      } else if (command.equals("qnaView")) {
	    	  action = new QnaViewAction();
	      } else if (command.equals("qnaUpdateForm")) {
	    	  action = new QnaUpdateFormAction();
	      } else if (command.equals("qnaUpdate")) {
	    	  action = new QnaUpdateAction();
	      } else if (command.equals("qnaDelete")) {
	    	  action = new QnaDeleteAction();
	      } else if (command.equals("withdrawal")) {
	    	  action = new WithdrawalAction();
	      } else if (command.equals("mypageupdate")) {
	    	  action = new myPageUpdate();
	      }
	    
	    return action;
  }

}