package com.hdgf.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * DBConnection
 * @author 공통
 * @since 2022.09.02
 * 
 * <pre>
 * 수정일          수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.09.02	  전체				최초 생성
 * 2022.09.16     김찬중              DBCP로 수정
 * </pre>
 */

//DBCP: DataBase Connection Pool - connection을 일정 개수 미리 만들어 두고 웹 서버가 db에 접근이 필요할 때 마다 하나씩 빌리고 반납하는 방식으로 처리하여 위 문제를 해결한다.
public class DBManager {

	// db연결
	public static Connection getConnection() {
		Connection conn = null;
		try {
			// 1. InitialContext 객체 생성: 톰켓 서버에서 자원을 찾는 InitialContext
			Context initContext = new InitialContext();
			// 2. 컨텍스트 객체의 lookup 메소드로 JNDI에 등록되있는 서버 자원을 찾음 DataSource ds = (DataSource)
			// initialContext.lookup('java:/comp/env/jdbc/myoracle'); 과 동일
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			// 3. lookup 메소드로 얻어낸 DataSource 객체로 getConnection()메소드를 호출하여 커넥션 객체를 얻어냄
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	// select 수행 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	// insert, update, delete 작업을 수행한 후 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
