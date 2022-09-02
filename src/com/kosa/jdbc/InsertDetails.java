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

@WebServlet("/InsertDetails")
public class InsertDetails extends HttpServlet {

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

			PreparedStatement st = conn.prepareStatement("insert into products values(?, ?, ?, ?)");

			st.setString(1, request.getParameter("id"));
			st.setString(2, request.getParameter("name"));
			st.setInt(3, Integer.valueOf(request.getParameter("price")));
			st.setString(4, request.getParameter("category"));

			st.executeUpdate();

			st.close();
			conn.close();

			response.sendRedirect("Success.jsp?msg=Insert");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
