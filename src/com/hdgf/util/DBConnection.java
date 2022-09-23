package com.hdgf.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * DBConnection
 * @author 공통
 * @since 2022.09.02
 * 
 * <pre>
 * 수정일              수정자                   수정내용
 * ----------  --------    ---------------------------
 * 2022.09.02     공통              최초 생성
 * </pre>
 */

public class DBConnection {

	private static Connection conn;

	// 이 클래스 밖에서 new로 객체를 못 만들게 하는 것
	private DBConnection() {
	}

	static {
		// 환경설정 파일을 읽어오기 위한 객체 생성
//		Properties properties  = new Properties();

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@edudb_high?TNS_ADMIN=C:\\\\dev\\\\OracleWallet\\\\Wallet_edudb";
		String user = "hdgf";
		String password = "Hyundaigrfd22";

		try {
			Class.forName(driver);	// String 을 주면 해당 패키지의 클래스를 찾음.
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("connection success");
		} catch (ClassNotFoundException e) {
			System.out.println("예외: 드라이버로드 실패 :" + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("예외: connection fail :" + e.getMessage());
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		return conn;
	}
}
