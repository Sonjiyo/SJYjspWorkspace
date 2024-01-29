<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%--
	
 --%>
 <%
 	LocalDate today = LocalDate.now();
 	System.out.println(today);
 	String now = today.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
 %>
</head>
<body>
	<h1>ex00Basic.jsp</h1>
	<%
	//스크립트 태그 안에서는 자바와 똑같이 사용 가능
		int num = 3 + 10;
	%>
	<h1><%= num %></h1>
	<h1><%= now %></h1>
	<a href="./ex01_basic.html">ex01basic 이동</a>
	<h1>3+10</h1>
</body>
</html>