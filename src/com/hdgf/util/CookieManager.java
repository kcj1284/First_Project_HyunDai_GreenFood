package com.hdgf.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * CookieManager
 * @author 김민찬
 * @since 2022.09.16
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.09.16     공통              최초 생성
 * </pre>
 */

public class CookieManager {

   public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime){
       Cookie cookie = new Cookie(cName,cValue); // 쿠키생성
       cookie.setPath("/");  // 경로를 웹 전체로
       cookie.setMaxAge(cTime);  // 유지기간
       response.addCookie(cookie); //reponse에 추가
   }

   public static String readCookie(HttpServletRequest request, String cName){
       String cookieValue ="";

       Cookie[] cookies = request.getCookies();
       if(cookies != null){
           for(Cookie c : cookies){ // 쿠키 목록에서 하나씩
               String cookieName = c.getName(); 
               if(cookieName.equals(cName)){
                   cookieValue=c.getValue();   // 반환값 갱신
               }
           }
       }
       return cookieValue;
   }

   public static void deleteCookie(HttpServletResponse response, String cName){
       makeCookie(response, cName, "", 0);
       // 삭제 메소드 따로만들지않고 유지기간이 0 인 쿠키를 만들어서 바로지워지게 함
   }


}
