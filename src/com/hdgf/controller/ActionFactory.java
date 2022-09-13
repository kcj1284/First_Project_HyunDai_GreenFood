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
	      }
	    
	    
	    return action;
  }

}