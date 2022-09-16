package com.hdgf.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.hdgf.dto.ChartVO;
import com.hdgf.util.DBConnection;

import oracle.jdbc.OracleTypes;

public class ChartDAO {

   private ChartDAO() {

   }

   private static ChartDAO instance = new ChartDAO();

   public static ChartDAO getInstance() {
      return instance;
   }

   // Qna type 개수 찾기
   public ArrayList<ChartVO> countQnaType() {
      String runSP = "{ call sp_qna_type(?) }";
      // 전체데이터를 select한 결과 presult가 들어가므로 ?가 1개. presult는 오라클에서 커서에 해당.
      ArrayList<ChartVO> lists = new ArrayList<>();
      Connection conn = null;
      try {
         conn = DBConnection.getConnection();
         CallableStatement callableStatement = conn.prepareCall(runSP);
         ResultSet rs = null;
         callableStatement = conn.prepareCall(runSP);
         // out파라미터의 자료형 설정(커서를 받아낼 데이터 타입을 생성)
         callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
         // 프로시저 실행
         callableStatement.executeUpdate();
         // out파라미터의 값을 돌려받는다
         rs = (ResultSet) callableStatement.getObject(1); // cstmt실행결과를 object로 받아 downcast
         while (rs.next()) {
            // 레코드에 있는 내용을 vo에 입력
            ChartVO vo = new ChartVO();
            vo.setQna_type(rs.getInt("qna_type"));
            vo.setCnt(rs.getInt("cnt"));
            // vo를 리스트에 추가
            lists.add(vo);
         }
         rs.close();
         callableStatement.close();
      } catch (Exception e) {
         System.out.println(e.toString());
      }
      return lists;
   }
   
   // COM type 개수 찾기
   public ArrayList<ChartVO> countComType() {
      String runSP = "{ call sp_com_type(?) }";
      // 전체데이터를 select한 결과 presult가 들어가므로 ?가 1개. presult는 오라클에서 커서에 해당.
      ArrayList<ChartVO> lists = new ArrayList<>();
      Connection conn = null;
      try {
         conn = DBConnection.getConnection();
         CallableStatement callableStatement = conn.prepareCall(runSP);
         ResultSet rs = null;
         callableStatement = conn.prepareCall(runSP);
         // out파라미터의 자료형 설정(커서를 받아낼 데이터 타입을 생성)
         callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
         // 프로시저 실행
         callableStatement.executeUpdate();
         // out파라미터의 값을 돌려받는다
         rs = (ResultSet) callableStatement.getObject(1); // cstmt실행결과를 object로 받아 downcast
         while (rs.next()) {
            // 레코드에 있는 내용을 vo에 입력
            ChartVO vo = new ChartVO();
            vo.setCom_type(rs.getInt("com_type"));
            vo.setCnt(rs.getInt("cnt"));
            // vo를 리스트에 추가
            lists.add(vo);
         }
         rs.close();
         callableStatement.close();
      } catch (Exception e) {
         System.out.println(e.toString());
      }
      return lists;
   }
}