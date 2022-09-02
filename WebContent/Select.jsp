<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Select Details</title>
</head>
<body>
	<form action="./SelectDetails" method="get">
		<table>
			<tr>
				<td>Enter ID:</td>
				<td><input type="text" name="id" maxlength="6" size="7" /></td>
			</tr>

		</table> <br />
		
		<input type="submit" value="View Data" />
	</form>	<br />
	
	<input type="button" value="Return to Home"	onclick="window.location.href='Home.jsp'" />
</body>
</html>