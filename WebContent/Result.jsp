<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Student Details - Result</title>	
	<script language="javascript" type="text/javascript">
	    function update() {
	        var sid = document.forms[0].elements['prodid'].value;
	        window.location.href = "Update.jsp?id=" + sid;
	    }
	</script>
</head>
<body>
	<h2>Details</h2>
	<form>
		<input type="hidden" name="stid"
			value="<%=request.getParameter("id")%>">

		<table>
			<tr>
				<td>ID:</td>
				<td><%=request.getParameter("id")%></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><%=request.getParameter("name")%></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><%=request.getParameter("price")%></td>
			</tr>
			<tr>
				<td>Category:</td>
				<td><%=request.getParameter("category")%></td>
			</tr>
			<tr />
		</table> <br />
	</form>	<br />
	<input type="button" value="Update data" onclick="update()" /> <br />
	<input type="button" value="Return to Home"	onclick="window.location.href='Home.jsp'" />
</body>
</html>