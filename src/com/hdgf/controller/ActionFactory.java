package com.hdgf.controller;

import com.hdgf.controller.action.Action;
import com.hdgf.controller.action.signUpAction;

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
	    if (command.equals("index")) {
//	        action = new ();
	    	System.out.println("index 확인");
	      } else if (command.equals("signUp")) {
	        action = new signUpAction();
	      }
	    
	    
	    return action;
  }

}