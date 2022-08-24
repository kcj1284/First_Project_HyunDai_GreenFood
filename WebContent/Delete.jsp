<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Delete Details</title>
</head>
<body>
	<form action="./DeleteDetails" method="post">
		<table>
			<tr>
				<td>Enter ID:</td>
				<td><input type="text" name="id" maxlength="6" size="7" /></td>
			</tr>

		</table> <br /> 
		
		<input type="submit" value="Delete Data" />
	</form>	<br />

	<input type="button" value="Return to Home"	onclick="window.location.href='Home.jsp'" />
</body>
</html>