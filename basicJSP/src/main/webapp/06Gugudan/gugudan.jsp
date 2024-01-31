<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("dao")==null){
		response.sendRedirect("index.jsp");
		return;
	}
	GugudanDAO dao = (GugudanDAO)session.getAttribute("dao");
	
	if(dao.getCount()>=5){
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="gugudanPro.jsp" method="post">
		<h1>구구단 게임</h1>
		<h2><%=dao.getCount()%>번째 문제 (현재 점수 : <%=dao.getScore()%>)</h2>
		<br>
		<h2>
		<%=dao.getQuiz()%> = 
			<input type="number" required name="answer">
		</h2>
		<button>제출</button>
	</form>
</body>
</html>