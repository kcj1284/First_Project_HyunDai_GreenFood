<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
String path = request.getRealPath("uploadedFiles");
int size = 1024 * 1024 * 20; //20MB
String str, filename, original_filename;
try {
	MultipartRequest multiRequest = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());

	Enumeration files = multiRequest.getFileNames();
	str = (String) files.nextElement();
	filename = multiRequest.getFilesystemName(str);
	original_filename = multiRequest.getOriginalFileName(str);

	System.out.println("str : " + str);
	System.out.println("filename : " + filename);
	System.out.println("original_filename : " + original_filename);
} catch (Exception e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>SUCCESS!!!
</body>
</html>