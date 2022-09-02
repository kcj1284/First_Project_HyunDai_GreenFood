package com.kosa.jdbc;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectDetails")
public class SelectDetails extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Class.forName(DbUtil.driver);
		} catch (ClassNotFoundException e) {
			System.out.println("Class not found " + e);
		}

		try {

			String id = "";
			int price = 0;
			String name = "", category = "";

			Connection conn = DriverManager.getConnection(DbUtil.url, DbUtil.user, DbUtil.password);
			System.out.println("connection successful");
			PreparedStatement st = conn.prepareStatement("select * from products where prodid=?");

			st.setString(1, request.getParameter("id"));

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				id = rs.getString(1);
				name = rs.getString(2);
				price = rs.getInt(3);
				category = rs.getString(4);
			}

			rs.close();
			st.close();
			conn.close();

			response.sendRedirect(
					"Result.jsp?id=" + URLEncoder.encode(id,"UTF-8") + "&name=" + URLEncoder.encode(name,"UTF-8") + "&price=" + price + "&category=" + URLEncoder.encode(category,"UTF-8"));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
