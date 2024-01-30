<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Random rd = new Random();
	int num1= rd.nextInt(9)+1;
	int num2= rd.nextInt(9)+1;
	int cnt = 0;
	int score = 0;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 게임</h1>
	<h2>5문제를 모두 맞추면 게임 종료</h2>
	<h2>[<%=cnt%>]번째 게임 : [<%=score%>]점</h2>
	<form action="gugudanPro">
		<span><%=num1%>*<%=num2%> = </span><input type="text" name="answer">
		<input type="submit" value="전송">
	</form>
	
</body>
</html>