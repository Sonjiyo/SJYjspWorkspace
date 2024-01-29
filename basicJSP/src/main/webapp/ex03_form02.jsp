<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_form02</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	int age = 0;
	if(request.getParameter("age").length()!=0){
		age = Integer.parseInt(request.getParameter("age"));
	}
	
%>
<h1>이름 : <%= name%></h1>
<h1>나이 : <%= age%></h1>
</body>
</html>