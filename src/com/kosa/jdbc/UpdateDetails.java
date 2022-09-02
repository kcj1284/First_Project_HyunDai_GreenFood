package com.kosa.jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateDetails")
public class UpdateDetails extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Class.forName(DbUtil.driver);
		} catch (ClassNotFoundException e) {
			System.out.println("Class not found " + e);
		}

		try {
			Connection conn = DriverManager.getConnection(DbUtil.url, DbUtil.user, DbUtil.password);
			System.out.println("connection successful");
			PreparedStatement st = conn
					.prepareStatement("update products set prodname=?, price=?, category=? where prodid=?");

			st.setString(1, request.getParameter("name"));
			st.setInt(2, Integer.valueOf(request.getParameter("price")));
			st.setString(3, request.getParameter("category"));
			st.setString(4, request.getParameter("id"));

			st.executeUpdate();

			st.close();
			conn.close();

			response.sendRedirect("Success.jsp?msg=Update");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
