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

//       command를 추가해주세요
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
         action = new annWriteAction2(); 
      } else if (command.equals("download")) {
    	  action = new downloadAction();
      } else if (command.equals("IR_Center_List")) {
            action = new IRListAction();
      } else if (command.equals("IR_Center_View")) {
         action = new IRViewAction();
      } else if (command.equals("IR_UpdateForm")) {
         action = new IRUpdateFormAction();
      } else if (command.equals("IR_Delete")) {
         action = new IRDeleteAction();
      } else if (command.equals("IRUpdate")) {
         action = new IRUpdateAction();
      } else if (command.equals("IR_Center_WriteForm")) {
         action = new IRWriteFormAction();
      } else if (command.equals("IR_Center_Write")) {
         action = new IRWriteAction();
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
      } else if (command.equals("qnaAnswer")) {
         action = new QnaAnswerAction();
      } else if (command.equals("withdrawal")) {
         action = new WithdrawalAction();
      } else if (command.equals("myPageUpdateForm")) {
         action = new myPageUpdateFormAction();
      } else if (command.equals("myPageUpdate")) {
         action = new myPageUpdateAction();
      } else if (command.equals("qnaAnswerUpdate")) {
         action = new QnaAnswerUpdateAction();
      } else if (command.equals("qnaAnswerUpdateForm")) {
         action = new QnaAnswerUpdateFormAction();
      } else if (command.equals("qnaAnswerDelete")) {
         action = new QnaAnswerDeleteAction();
      } else if (command.equals("chart")) {
         action = new ChartAction();
      }

      return action;
   }

}