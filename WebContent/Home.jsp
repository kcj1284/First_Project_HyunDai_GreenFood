<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome Page</title>
</head>
<body>
	<h2 align="center">Welcome to Product database management system</h2> <br />
	<table align="center">
		<tr>
			<td>To insert your details into the Database:</td>
			<td><input type="button" value="Insert data"
				onclick="window.location.href='Insert.jsp'" /></td>
		</tr>
		<tr>
			<td>To delete your details from the Database:</td>
			<td><input type="button" value="Delete data"
				onclick="window.location.href='Delete.jsp'" /></td>
		</tr>
		<tr>
			<td>To view your details from the Database:</td>
			<td><input type="button" value="Select data"
				onclick="window.location.href='Select.jsp'" /></td>
		</tr>
	</table>
</body>
</html>
